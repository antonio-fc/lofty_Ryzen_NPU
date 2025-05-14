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

def declaring_kernel_func(input_ty, out_ty, min_ty, dtype):
    # kernel for passthrough (scalar)
    name0 = "passthrough"
    kernel0 = external_func("passthrough",
        inputs=[input_ty, input_ty, dtype],
    )
    name1 = "scale"
    kernel1 = external_func("scale",
        inputs=[input_ty, out_ty, input_ty, dtype, dtype],
    )
    name2 = "add"
    kernel2 = external_func("add_kernel",
        inputs=[input_ty, input_ty, input_ty, dtype],
    )
    name3 = "scale_single"
    kernel3 = external_func("scale_single",
        inputs=[input_ty, min_ty, input_ty, dtype],
    )
    name4 = "cos"
    kernel4 = external_func("cosine",
        inputs=[input_ty, input_ty, dtype],
    )
    name5 = "sin"
    kernel5 = external_func("sine",
        inputs=[input_ty, input_ty, dtype],
    )
    name6 = "mul"
    kernel6 = external_func("mul_kernel",
        inputs=[input_ty, input_ty, input_ty, dtype],
    )
    name7 = "sub"
    kernel7 = external_func("sub_kernel",
        inputs=[input_ty, input_ty, input_ty, dtype],
    )
    name8 = "mean"
    kernel8 = external_func("mean",
        inputs=[input_ty, out_ty, dtype, dtype],
    )
    return {
        name0: kernel0,
        name1: kernel1,
        name2: kernel2,
        name3: kernel3,
        name4: kernel4,
        name5: kernel5,
        name6: kernel6,
        name7: kernel7,
        name8: kernel8,
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
    OUT_SIZE = 32 # need to be at least 2 and even
    N_LMN = 3 # 3 for l, m and n
    LMN__MOVE_SIZE = OUT_SIZE*N_LMN
    LMN_SIZE = BSIZE*N_LMN

    ITERS = BSIZE//OUT_SIZE
    
    NCHANNELS = 2
    
    INPUT_SIZE = MSIZE//NCHANNELS # 9216/2 # size of an input per stream
    DIST_BL_SIZE = INPUT_SIZE * 3 # 9216/2 * 3
    DIST_VIS_SIZE = INPUT_SIZE * 2 # 9216/2 * 2
    FULL_BL_SIZE = MSIZE * 3 # 9216 * 3
    FULL_VIS_SIZE = MSIZE * 2 # 9216 * 3
    
    FULL_OUTPUT_SIZE = OUT_SIZE*ITERS # BSIZE
    
    # Declaring basic types
    dtype = np.dtype[bfloat16]
    dtype_k = np.int32

    # Device setup
    @device(AIEDevice.npu1_4col)
    def device_body():
        min_ty = np.ndarray[(MIN_SIZE,), dtype]
        out_ty = np.ndarray[(OUT_SIZE,), dtype]
        lmn_move_ty = np.ndarray[(LMN__MOVE_SIZE,), dtype]
        input_ty = np.ndarray[(INPUT_SIZE,), dtype]
        dist_bl_ty = np.ndarray[(DIST_BL_SIZE,), dtype]
        dist_vis_ty = np.ndarray[(DIST_VIS_SIZE,), dtype]
        full_bl_ty = np.ndarray[(FULL_BL_SIZE,), dtype]
        full_vis_ty = np.ndarray[(FULL_VIS_SIZE,), dtype]

        # AIE Core Function declarations

        kernels = declaring_kernel_func(input_ty, out_ty, min_ty, dtype_k)

        # Tile declarations
        ST, MT, CT = declaring_tiles(4, 4)

        scaleUtile, scaleVtile, scaleWtile = CT[0][3], CT[0][2], CT[0][1]

        addUVtile, addUVWtile = CT[1][3], CT[1][2]

        scaleFreqTile = CT[1][1]

        cosTile, sinTile = CT[2][3], CT[3][3]

        multRtile, multCtile = CT[2][2], CT[3][2]

        addRtile, addCtile = CT[2][1], CT[3][1]

        subTile = CT[3][0]
        
        meanTile = CT[2][0]

        bl_tiles = [scaleUtile, scaleVtile, scaleWtile]
        vis_tiles = [multRtile, multCtile]

        memDisBL = MT[1]
        memDisVis = MT[2]
        memDisLMN = MT[3]

        trace_shim_tile = ST[1]

        # AIE-array data movement with object fifos
        # Inputs
        of_in_lmn = object_fifo("in0", ST[0], memDisLMN, 2, lmn_move_ty)
        of_in_bl = object_fifo("in1", ST[1], memDisBL, 2, dist_bl_ty)       
        of_in_vis = object_fifo("in2", ST[2], memDisVis, 2, dist_vis_ty)
        of_in_freq = object_fifo("in3", ST[3], scaleFreqTile, 2, min_ty)

        # Inner Data Movements
        # Distribution of baselines
        bl_dist_offsets = [t * INPUT_SIZE for t in range(3)]
        in_u_fifo = object_fifo("of_in_u", memDisBL, scaleUtile, [2, 2], input_ty)
        in_v_fifo = object_fifo("of_in_v", memDisBL, scaleVtile, [2, 2], input_ty)
        in_w_fifo = object_fifo("of_in_w", memDisBL, scaleWtile, [2, 2], input_ty)
        object_fifo_link(of_in_bl, [in_u_fifo, in_v_fifo, in_w_fifo], [], bl_dist_offsets)

        # Distribution of lmn
        lmn_dist_offsets = [t * OUT_SIZE for t in range(3)]
        in_l_fifo = object_fifo("of_in_l", memDisLMN, scaleUtile, [1, 1], out_ty)
        in_m_fifo = object_fifo("of_in_m", memDisLMN, scaleVtile, [1, 1], out_ty)
        in_n_fifo = object_fifo("of_in_n", memDisLMN, scaleWtile, [1, 1], out_ty)
        object_fifo_link(of_in_lmn, [in_l_fifo, in_m_fifo, in_n_fifo], [], lmn_dist_offsets)

        # Distribution of visibilities
        vis_dist_offsets = [t * INPUT_SIZE for t in range(2)]
        in_visR_fifo = object_fifo("of_in_visR", memDisVis, multRtile, [2, 2], input_ty)
        in_visC_fifo = object_fifo("of_in_visC", memDisVis, multCtile, [2, 2], input_ty)
        object_fifo_link(of_in_vis, [in_visR_fifo, in_visC_fifo], [], vis_dist_offsets)

        # Adding the scaled baselines
        addUfifo = object_fifo("of_addU", scaleUtile, addUVtile, [1, 1], input_ty)
        addVfifo = object_fifo("of_addV", scaleVtile, addUVtile, [1, 1], input_ty)
        addWfifo = object_fifo("of_addW", scaleWtile, addUVWtile, [1, 2], input_ty) # whyyyyyyyyy 2???
        addUVfifo = object_fifo("of_addUV", addUVtile, addUVWtile, [1, 1], input_ty)

        # Scale addintion with freq and do trig functions
        scaleAddBLfifo = object_fifo("of_scaleAddBL", addUVWtile, scaleFreqTile, [1, 1], input_ty)
        trigFifo = object_fifo("of_trigFifo", scaleFreqTile, [cosTile, sinTile], [1, 1, 1], input_ty)

        # Multiply trig by visibilities
        multTrigRfifo = object_fifo("of_multTrigR", cosTile, multRtile, [1, 1], input_ty)
        multTrigCfifo = object_fifo("of_multTrigC", sinTile, multCtile, [1, 1], input_ty)

        # Reduce channels
        reduceRfifo = object_fifo("of_reduceR", multRtile, addRtile, [2, 2], input_ty)
        reduceCfifo = object_fifo("of_reduceC", multCtile, addCtile, [2, 2], input_ty)


        # Reduc to sub
        reduc2SubRfifo = object_fifo("of_reduc2SubR", addRtile, subTile, [1, 1], input_ty)
        reduc2SubCfifo = object_fifo("of_reduc2SubC", addCtile, subTile, [1, 1], input_ty)
        
        # Sub to mean fifo
        of_sub2mean = object_fifo('of_sub2mean', subTile, meanTile, [1, 1], input_ty)

        # Output
        of_out = object_fifo("out", meanTile, ST[2], 2, out_ty)

        # STEP4: CORE DEFINITIONS

        inputFifo = in_u_fifo
        lmnFifo = in_l_fifo
        outputFifo = addUfifo
        @core(scaleUtile, "scale.o")
        def core_body():
            for _ in range_(ITER_KERNEL):
                inputs = inputFifo.acquire(ObjectFifoPort.Consume, 2) # [4608, 4608]
                for _ in range_(ITERS): # img_size**2 / 32
                    lmn = lmnFifo.acquire(ObjectFifoPort.Consume, 1)
                    for i in range(OUT_SIZE): # 32
                        for c in range(NCHANNELS): # 2
                            output = outputFifo.acquire(ObjectFifoPort.Produce, 1) # 4608
                            kernels['scale'](inputs[c], lmn, output, INPUT_SIZE, i)
                            outputFifo.release(ObjectFifoPort.Produce, 1)
                    lmnFifo.release(ObjectFifoPort.Consume, 1)
                inputFifo.release(ObjectFifoPort.Consume, 2)

        inputFifo = in_v_fifo
        lmnFifo = in_m_fifo
        outputFifo = addVfifo
        @core(scaleVtile, "scale.o")
        def core_body():
            for _ in range_(ITER_KERNEL):
                inputs = inputFifo.acquire(ObjectFifoPort.Consume, 2) # [4608, 4608]
                for _ in range_(ITERS): # img_size**2 / 32
                    lmn = lmnFifo.acquire(ObjectFifoPort.Consume, 1)
                    for i in range(OUT_SIZE): # 32
                        for c in range(NCHANNELS): # 2
                            output = outputFifo.acquire(ObjectFifoPort.Produce, 1) # 4608
                            kernels['scale'](inputs[c], lmn, output, INPUT_SIZE, i)
                            outputFifo.release(ObjectFifoPort.Produce, 1)
                    lmnFifo.release(ObjectFifoPort.Consume, 1)
                inputFifo.release(ObjectFifoPort.Consume, 2)

        inputFifo = in_w_fifo
        lmnFifo = in_n_fifo
        outputFifo = addWfifo
        @core(scaleWtile, "scale.o")
        def core_body():
            for _ in range_(ITER_KERNEL):
                inputs = inputFifo.acquire(ObjectFifoPort.Consume, 2) # [4608, 4608]
                for _ in range_(ITERS): # img_size**2 / 32
                    lmn = lmnFifo.acquire(ObjectFifoPort.Consume, 1)
                    for i in range(OUT_SIZE): # 32
                        for c in range(NCHANNELS): # 2
                            output = outputFifo.acquire(ObjectFifoPort.Produce, 1) # 4608
                            kernels['scale'](inputs[c], lmn, output, INPUT_SIZE, i)
                            outputFifo.release(ObjectFifoPort.Produce, 1)
                    lmnFifo.release(ObjectFifoPort.Consume, 1)
                inputFifo.release(ObjectFifoPort.Consume, 2)

        ##########################################################################################################################
        inputUFifo = addUfifo
        inputVFifo = addVfifo
        outputFifo = addUVfifo
        @core(addUVtile, "add.o")
        def core_body():
            for _ in range_(ITER_KERNEL):
                for _ in range_(BSIZE): # img_size**2
                    for _ in range_(NCHANNELS): # 2
                        inputU = inputUFifo.acquire(ObjectFifoPort.Consume, 1) # 4608
                        inputV = inputVFifo.acquire(ObjectFifoPort.Consume, 1) # 4608
                        output = outputFifo.acquire(ObjectFifoPort.Produce, 1) # 4608
                        kernels['add'](inputU, inputV, output, INPUT_SIZE)
                        outputFifo.release(ObjectFifoPort.Produce, 1)
                        inputUFifo.release(ObjectFifoPort.Consume, 1)
                        inputVFifo.release(ObjectFifoPort.Consume, 1)

        inputUVFifo = addUVfifo
        inputWFifo = addWfifo
        outputFifo = scaleAddBLfifo
        @core(addUVWtile, "add.o")
        def core_body():
            for _ in range_(ITER_KERNEL):
                for _ in range_(BSIZE): # img_size**2
                    for _ in range_(NCHANNELS): # 2
                        inputUV = inputUVFifo.acquire(ObjectFifoPort.Consume, 1) # 4608
                        inputW = inputWFifo.acquire(ObjectFifoPort.Consume, 1) # 4608
                        output = outputFifo.acquire(ObjectFifoPort.Produce, 1) # 4608
                        kernels['add'](inputUV, inputW, output, INPUT_SIZE)
                        outputFifo.release(ObjectFifoPort.Produce, 1)
                        inputUVFifo.release(ObjectFifoPort.Consume, 1)
                        inputWFifo.release(ObjectFifoPort.Consume, 1)
                    
        ##########################################################################################################################
        inputFifo = scaleAddBLfifo
        outputFifo = trigFifo
        @core(scaleFreqTile, "scale.o")
        def core_body():
            for _ in range_(ITER_KERNEL):
                freqInput = of_in_freq.acquire(ObjectFifoPort.Consume, 1) # 2
                for _ in range_(BSIZE): # img_size**2
                    for _ in range_(NCHANNELS): # 2
                        inputs = inputFifo.acquire(ObjectFifoPort.Consume, 1)
                        output = outputFifo.acquire(ObjectFifoPort.Produce, 1)
                        kernels['scale_single'](inputs, freqInput, output, INPUT_SIZE)
                        outputFifo.release(ObjectFifoPort.Produce, 1)
                        inputFifo.release(ObjectFifoPort.Consume, 1)
                of_in_freq.release(ObjectFifoPort.Consume, 1) # 2
        ##########################################################################################################################
        inputFifo = trigFifo
        outputFifo = multTrigRfifo
        @core(cosTile, "kernels.a")
        def core_body():
            for _ in range_(ITER_KERNEL):
                for _ in range_(BSIZE): # img_size**2
                    for _ in range_(NCHANNELS): # 2
                        inputs = inputFifo.acquire(ObjectFifoPort.Consume, 1)
                        output = outputFifo.acquire(ObjectFifoPort.Produce, 1)
                        kernels['cos'](inputs, output, INPUT_SIZE)
                        outputFifo.release(ObjectFifoPort.Produce, 1)
                        inputFifo.release(ObjectFifoPort.Consume, 1)
                    
        inputFifo = trigFifo
        outputFifo = multTrigCfifo
        @core(sinTile, "kernels.a")
        def core_body():
            for _ in range_(ITER_KERNEL):
                for _ in range_(BSIZE): # img_size**2
                    for _ in range_(NCHANNELS): # 2
                        inputs = inputFifo.acquire(ObjectFifoPort.Consume, 1)
                        output = outputFifo.acquire(ObjectFifoPort.Produce, 1)
                        kernels['sin'](inputs, output, INPUT_SIZE)
                        outputFifo.release(ObjectFifoPort.Produce, 1)
                        inputFifo.release(ObjectFifoPort.Consume, 1)
        ##########################################################################################################################
        inputVisFifo = in_visR_fifo
        inputFifo = multTrigRfifo
        outputFifo = reduceRfifo
        @core(multRtile, "mul.o")
        def core_body():
            for _ in range_(ITER_KERNEL):
                inputVis = inputVisFifo.acquire(ObjectFifoPort.Consume, 2) # [4608, 4608]
                for _ in range_(BSIZE): # img_size**2
                    for c in range(NCHANNELS): # 2
                        inputs = inputFifo.acquire(ObjectFifoPort.Consume, 1)
                        output = outputFifo.acquire(ObjectFifoPort.Produce, 1)
                        kernels['mul'](inputs, inputVis[c], output, INPUT_SIZE)
                        outputFifo.release(ObjectFifoPort.Produce, 1)
                        inputFifo.release(ObjectFifoPort.Consume, 1)
                inputVisFifo.release(ObjectFifoPort.Consume, 2)

        inputVisFifo = in_visC_fifo
        inputFifo = multTrigCfifo
        outputFifo = reduceCfifo
        @core(multCtile, "mul.o")
        def core_body():
            for _ in range_(ITER_KERNEL):
                inputVis = inputVisFifo.acquire(ObjectFifoPort.Consume, 2) # [4608, 4608]
                for _ in range_(BSIZE): # img_size**2
                    for c in range(NCHANNELS): # 2
                        inputs = inputFifo.acquire(ObjectFifoPort.Consume, 1)
                        output = outputFifo.acquire(ObjectFifoPort.Produce, 1)
                        kernels['mul'](inputs, inputVis[c], output, INPUT_SIZE)
                        outputFifo.release(ObjectFifoPort.Produce, 1)
                        inputFifo.release(ObjectFifoPort.Consume, 1)
                inputVisFifo.release(ObjectFifoPort.Consume, 2)
        ##########################################################################################################################
        inputFifo = reduceRfifo
        outputFifo = reduc2SubRfifo
        @core(addRtile, "add.o")
        def core_body():
            for _ in range_(ITER_KERNEL):
                for _ in range_(BSIZE): # img_size**2
                    inputs = inputFifo.acquire(ObjectFifoPort.Consume, 2) # [4608, 4608] the two halfs of the real pixel data
                    output = outputFifo.acquire(ObjectFifoPort.Produce, 1)
                    kernels['add'](inputs[0], inputs[1], output, INPUT_SIZE)
                    outputFifo.release(ObjectFifoPort.Produce, 1)
                    inputFifo.release(ObjectFifoPort.Consume, 2)

        inputFifo = reduceCfifo
        outputFifo = reduc2SubCfifo
        @core(addCtile, "add.o")
        def core_body():
            for _ in range_(ITER_KERNEL):
                for _ in range_(BSIZE): # img_size**2
                    inputs = inputFifo.acquire(ObjectFifoPort.Consume, 2) # [4608, 4608] the two halfs of the real pixel data
                    output = outputFifo.acquire(ObjectFifoPort.Produce, 1)
                    kernels['add'](inputs[0], inputs[1], output, INPUT_SIZE)
                    outputFifo.release(ObjectFifoPort.Produce, 1)
                    inputFifo.release(ObjectFifoPort.Consume, 2)
        ##########################################################################################################################
        inputFifo0 = reduc2SubRfifo
        inputFifo1 = reduc2SubCfifo
        outputFifo = of_sub2mean
        @core(subTile, "sub.o")
        def core_body():
            for _ in range_(ITER_KERNEL):
                for _ in range_(BSIZE): # img_size**2
                    input0 = inputFifo0.acquire(ObjectFifoPort.Consume, 1) # 4608
                    input1 = inputFifo1.acquire(ObjectFifoPort.Consume, 1) # 4608
                    output = outputFifo.acquire(ObjectFifoPort.Produce, 1)
                    kernels['sub'](input0, input1, output, INPUT_SIZE)
                    outputFifo.release(ObjectFifoPort.Produce, 1)
                    inputFifo0.release(ObjectFifoPort.Consume, 1)
                    inputFifo1.release(ObjectFifoPort.Consume, 1)
        ##########################################################################################################################
        inputFifo = of_sub2mean
        outputFifo = of_out
        @core(meanTile, "mean.o")
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
        tiles_to_trace = [meanTile]
        if enableTrace:
            trace_utils.configure_packet_tracing_flow(tiles_to_trace, trace_shim_tile)

                    
        # To/from AIE-array data movement
        @runtime_sequence(full_bl_ty, full_bl_ty, full_bl_ty, full_bl_ty, full_bl_ty)
        def sequence(freq, baselines, vis, lmn, output):
            if enableTrace:
                trace_utils.configure_packet_tracing_aie2(tiles_to_trace=tiles_to_trace, shim=trace_shim_tile, ddr_id=4, trace_size=TRACE_SIZE, trace_offset=0)
            npu_dma_memcpy_nd(metadata=of_in_freq, bd_id=1, mem=freq, sizes=[1, 1, 1, MIN_SIZE])
            npu_dma_memcpy_nd(metadata=of_in_bl, bd_id=2, mem=baselines, sizes=[1, 1, 1, FULL_BL_SIZE])
            npu_dma_memcpy_nd(metadata=of_in_vis, bd_id=3, mem=vis, sizes=[1, 1, 1, FULL_VIS_SIZE])
            npu_dma_memcpy_nd(metadata=of_in_lmn, bd_id=4, mem=lmn, sizes=[1, 1, 1, LMN_SIZE])
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