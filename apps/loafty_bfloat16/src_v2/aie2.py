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

def declaring_kernel_func(dist_ty, input_ty, join_ty, lmn_move_ty, out_ty, dtype):
    # kernel for passthrough (scalar)
    name0 = "passthrough"
    kernel0 = external_func("passthrough",
        inputs=[dist_ty, dist_ty, dtype],
    )
    name1 = "scale"
    kernel1 = external_func("baseline_scale",
        inputs=[dist_ty, lmn_move_ty, input_ty, dtype, dtype, dtype, dtype],
    )
    name2 = "add"
    kernel2 = external_func("add_kernel",
        inputs=[input_ty, input_ty, input_ty, dtype],
    )
    name3 = "main"
    kernel3 = external_func("main_kernel",
        inputs=[input_ty, dist_ty, join_ty, dtype, dtype],
    )
    name4 = "sub"
    kernel4 = external_func("sub_kernel",
        inputs=[input_ty, input_ty, input_ty, dtype],
    )
    name5 = "mean"
    kernel5 = external_func("mean",
        inputs=[input_ty, out_ty, dtype, dtype],
    )
    return {
        name0: kernel0,
        name1: kernel1,
        name2: kernel2,
        name3: kernel3,
        name4: kernel4,
        name5: kernel5,
    }

def declaring_tiles(n_cols, n_comp):
    ST = [] # Shim Tiles
    MT = [] # Memory Tiles (currently not used)
    CT = [] # Compute Tiles
    for i in range(n_cols):
        # Making the shim and mem tiles
        ST.append(tile(i, 0))
        MT.append(tile(i, 1))
        # Making compute tiles
        c = []
        for j in range(n_comp):
            c.append(tile(i, j+2))
        CT.append(c)
    return (ST, MT, CT)

def loafty(opts):
    # Trace constants
    enableTrace = opts.trace_size > 0
    TRACE_SIZE = opts.trace_size
    
    # Declaring constant sizes
    ITER_KERNEL = sys.maxsize # This look runs the number of times the kernel is called, so the number of iterations atm
    MATRIX_DIM_SIZE0 = opts.anten # size of baselines and vis matrices side (square matrix) which corresponds to the number of antennas
    MATRIX_DIM_SIZE1 = opts.imgsz # size of lmn matrices side (square matrix), as well as size of image frame
    MSIZE = MATRIX_DIM_SIZE0**2 # 96x96
    BSIZE = MATRIX_DIM_SIZE1**2 # 256*256
    MIN_SIZE = 2
    OUT_SIZE = 128 # need to be at least 2 and even
    N_LMN = 3 # 3 for l, m and n
    LMN__MOVE_SIZE = OUT_SIZE*N_LMN
    LMN_SIZE = BSIZE*N_LMN

    ITERS = BSIZE//OUT_SIZE
    
    NINPUTS = 5 # number of inputs in a single stream
    NCHANNELS = 2
    
    INPUT_SIZE = MSIZE//NCHANNELS # 9216/2 # size of an input per stream
    DIST_SIZE = INPUT_SIZE + MIN_SIZE
    FULL_INPUT_SIZE = DIST_SIZE * NINPUTS # 9216*5/2 #

    REDUC_PART = 2 # this has to stay 2 for now
    JOIN_SIZE = INPUT_SIZE//REDUC_PART
    FULL_OUTPUT_SIZE = OUT_SIZE*ITERS # BSIZE
    
    # Declaring basic types
    dtype = np.dtype[bfloat16]
    dtype_k = np.int32

    # Device setup
    @device(AIEDevice.npu1_4col)
    def device_body():
        out_ty = np.ndarray[(OUT_SIZE,), dtype]
        lmn_move_ty = np.ndarray[(LMN__MOVE_SIZE,), dtype]
        input_ty = np.ndarray[(INPUT_SIZE,), dtype]
        dist_ty = np.ndarray[(DIST_SIZE,), dtype]
        full_input_ty = np.ndarray[(FULL_INPUT_SIZE,), dtype]
        join_ty = np.ndarray[(JOIN_SIZE,), dtype]

        # AIE Core Function declarations

        kernels = declaring_kernel_func(dist_ty, input_ty, join_ty, lmn_move_ty, out_ty, dtype_k)

        # Tile declarations
        ST, MT, CT = declaring_tiles(4, 4)
        
        scaleUtile0, scaleVtile0, scaleWtile0 = CT[0][3], CT[0][2], CT[0][1]
        scaleUtile1, scaleVtile1, scaleWtile1 = CT[3][3], CT[3][2], CT[3][1]

        addBlUVTile0, addBlUVWTile0 = CT[1][3], CT[1][2]
        addBlUVTile1, addBlUVWTile1 = CT[2][3], CT[2][2]

        realTile0, imagTile0 = CT[1][1], CT[0][0]
        realTile1, imagTile1 = CT[2][1], CT[3][0]
        
        sub_tile = CT[1][0]
        
        mean_tile = CT[2][0]

        dist_tiles = [[realTile0, imagTile0, scaleUtile0, scaleVtile0, scaleWtile0], [realTile1, imagTile1, scaleUtile1, scaleVtile1, scaleWtile1]]
        broad_tiles = [scaleUtile0, scaleVtile0, scaleWtile0, scaleUtile1, scaleVtile1, scaleWtile1]

        scale_tiles = [[scaleUtile0, scaleVtile0, scaleWtile0], [scaleUtile1, scaleVtile1, scaleWtile1]]
        add_tiles = [[addBlUVTile0, addBlUVWTile0], [addBlUVTile1, addBlUVWTile1]]
        rc_tiles = [[realTile0, imagTile0], [realTile1, imagTile1]]

        memDist0 = MT[0]
        memDist1 = MT[3]
        memJoinR = MT[2]
        memJoinC = MT[1]

        memDist = [memDist0, memDist1]
        memJoin = [memJoinR, memJoinC]

        trace_shim_tile = ST[1]

        # AIE-array data movement with object fifos
        # Inputs
        of_in_lmn = object_fifo("in0", ST[1], broad_tiles, 4, lmn_move_ty)
        of_in_mainA = object_fifo("in1", ST[0], memDist[0], 2, full_input_ty)       
        of_in_mainB = object_fifo("in2", ST[3], memDist[1], 2, full_input_ty)

        # Distribution of inputs mainA and mainB
        main_in_fifos = []
        of_in_main = [of_in_mainA, of_in_mainB]
        main_dist_offsets = [t * DIST_SIZE for t in range(NINPUTS)]
        for c in range(NCHANNELS):
            main_in_fifos.append([object_fifo(f"of_in_main{c}{t}", memDist[c], dist_tiles[c][t], [1, 1], dist_ty) for t in range(NINPUTS)])
            object_fifo_link(of_in_main[c], main_in_fifos[c], [], main_dist_offsets)

        # Moving input for adding the scaled baselines
        u_add_fifos = [object_fifo(f"of_add_u{c}", scale_tiles[c][0], add_tiles[c][0], [1, 1], input_ty) for c in range(NCHANNELS)] # ask why i cant have 2 instead of [1, 1]
        v_add_fifos = [object_fifo(f"of_add_v{c}", scale_tiles[c][1], add_tiles[c][0], [1, 1], input_ty) for c in range(NCHANNELS)]
        w_add_fifos = [object_fifo(f"of_add_w{c}", scale_tiles[c][2], add_tiles[c][1], [1, 1], input_ty) for c in range(NCHANNELS)]
        uv_add_fifos = [object_fifo(f"of_add_uv{c}", add_tiles[c][0], add_tiles[c][1], [1, 1], input_ty) for c in range(NCHANNELS)]
            
        bl_in_fifos = [[main_in_fifos[0][2], main_in_fifos[0][3], main_in_fifos[0][4]], [main_in_fifos[1][2], main_in_fifos[1][3], main_in_fifos[1][4]]]
        bl_add_fifos = [[u_add_fifos[0], v_add_fifos[0], w_add_fifos[0]], [u_add_fifos[1], v_add_fifos[1], w_add_fifos[1]]]

        # Moving baselines addition result to the main tiles
        add2mainFIFOs = []
        for c in range(NCHANNELS):
            add2mainFIFOs.append(object_fifo(f"of_add2main{c}", add_tiles[c][1], rc_tiles[c], [1, 1, 1], input_ty))

        # Joining the two channels
        join_offsets = [t * JOIN_SIZE for t in range(NCHANNELS)]
        
        join_real_fifo0 = object_fifo(f"of_join_real0", rc_tiles[0][0], memJoin[0], [1, 1], join_ty)
        join_real_fifo1 = object_fifo(f"of_join_real1", rc_tiles[1][0], memJoin[0], [1, 1], join_ty)

        join_imag_fifo0 = object_fifo(f"of_join_imag0", rc_tiles[0][1], memJoin[1], [1, 1], join_ty)
        join_imag_fifo1 = object_fifo(f"of_join_imag1", rc_tiles[1][1], memJoin[1], [1, 1], join_ty)
        
        real_join_fifos = [join_real_fifo0, join_real_fifo1]
        imag_join_fifos = [join_imag_fifo0, join_imag_fifo1]

        # join to sub tile
        real2subFIFO = object_fifo(f"of_real2sub", memJoin[0], sub_tile, [1, 1], input_ty)
        imag2subFIFO = object_fifo(f"of_imag2sub", memJoin[1], sub_tile, [1, 1], input_ty)

        object_fifo_link(real_join_fifos, real2subFIFO, join_offsets, [])
        object_fifo_link(imag_join_fifos, imag2subFIFO, join_offsets, [])
        
        # sub to mean tile
        of_sub2mean = object_fifo("of_sub2mean", sub_tile, mean_tile, 2, input_ty)

        # Output
        of_out = object_fifo("out", mean_tile, ST[2], 2, out_ty)

        # STEP4: CORE DEFINITIONS
        for c in range(NCHANNELS): # repeating the tile definitions for both channels
            for bl in range(N_LMN): 
                inputFifo = main_in_fifos[c][bl + 2] # skipping over the visibilities streams/fifos
                outputFifo = bl_add_fifos[c][bl]
                @core(scale_tiles[c][bl], "scale.o")
                def core_body():
                    for _ in range_(ITER_KERNEL):
                        inputs = inputFifo.acquire(ObjectFifoPort.Consume, 1) # 2 + 4608 = 4610
                        for _ in range_(ITERS): # img_size**2 / 32
                            lmn = of_in_lmn.acquire(ObjectFifoPort.Consume, 1) # 32 * 3 
                            for i in range(OUT_SIZE): # i determines which index of the set of lmn
                                output = outputFifo.acquire(ObjectFifoPort.Produce, 1) # 4608
                                kernels['scale'](inputs, lmn, output, INPUT_SIZE, OUT_SIZE, i, bl) # 0 for l
                                outputFifo.release(ObjectFifoPort.Produce, 1)
                            of_in_lmn.release(ObjectFifoPort.Consume, 1)
                        inputFifo.release(ObjectFifoPort.Consume, 1)
       
        ##########################################################################################################################
            inputUFifo = u_add_fifos[c]
            inputVFifo = v_add_fifos[c]
            outputFifo = uv_add_fifos[c]
            @core(add_tiles[c][0], "add.o")
            def core_body():
                for _ in range_(ITER_KERNEL):
                    for _ in range_(BSIZE): # img_size**2 / 32
                        inputU = inputUFifo.acquire(ObjectFifoPort.Consume, 1) # 4608
                        inputV = inputVFifo.acquire(ObjectFifoPort.Consume, 1) # 4608
                        output = outputFifo.acquire(ObjectFifoPort.Produce, 1) # 4608
                        kernels['add'](inputU, inputV, output, INPUT_SIZE)
                        outputFifo.release(ObjectFifoPort.Produce, 1)
                        inputUFifo.release(ObjectFifoPort.Consume, 1)
                        inputVFifo.release(ObjectFifoPort.Consume, 1)
    
            inputWFifo = w_add_fifos[c]
            inputUVFifo = uv_add_fifos[c]
            outputFifo = add2mainFIFOs[c]
            @core(add_tiles[c][1], "add.o")
            def core_body():
                for _ in range_(ITER_KERNEL):
                    for _ in range_(BSIZE): # img_size**2 / 32
                        inputW = inputWFifo.acquire(ObjectFifoPort.Consume, 1) # 4608
                        inputUV = inputUVFifo.acquire(ObjectFifoPort.Consume, 1) # 4608
                        output = outputFifo.acquire(ObjectFifoPort.Produce, 1) # 4608
                        kernels['add'](inputW, inputUV, output, INPUT_SIZE)
                        outputFifo.release(ObjectFifoPort.Produce, 1)
                        inputWFifo.release(ObjectFifoPort.Consume, 1)
                        inputUVFifo.release(ObjectFifoPort.Consume, 1)

        ##########################################################################################################################
            inputVisFifo = main_in_fifos[c][0]
            inputAddFifo = add2mainFIFOs[c]
            outputFifo = real_join_fifos[c]
            @core(rc_tiles[c][0], "kernels.a")
            def core_body():
                for _ in range_(ITER_KERNEL):
                    inputVis = inputVisFifo.acquire(ObjectFifoPort.Consume, 1) # 2 + 4608 = 4610
                    for _ in range_(BSIZE):
                        inputAdd = inputAddFifo.acquire(ObjectFifoPort.Consume, 1) # 4608
                        output = outputFifo.acquire(ObjectFifoPort.Produce, 1) # 2304
                        kernels['main'](inputAdd, inputVis, output, INPUT_SIZE, 0)
                        outputFifo.release(ObjectFifoPort.Produce, 1)
                        inputAddFifo.release(ObjectFifoPort.Consume, 1)
                    inputVisFifo.release(ObjectFifoPort.Consume, 1)
    
            inputVisFifo = main_in_fifos[c][1]
            inputAddFifo = add2mainFIFOs[c]
            outputFifo = imag_join_fifos[c]
            @core(rc_tiles[c][1], "kernels.a")
            def core_body():
                for _ in range_(ITER_KERNEL):
                    inputVis = inputVisFifo.acquire(ObjectFifoPort.Consume, 1) # 2 + 4608 = 4610
                    for _ in range_(BSIZE):
                        inputAdd = inputAddFifo.acquire(ObjectFifoPort.Consume, 1) # 4608
                        output = outputFifo.acquire(ObjectFifoPort.Produce, 1) # 2304
                        kernels['main'](inputAdd, inputVis, output, INPUT_SIZE, 1)
                        outputFifo.release(ObjectFifoPort.Produce, 1)
                        inputAddFifo.release(ObjectFifoPort.Consume, 1)
                    inputVisFifo.release(ObjectFifoPort.Consume, 1)

        ##########################################################################################################################
        inputRfifo = real2subFIFO
        inputCfifo = imag2subFIFO
        outputFifo = of_sub2mean
        @core(sub_tile, "sub.o")
        def core_body():
            for _ in range_(ITER_KERNEL):
                for _ in range_(BSIZE):
                    inputR = real2subFIFO.acquire(ObjectFifoPort.Consume, 1) # 4608
                    inputC = imag2subFIFO.acquire(ObjectFifoPort.Consume, 1) # 4608
                    output = outputFifo.acquire(ObjectFifoPort.Produce, 1) # 4608
                    kernels['sub'](inputR, inputC, output, INPUT_SIZE)
                    outputFifo.release(ObjectFifoPort.Produce, 1)
                    real2subFIFO.release(ObjectFifoPort.Consume, 1) # 4608
                    imag2subFIFO.release(ObjectFifoPort.Consume, 1) # 4608
        
        
        ##########################################################################################################################
        inputFifo = of_sub2mean
        outputFifo = of_out
        @core(mean_tile, "mean.o")
        def core_body():
            for _ in range_(ITER_KERNEL): # this needs to be at least the number of iterations in the test file
                for _ in range_(ITERS):
                    output = outputFifo.acquire(ObjectFifoPort.Produce, 1) # OUT_SIZE
                    for i in range(OUT_SIZE):
                        inputs = inputFifo.acquire(ObjectFifoPort.Consume, 1) # 4608
                        kernels['mean'](inputs, output, INPUT_SIZE, i)
                        inputFifo.release(ObjectFifoPort.Consume, 1)
                    outputFifo.release(ObjectFifoPort.Produce, 1)


        # Set up a packet-switched flow from core to shim for tracing information
        tiles_to_trace = [mean_tile]
        if enableTrace:
            trace_utils.configure_packet_tracing_flow(tiles_to_trace, trace_shim_tile)

                    
        # To/from AIE-array data movement
        @runtime_sequence(full_input_ty, full_input_ty, full_input_ty, full_input_ty)
        def sequence(lmn, mainA, mainB, output):
            if enableTrace:
                trace_utils.configure_packet_tracing_aie2(tiles_to_trace=tiles_to_trace, shim=trace_shim_tile, ddr_id=4, trace_size=TRACE_SIZE, trace_offset=0)
            npu_dma_memcpy_nd(metadata=of_in_lmn, bd_id=1, mem=lmn, sizes=[1, 1, 1, LMN_SIZE])
            npu_dma_memcpy_nd(metadata=of_in_mainA, bd_id=2, mem=mainA, sizes=[1, 1, 1, FULL_INPUT_SIZE]) # input: mainA
            npu_dma_memcpy_nd(metadata=of_in_mainB, bd_id=3, mem=mainB, sizes=[1, 1, 1, FULL_INPUT_SIZE]) # input: mainB
            npu_dma_memcpy_nd(metadata=of_out, bd_id=0, mem=output, sizes=[1, 1, 1, FULL_OUTPUT_SIZE]) # output (size = BSIZE)
            # We know of_out will complete after of_in and of_in_lmn, so it is sufficient to just wait for of_out
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