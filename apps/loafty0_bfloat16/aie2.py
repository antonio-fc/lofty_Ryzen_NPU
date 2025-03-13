# section-4/section-4a/aie2.py -*- Python -*-
#
# This file is licensed under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
# (c) Copyright 2024 Advanced Micro Devices, Inc. or its affiliates
import argparse
import numpy as np
import sys
from ml_dtypes import bfloat16

from aie.dialects.aie import *
from aie.dialects.aiex import *
from aie.helpers.dialects.ext.scf import _for as range_
from aie.extras.context import mlir_mod_ctx
import aie.utils.trace as trace_utils

def create_argparser():
    p = argparse.ArgumentParser()
    p.add_argument(
        "-t",
        "--trace_sz",
        dest="trace_size",
        default=0,
        type=int,
        help="trace size in bytes",
    )
    p.add_argument(
        "--anten",
        default=96,
        type=int,
        help="the number of antennas used for obtaining the visibilities",
    )
    p.add_argument(
        "--imgsz",
        default=128,
        type=int,
        help="the size S of an SxS image to be genrated by the imager",
    )
    return p

def declaring_kernel_func(out_ty, sing_input_ty, tile_ty, dtype):
    # kernel for passthrough (scalar)
    name0 = "passthrough"
    kernel0 = external_func("passthrough",
        inputs=[tile_ty, tile_ty, dtype],
    )
    name1 = "mean"
    kernel1 = external_func("mean",
        inputs=[sing_input_ty, out_ty, dtype, dtype],
    )
    return {
        name0: kernel0,
        name1: kernel1,
    }

def declaring_tiles(n_cols, n_comp):
    st = [] # Shim Tiles
    mt = [] # Memory Tiles (currently not used)
    ct = [] # Compute Tiles
    for i in range(n_cols):
        # Making the shim and mem tiles
        st.append(tile(i, 0))
        mt.append(tile(i, 1))
        # Making compute tiles
        c = []
        for j in range(n_comp):
            c.append(tile(i, j+2))
        ct.append(c)
    return (st, mt, ct)

def loafty(opts):
    # Trace constants
    enableTrace = opts.trace_size > 0
    TRACE_SIZE = opts.trace_size
    
    # Declaring constant sizes
    ITER_KERNEL = 14 # sys.maxsize # This look runs the number of times the kernel is called, so the number of iterations atm
    MATRIX_DIM_SIZE0 = opts.anten # size of baselines and vis matrices side (square matrix) which corresponds to the number of antennas
    MATRIX_DIM_SIZE1 = opts.imgsz # size of lmn matrices side (square matrix), as well as size of image frame
    MSIZE = MATRIX_DIM_SIZE0**2 # 96x96 only for now
    BSIZE = MATRIX_DIM_SIZE1**2 # 256*256 or 128*128 typically
    CV = 2 # how many pixels (lmn) are moved at once
    N_LMN = 3 # 3 for l, m and n
    ITERS = BSIZE//CV
    
    NINPUTS = 5 # number of inputs in a single stream
    MIN_SIZE = 2 # the size of the frequency data points comming in the main input streams
    NCHANNELS = 2 # number of pipeline channels

    # Data movement sizes
    SINGLE_INPUT_SIZE = MSIZE//NCHANNELS # 4608
    COMP_INPUT_SIZE = SINGLE_INPUT_SIZE + MIN_SIZE # 9216/2 + 2 = 4610 size of an input per stream
    FULL_INPUT_SIZE = COMP_INPUT_SIZE*NINPUTS # COMP_INPUT_SIZE * 5 for each main input
    
    MAIN_FOLD = 4
    MAIN_MOVE_SIZE = SINGLE_INPUT_SIZE//MAIN_FOLD
    
    LMN_MOVE_SIZE = CV * N_LMN
    FULL_LMN_SIZE = BSIZE * N_LMN # IMG_SIZE**2 * 3
    
    # Declaring basic types
    dtype = np.dtype[bfloat16]
    dtype_k = np.int32

    # Device setup
    @device(AIEDevice.npu1_4col)
    def device_body():
        # STEP1: SIZES DEFINITIONS
        single_input_ty = np.ndarray[(SINGLE_INPUT_SIZE,), dtype]
        dist_input_ty = np.ndarray[(COMP_INPUT_SIZE,), dtype]
        full_input_ty = np.ndarray[(FULL_INPUT_SIZE,), dtype]
        lmn_broad_ty = np.ndarray[(LMN_MOVE_SIZE,), dtype]
        main_move_ty = np.ndarray[(MAIN_MOVE_SIZE,), dtype]
        out_ty = np.ndarray[(CV,), dtype]

        # STEP2: KERNEL AND TILES
        # AIE Core Function declarations
        kernels = declaring_kernel_func(out_ty, single_input_ty, dist_input_ty, dtype_k)

        # Tile declarations
        st, mt, ct = declaring_tiles(4, 4)

        scale_tiles = [[ct[0][3], ct[0][2], ct[0][1]],
                       [ct[3][3], ct[3][2], ct[3][1]]] # [[uA, vA, wA], [uB, vB, wB]]
        add_tiles = [[ct[1][3], ct[1][2]],
                     [ct[2][3], ct[2][2]]] # [[add1A, add2A], [add1B, add2B]]
        main_tiles = [[ct[1][1], ct[0][0]],
                      [ct[2][1], ct[3][0]]] # [[mainRA, mainCA], [mainRB, mainCB]]
        real_tiles = [main_tiles[0][0], main_tiles[1][0]] # [mainRA, mainRB]
        imag_tiles = [main_tiles[0][1], main_tiles[1][1]] # [mainCA, mainCB]
        sub_tile = ct[1][0]
        mean_tile = ct[2][0]

        memDistA = mt[0]
        memDistB = mt[3]
        memJoinR = mt[2]
        memJoinC = mt[1]

        dist_tiles = [[], []] # [ComputeTilesA, ComputTilesB] (order: visR, visC, u, v, w)
        for c in range(NCHANNELS):
            dist_tiles[c] = main_tiles[c] + scale_tiles[c]

        # STEP3: DATA MOVEMENTS
        # Inputs
        of_in_lmn = object_fifo("in0", st[1], scale_tiles[0] + scale_tiles[1], 2, lmn_broad_ty)
        of_in_mainA = object_fifo("in1", st[0], memDistA, 2, full_input_ty)       
        of_in_mainB = object_fifo("in2", st[3], memDistB, 2, full_input_ty)

        # Distribution of main inputs
        main_in_fifosA = []
        main_in_fifosB = []
        main_dist_offsets = []
        for t in range(NINPUTS):
            # Input distribution FIFOs
            main_in_fifosA.append(object_fifo(f"of_in_mainA{t}", memDistA, dist_tiles[0][t], 2, dist_input_ty))
            main_in_fifosB.append(object_fifo(f"of_in_mainB{t}", memDistB, dist_tiles[1][t], 2, dist_input_ty))
            main_dist_offsets.append(t * COMP_INPUT_SIZE)
        main_in_fifos = [main_in_fifosA, main_in_fifosB]        

        object_fifo_link(of_in_mainA, main_in_fifosA, [], main_dist_offsets)
        object_fifo_link(of_in_mainB, main_in_fifosB, [], main_dist_offsets)

        # Add scaled baselines
        u_add_fifos = []
        v_add_fifos = []
        w_add_fifos = []
        uv_add_fifos = []
        bl_add_fifos = []
        for c in range(NCHANNELS):
            u_add_fifos.append(object_fifo(f"of_add_u{c}", dist_tiles[c][2], add_tiles[c][0], 1, single_input_ty)) # these are 1 because running out of space, maybe after defining core it works again
            v_add_fifos.append(object_fifo(f"of_add_v{c}", dist_tiles[c][3], add_tiles[c][0], 1, single_input_ty))

            w_add_fifos.append(object_fifo(f"of_add_w{c}", dist_tiles[c][4], add_tiles[c][1], 1, single_input_ty))
            uv_add_fifos.append(object_fifo(f"of_add_uv{c}", add_tiles[c][0], add_tiles[c][1], 2, single_input_ty))
            bl_add_fifos.append([u_add_fifos[c], v_add_fifos[c], w_add_fifos[c]])
        
            
        # Do real and imaginary opeartions in parallel (trig, mult vis and partial reduc)
        add2mainFIFOs = []
        for c in range(NCHANNELS):
            add2mainFIFOs.append(object_fifo(f"of_add2real{c}", add_tiles[c][1], main_tiles[c], 2, single_input_ty))
                

        # Output movement
        of_out = object_fifo("out", mean_tile, st[2], 2, out_ty)

        # STEP4: CORE DEFINITIONS
        for c in range(NCHANNELS):
            for t in range(len(scale_tiles[c])): # t determines whether using l, m or n
                input_fifo = main_in_fifos[c][t+2] # adding 2 to skip the vis fifos
                output_fifo = bl_add_fifos[c][t]
                @core(scale_tiles[c][t]) # Scaling uvw by lmn
                def core_body():
                    for _ in range_(ITER_KERNEL):
                        inputs = input_fifo.acquire(ObjectFifoPort.Consume, 1) # 2 + 4608 = 4610
                        for _ in range_(BSIZE//MIN_SIZE): # img_size**2 / 2
                            lmn = of_in_lmn.acquire(ObjectFifoPort.Consume, 1) # 6
                            for i in range(MIN_SIZE): # i determines whether to use the first (0) or second (1) set of lmn
                                output = output_fifo.acquire(ObjectFifoPort.Produce, 1) # 4608
                                # run kernel here
                                output_fifo.release(ObjectFifoPort.Produce, 1)
                            of_in_lmn.acquire(ObjectFifoPort.Consume, 1)
                        input_fifo.release(ObjectFifoPort.Consume, 1)

            @core(add_tiles[c][0]) # Adding scaled u and scaled v
            def core_body():
                for _ in range_(ITER_KERNEL):
                    for _ in range_(BSIZE):
                        inputU = u_add_fifos[c].acquire(ObjectFifoPort.Consume, 1) # 4608
                        inputV = v_add_fifos[c].acquire(ObjectFifoPort.Consume, 1) # 4608
                        output = uv_add_fifos[c].acquire(ObjectFifoPort.Produce, 1) # 4608
                        # run kernel here
                        uv_add_fifos[c].release(ObjectFifoPort.Produce, 1)
                        u_add_fifos[c].release(ObjectFifoPort.Consume, 1)
                        v_add_fifos[c].release(ObjectFifoPort.Consume, 1)

            @core(add_tiles[c][1]) # Adding scaled u and scaled v
            def core_body():
                for _ in range_(ITER_KERNEL):
                    for _ in range_(BSIZE):
                        inputUV = uv_add_fifos[c].acquire(ObjectFifoPort.Consume, 1) # 4608
                        inputW = w_add_fifos[c].acquire(ObjectFifoPort.Consume, 1) # 4608
                        output = add2mainFIFOs[c].acquire(ObjectFifoPort.Produce, 1) # 4608
                        # run kernel here
                        add2mainFIFOs[c].release(ObjectFifoPort.Produce, 1)
                        uv_add_fifos[c].release(ObjectFifoPort.Consume, 1)
                        w_add_fifos[c].release(ObjectFifoPort.Consume, 1)
        
        @core(mean_tile) # output
        def core_body():
            for _ in range_(ITER_KERNEL):
                for _ in range_(ITERS):
                    output = of_out.acquire(ObjectFifoPort.Produce, 1)
                    
                    of_out.release(ObjectFifoPort.Produce, 1)

        # STEP5: TRACING
        # Set up a packet-switched flow from core to shim for tracing information
        tiles_to_trace = []
        if enableTrace:
            trace_utils.configure_packet_tracing_flow(tiles_to_trace, trace_shim_tile)

                    
        # STEP0: MAIN MEMORY INPUT/OUTPUT STREAMS
        # To/from AIE-array data movement
        @runtime_sequence(full_input_ty, full_input_ty, full_input_ty, full_input_ty)
        def sequence(lmn, mainA, mainB, output):
            if enableTrace:
                trace_utils.configure_packet_tracing_aie2(tiles_to_trace=tiles_to_trace, shim=trace_shim_tile, ddr_id=4, trace_size=TRACE_SIZE, trace_offset=0)
            npu_dma_memcpy_nd(metadata=of_in_lmn, bd_id=1, mem=lmn, sizes=[1, 1, 1, FULL_LMN_SIZE])
            npu_dma_memcpy_nd(metadata=of_in_mainA, bd_id=2, mem=mainA, sizes=[1, 1, 1, FULL_INPUT_SIZE]) # input: mainA
            npu_dma_memcpy_nd(metadata=of_in_mainB, bd_id=3, mem=mainB, sizes=[1, 1, 1, FULL_INPUT_SIZE]) # input: mainB
            npu_dma_memcpy_nd(metadata=of_out, bd_id=0, mem=output, sizes=[1, 1, 1, BSIZE]) # output (size = BSIZE)
            # We know of_out will complete after of_in_mainA, of_in_mainB and of_in_lmn, so it is sufficient to just wait for of_out
            dma_wait(of_out)
            if enableTrace:
                trace_utils.gen_trace_done_aie2(trace_shim_tile)


if __name__ == "__main__":
    p = create_argparser()
    opts = p.parse_args()
    with mlir_mod_ctx() as ctx:
        loafty(opts)
        res = ctx.module.operation.verify()
        if res == True:
            print(ctx.module)
        else:
            print(res)