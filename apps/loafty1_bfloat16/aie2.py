# section-4/section-4a/aie2.py -*- Python -*-
#
# This file is licensed under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
# (c) Copyright 2024 Advanced Micro Devices, Inc. or its affiliates
import numpy as np
import sys
from ml_dtypes import bfloat16

from aie.dialects.aie import *
from aie.dialects.aiex import *
from aie.helpers.dialects.ext.scf import _for as range_
from aie.extras.context import mlir_mod_ctx

def declaring_kernel_func(tile_ty, dtype):
    # kernel for passthrough (scalar)
    name0 = "passthrough"
    kernel0 = external_func("passthrough",
        inputs=[tile_ty, tile_ty, dtype],
    )
    return {
        name0: kernel0,
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

def loafty():
    # Declaring constant sizes
    ITER_KERNEL = sys.maxsize # This look runs the number of times the kernel is called, so the number of iterations atm
    MSIZE = 9216 # 96x96 # size of a full input
    BSIZE = 256*256 # 256X256 # size of lmn matrices

    NPIXELS = 1
    
    NINPUTS = 5 # number of inputs in a single stream
    COLS = [0, 1]
    ROWS = [1, 2, 3]
    NCOLS = len(COLS)
    NROWS = len(ROWS)
    NCORES = NCOLS * NROWS
    INPUT_SIZE = int(MSIZE/2) # 9216/2 # size of an input per stream
    FULL_INPUT_SIZE = INPUT_SIZE*NINPUTS # 9216*5/2 #
    
    MAIN_SIZE = int(INPUT_SIZE/NCORES) # (9216*5/2)/6
    
    # Declaring basic types
    dtype = np.dtype[bfloat16]
    dtype_k = np.int32

    # Device setup
    @device(AIEDevice.npu1_4col)
    def device_body():
        scalar_ty = np.ndarray[(2,), dtype]
        scalar = np.ndarray[(1,), np.float32]
        input_ty = np.ndarray[(INPUT_SIZE,), dtype]
        full_input_ty = np.ndarray[(FULL_INPUT_SIZE,), dtype]
        main_ct_ty = np.ndarray[(MAIN_SIZE,), dtype]

        # AIE Core Function declarations

        kernels = declaring_kernel_func(main_ct_ty, dtype_k)

        # Tile declarations
        st, mt, ct = declaring_tiles(4, 4)
        
        main_compute_tilesA = []
        main_compute_tilesB = []
        for i in COLS:
            for j in ROWS:
                main_compute_tilesA.append(ct[i][j])
                # main_compute_tilesB.append(ct[i+NCOLS][j])

        # AIE-array data movement with object fifos
        # Inputs
        of_in_factor = object_fifo("in0", st[0], main_compute_tilesA + main_compute_tilesB, 2, scalar_ty)
        of_in_mainA = object_fifo("in1", st[1], mt[1], 1, input_ty)       
        of_in_mainB = object_fifo("in2", st[2], mt[2], 1, input_ty)

        # Distribution of inputs mainA and mainB
        main_in_fifosA = []
        main_in_fifosB = []
        main_dist_offsets = []
        
        for i in COLS:
            for j in ROWS:
                main_in_fifosA.append(object_fifo(f"of_in_mainA{i}{j}", mt[1], ct[i][j], 2, main_ct_ty))
                main_in_fifosB.append(object_fifo(f"of_in_mainB{i+NCOLS}{j}", mt[2], ct[i+NCOLS][j], 2, main_ct_ty))
                main_dist_offsets.append((i*NROWS + j - 1) * MAIN_SIZE)
                
        object_fifo_link(of_in_mainA, main_in_fifosA, [], main_dist_offsets)
        object_fifo_link(of_in_mainB, main_in_fifosB, [], main_dist_offsets)

        # Join of processed inputs mainA and mainB
        main_out_fifosA = []
        main_out_fifosB = []
        main_dist_offsets = []
        
        for i in COLS:
            for j in ROWS:
                main_out_fifosA.append(object_fifo(f"of_out_mainA{i}{j}", ct[i][j], mt[0], 2, main_ct_ty))
                main_out_fifosB.append(object_fifo(f"of_out_mainB{i+NCOLS}{j}", ct[i+NCOLS][j], mt[3], 2, main_ct_ty))
                main_dist_offsets.append((i*NROWS + j - 1) * MAIN_SIZE)

        of_out_mainA = object_fifo("out1", mt[0], st[0], 1, input_ty)
        of_out_mainB = object_fifo("out2", mt[3], st[3], 1, input_ty)
        
        object_fifo_link(main_out_fifosA, of_out_mainA, main_dist_offsets, [])
        object_fifo_link(main_out_fifosB, of_out_mainB, main_dist_offsets, [])

        for i in COLS:
            for j in ROWS:
                index = i*NROWS + j - 1
                # FIFOs for A
                obf_in_fifoA = main_in_fifosA[index]
                obf_out_fifoA = main_out_fifosA[index]

                # FIFOs for B
                obf_in_fifoB = main_in_fifosB[index]
                obf_out_fifoB = main_out_fifosB[index]
                
                @core(ct[i][j], "passthrough.o")  # Main CTs A
                def core_body():
                    for _ in range_(ITER_KERNEL): # this needs to be at least the number of iterations in the test file
                        inputs = obf_in_fifoA.acquire(ObjectFifoPort.Consume, 1)
                        outputs = obf_out_fifoA.acquire(ObjectFifoPort.Produce, 1)
                        kernels['passthrough'](inputs, outputs, MAIN_SIZE)
                        obf_out_fifoA.release(ObjectFifoPort.Produce, 1)
                        obf_in_fifoA.release(ObjectFifoPort.Consume, 1)

                @core(ct[i+NCOLS][j], "passthrough.o")  # Main CTs B
                def core_body():
                    for _ in range_(ITER_KERNEL):
                        inputs = obf_in_fifoB.acquire(ObjectFifoPort.Consume, 1)
                        outputs = obf_out_fifoB.acquire(ObjectFifoPort.Produce, 1)
                        kernels['passthrough'](inputs, outputs, MAIN_SIZE)
                        obf_out_fifoB.release(ObjectFifoPort.Produce, 1)
                        obf_in_fifoB.release(ObjectFifoPort.Consume, 1)

                    
        # To/from AIE-array data movement
        @runtime_sequence(full_input_ty, full_input_ty, full_input_ty, full_input_ty)
        def sequence(factor, mainA, mainB, output):
            npu_dma_memcpy_nd(metadata=of_in_factor, bd_id=1, mem=factor, sizes=[1, 1, 1, 2])
            npu_dma_memcpy_nd(metadata=of_in_mainA, bd_id=2, mem=mainA, sizes=[1, 1, 1, FULL_INPUT_SIZE]) # input: mainA
            npu_dma_memcpy_nd(metadata=of_in_mainB, bd_id=3, mem=mainB, sizes=[1, 1, 1, FULL_INPUT_SIZE]) # input: mainB
            npu_dma_memcpy_nd(metadata=of_out_mainA, bd_id=0, mem=output, sizes=[1, 1, 1, FULL_INPUT_SIZE]) # output
            # We know of_out will complete after of_in and of_in_factor, so it is sufficient to just wait for of_out
            dma_wait(of_out_mainA)


with mlir_mod_ctx() as ctx:
    loafty()
    res = ctx.module.operation.verify()
    if res == True:
        print(ctx.module)
    else:
        print(res)