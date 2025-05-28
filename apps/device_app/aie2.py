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

def declaring_tiles(n_cols, n_comp):
    ST = [] # Shim Tiles
    MT = [] # Memory Tiles (currently not used)
    CT = [] # Compute Tiles
    # Pupulating the tile sets
    for col in range(n_cols):
        if n_cols < 5 or col > 0:
            ST.append(tile(col, 0))
        MT.append(tile(col, 1))
        c = []
        for j in range(n_comp):
            c.append(tile(col, j+2))
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
    OUT_SIZE = 64 # need to be at least 2 and even
    N_LMN = 3 # 3 for l, m and n
    LMN__MOVE_SIZE = OUT_SIZE*N_LMN
    LMN_SIZE = BSIZE*N_LMN

    ITERS = 1024 # BSIZE//OUT_SIZE
    
    NINPUTS = 5 # number of inputs in a single stream
    NCHANNELS = 2
    
    INPUT_SIZE = MSIZE//NCHANNELS # 9216/2 # size of an input per stream
    DIST_SIZE = INPUT_SIZE + MIN_SIZE
    FULL_INPUT_SIZE = DIST_SIZE * NINPUTS # (9216/2 + 2)*5

    REDUC_PART = 2 # this has to stay 2 for now
    JOIN_SIZE = INPUT_SIZE//REDUC_PART
    FULL_OUTPUT_SIZE = OUT_SIZE*ITERS # BSIZE
    
    # Declaring basic types
    dtype = np.dtype[bfloat16]
    dtype_k = np.int32

    # Device setup
    device_ = AIEDevice.npu1_4col
    @device(device_)
    def device_body():
        out_ty = np.ndarray[(OUT_SIZE,), dtype]
        lmn_move_ty = np.ndarray[(LMN__MOVE_SIZE,), dtype]
        input_ty = np.ndarray[(INPUT_SIZE,), dtype]
        dist_ty = np.ndarray[(DIST_SIZE,), dtype]
        full_input_ty = np.ndarray[(FULL_INPUT_SIZE,), dtype]
        join_ty = np.ndarray[(JOIN_SIZE,), dtype]

        # AIE Core Function declarations
        kernel = external_func("add_kernel", inputs=[input_ty, input_ty, input_ty, dtype_k])

        # Tile declarations
        N_COMP_TILES = 4
        ST, MT, CT = (
            declaring_tiles(5, N_COMP_TILES) if device_ == AIEDevice.npu1 else
            declaring_tiles(4, N_COMP_TILES) if device_ == AIEDevice.npu1_4col else
            declaring_tiles(3, N_COMP_TILES) if device_ == AIEDevice.npu1_3col else
            declaring_tiles(2, N_COMP_TILES) if device_ == AIEDevice.npu1_2col else
            declaring_tiles(1, N_COMP_TILES) if device_ == AIEDevice.npu1_1col else
            declaring_tiles(0, 0)
        )
        core_ = CT[0][1]
        core_off = CT[2][2]
        # AIE-array data movement with object fifos
        # Inputs
        of_in_lmn = object_fifo("in0", ST[0], core_off, [1, 1], lmn_move_ty)
        of_in_mainA = object_fifo("in1", ST[1], core_, [1, 1], input_ty)
        of_in_mainB = object_fifo("in2", ST[2], core_, [1, 1], input_ty)        

        of_out = object_fifo("out", core_, ST[3], [1, 1], input_ty)
        # Benched core definition
        kernel_bin = "add.o"
        @core(core_, kernel_bin)
        def core_body():
            for _ in range_(ITER_KERNEL):
                input1 = of_in_mainA.acquire(ObjectFifoPort.Consume, 1)
                input2 = of_in_mainB.acquire(ObjectFifoPort.Consume, 1)
                output = of_out.acquire(ObjectFifoPort.Produce, 1)
                for _ in range_(ITERS):
                    kernel(input1, input2, output, 16384)
                of_out.release(ObjectFifoPort.Produce, 1)
                of_in_mainB.release(ObjectFifoPort.Consume, 1)
                of_in_mainA.release(ObjectFifoPort.Consume, 1)

                    
        # To/from AIE-array data movement
        @runtime_sequence(full_input_ty, full_input_ty, full_input_ty, full_input_ty)
        def sequence(lmn, mainA, mainB, output):
            npu_dma_memcpy_nd(metadata=of_in_lmn, bd_id=1, mem=lmn, sizes=[1, 1, 1, LMN_SIZE])
            npu_dma_memcpy_nd(metadata=of_in_mainA, bd_id=2, mem=mainA, sizes=[1, 1, 1, FULL_INPUT_SIZE]) # input: mainA
            npu_dma_memcpy_nd(metadata=of_in_mainB, bd_id=3, mem=mainB, sizes=[1, 1, 1, FULL_INPUT_SIZE]) # input: mainB
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