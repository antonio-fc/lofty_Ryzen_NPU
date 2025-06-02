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
    if n_cols == 5:
        for i in range(1, 5):
            ST.append(tile(i, 0))
    else:
        for i in range(n_cols):
            ST.append(tile(i, 0))
    for i in range(n_cols):
        # Making the shim and mem tiles
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

    ITERS = 10000 # BSIZE//OUT_SIZE
    
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
    device_ = AIEDevice.npu1_4col
    @device(device_)
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
        if device_ == AIEDevice.npu1:
            ST, MT, CT = declaring_tiles(5, 4)
        else:
            ST, MT, CT = declaring_tiles(4, 4)
        core_ = CT[0][1]
        core_off = CT[2][2]
        # AIE-array data movement with object fifos
        # Inputs
        of_in_lmn = object_fifo("in0", ST[0], core_, [1, 1], out_ty)
        of_inA = object_fifo("in1", ST[1], core_, [1, 1], input_ty)
        of_inB = object_fifo("in2", ST[2], core_off, [1, 1], input_ty)        

        of_out = object_fifo("out", core_, ST[3], [1, 1], input_ty)
        # Benched core definition
        kernel_bin = "scale.o"
        @core(core_, kernel_bin)
        def core_body():
            for _ in range_(ITER_KERNEL):
                input1 = of_inA.acquire(ObjectFifoPort.Consume, 1) # 2 + 4608 = 4610
                factor = of_in_lmn.acquire(ObjectFifoPort.Consume, 1)
                output = of_out.acquire(ObjectFifoPort.Produce, 1) # 4608
                for _ in range_(ITERS):
                    kernels['scale'](input1, factor, output, INPUT_SIZE, 0)
                of_out.release(ObjectFifoPort.Produce, 1)
                of_in_lmn.release(ObjectFifoPort.Consume, 1)
                of_inA.release(ObjectFifoPort.Consume, 1)

                    
        # To/from AIE-array data movement
        @runtime_sequence(full_bl_ty, full_bl_ty, full_bl_ty, full_bl_ty, full_bl_ty)
        def sequence(freq, baselines, vis, lmn, output):
            # npu_dma_memcpy_nd(metadata=of_in_freq, bd_id=1, mem=freq, sizes=[1, 1, 1, MIN_SIZE])
            npu_dma_memcpy_nd(metadata=of_inA, bd_id=2, mem=baselines, sizes=[1, 1, 1, FULL_BL_SIZE])
            npu_dma_memcpy_nd(metadata=of_inB, bd_id=3, mem=vis, sizes=[1, 1, 1, FULL_VIS_SIZE])
            npu_dma_memcpy_nd(metadata=of_in_lmn, bd_id=4, mem=lmn, sizes=[1, 1, 1, LMN_SIZE])
            npu_dma_memcpy_nd(metadata=of_out, bd_id=0, mem=output, sizes=[1, 1, 1, INPUT_SIZE]) # output (size = BSIZE)
            # We know of_out will complete after of_in and of_in_lmn, so it is sufficient to just wait for of_out
            dma_wait(of_out)


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