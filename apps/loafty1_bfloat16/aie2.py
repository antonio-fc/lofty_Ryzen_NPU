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

def declaring_kernel_func(out_ty, factor_ty, tile_ty, join_ty, dtype):
    # kernel for passthrough (scalar)
    name0 = "passthrough"
    kernel0 = external_func("passthrough",
        inputs=[tile_ty, tile_ty, dtype],
    )
    name1 = "mean"
    kernel1 = external_func("mean",
        inputs=[join_ty, join_ty, out_ty, dtype],
    )
    name2 = "main"
    kernel2 = external_func("main_kernel",
        inputs=[bfloat16, factor_ty, tile_ty, tile_ty, tile_ty, tile_ty, tile_ty, out_ty, dtype],
    )
    return {
        name0: kernel0,
        name1: kernel1,
        name2: kernel2,
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
    MATRIX_DIM_SIZE0 = 96 # size of baselines and vis matrices side (square matrix) 
    MATRIX_DIM_SIZE1 = 256 # size of lmn matrices side (square matrix), as well as size of image frame
    MSIZE = MATRIX_DIM_SIZE0**2 # 96x96
    BSIZE = MATRIX_DIM_SIZE1**2 # 256*256 
    OUT_SIZE = 32
    N_LMN = 3 # 3 for l, m and n
    FACTOR_MOVE_SIZE = OUT_SIZE * N_LMN
    FACTOR_SIZE = FACTOR_MOVE_SIZE + BSIZE*N_LMN

    ITERS = BSIZE//OUT_SIZE
    
    NINPUTS = 5 # number of inputs in a single stream
    COLS = [0, 1] # for the second distribution, add 2 to each element to get the other columns
    ROWS = [1, 2, 3]
    NCOLS = len(COLS)
    NROWS = len(ROWS)
    NCORES = NCOLS * NROWS
    INPUT_SIZE = int(MSIZE/2) # 9216/2 # size of an input per stream
    FULL_INPUT_SIZE = INPUT_SIZE*NINPUTS # 9216*5/2 #
    
    MAIN_SIZE = int(INPUT_SIZE/NCORES) # (9216*5/2)/6
    JOIN_SIZE = OUT_SIZE * NCORES
    
    # Declaring basic types
    dtype = np.dtype[bfloat16]
    dtype_k = np.int32

    # Device setup
    @device(AIEDevice.npu1_4col)
    def device_body():
        out_ty = np.ndarray[(OUT_SIZE,), dtype]
        factor_ty = np.ndarray[(FACTOR_MOVE_SIZE,), dtype]
        input_ty = np.ndarray[(INPUT_SIZE,), dtype]
        join_ty = np.ndarray[(JOIN_SIZE,), dtype]
        full_input_ty = np.ndarray[(FULL_INPUT_SIZE,), dtype]
        main_ct_ty = np.ndarray[(MAIN_SIZE,), dtype]

        # AIE Core Function declarations

        kernels = declaring_kernel_func(out_ty, factor_ty, main_ct_ty, join_ty, dtype_k)

        # Tile declarations
        st, mt, ct = declaring_tiles(4, 4)
        
        main_compute_tilesA = []
        main_compute_tilesB = []
        for i in COLS:
            for j in ROWS:
                main_compute_tilesA.append(ct[i][j])
                main_compute_tilesB.append(ct[i+NCOLS][j])

        # AIE-array data movement with object fifos
        # Inputs
        of_in_factorA = object_fifo("in0", st[1], main_compute_tilesA, 2, factor_ty)
        of_in_factorB = object_fifo("in3", st[2], main_compute_tilesB, 2, factor_ty)
        of_in_mainA = object_fifo("in1", st[0], mt[0], 2, input_ty)       
        of_in_mainB = object_fifo("in2", st[3], mt[3], 2, input_ty)

        # Distribution of inputs mainA and mainB
        main_in_fifosA = []
        main_in_fifosB = []
        main_dist_offsets = []
        
        for i in COLS:
            for j in ROWS:
                # Input distribution FIFOs
                main_in_fifosA.append(object_fifo(f"of_in_mainA{i}{j}", mt[0], ct[i][j], 6, main_ct_ty))
                main_in_fifosB.append(object_fifo(f"of_in_mainB{i+NCOLS}{j}", mt[3], ct[i+NCOLS][j], 6, main_ct_ty))
                main_dist_offsets.append((i*NROWS + j - 1) * MAIN_SIZE)
                
        object_fifo_link(of_in_mainA, main_in_fifosA, [], main_dist_offsets)
        object_fifo_link(of_in_mainB, main_in_fifosB, [], main_dist_offsets)

        # Join of processed inputs mainA and mainB
        main_out_fifosA = []
        main_out_fifosB = []
        main_dist_offsets = []
        
        for i in COLS:
            for j in ROWS:
                # Output join FIFOs
                main_out_fifosA.append(object_fifo(f"of_out_mainA{i}{j}", ct[i][j], mt[1], 2, out_ty))
                main_out_fifosB.append(object_fifo(f"of_out_mainB{i+NCOLS}{j}", ct[i+NCOLS][j], mt[2], 2, out_ty))
                main_dist_offsets.append((i*NROWS + j - 1) * OUT_SIZE)

        of_out_mainA = object_fifo("out1", mt[1], ct[1][0], 2, join_ty)
        of_out_mainB = object_fifo("out2", mt[2], ct[1][0], 2, join_ty)
        
        object_fifo_link(main_out_fifosA, of_out_mainA, main_dist_offsets, [])
        object_fifo_link(main_out_fifosB, of_out_mainB, main_dist_offsets, [])

        of_out = object_fifo("out", ct[1][0], st[1], 2, out_ty)

        # Declaring the cores

        @core(ct[1][0], "mean.o")
        def core_body():
            for _ in range_(ITER_KERNEL): # this needs to be at least the number of iterations in the test file
                for _ in range_(ITERS):
                    inputA = of_out_mainA.acquire(ObjectFifoPort.Consume, 1) # OUT_SIZE * NCORES
                    inputB = of_out_mainB.acquire(ObjectFifoPort.Consume, 1) # OUT_SIZE * NCORES
                    output = of_out.acquire(ObjectFifoPort.Produce, 1) # OUT_SIZE
                    kernels['mean'](inputA, inputB, output, OUT_SIZE)
                    of_out.release(ObjectFifoPort.Produce, 1)
                    of_out_mainA.release(ObjectFifoPort.Consume, 1)
                    of_out_mainB.release(ObjectFifoPort.Consume, 1)

        for i in COLS:
            for j in ROWS:
                index = i*NROWS + j - 1
                # FIFOs for A
                obf_in_fifoA = main_in_fifosA[index]
                obf_out_fifoA = main_out_fifosA[index]

                # FIFOs for B
                obf_in_fifoB = main_in_fifosB[index]
                obf_out_fifoB = main_out_fifosB[index]

                # to only declare cores one
                cores = [ct[i][j], ct[i+NCOLS][j]]
                inFIFOs = [obf_in_fifoA, obf_in_fifoB]
                outFIFOs = [obf_out_fifoA, obf_out_fifoB]
                factorFIFOs = [of_in_factorA, of_in_factorB]
                for c in range(2):
                    @core(cores[c], "kernels.a")
                    def core_body():
                        for _ in range_(ITER_KERNEL): # this needs to be at least the number of iterations in the test file
                            freq = factorFIFOs[c].acquire(ObjectFifoPort.Consume, 1)
                            ff = freq[0]
                            factorFIFOs[c].release(ObjectFifoPort.Consume, 1)
                            
                            inputs = inFIFOs[c].acquire(ObjectFifoPort.Consume, 5)
                            for _ in range_(ITERS):
                                factors = factorFIFOs[c].acquire(ObjectFifoPort.Consume, 1)
                                outputs = outFIFOs[c].acquire(ObjectFifoPort.Produce, 1)
                            
                                kernels['main'](ff, factors, inputs[0], inputs[1], inputs[2], inputs[3], inputs[4], outputs, MAIN_SIZE)
    
                                outFIFOs[c].release(ObjectFifoPort.Produce, 1)
                                factorFIFOs[c].release(ObjectFifoPort.Consume, 1)
                            inFIFOs[c].release(ObjectFifoPort.Consume, 5)

                    
        # To/from AIE-array data movement
        @runtime_sequence(full_input_ty, full_input_ty, full_input_ty, full_input_ty, full_input_ty)
        def sequence(factor, factorB, mainA, mainB, output):
            npu_dma_memcpy_nd(metadata=of_in_factorA, bd_id=1, mem=factor, sizes=[1, 1, 1, FACTOR_SIZE])
            npu_dma_memcpy_nd(metadata=of_in_factorB, bd_id=4, mem=factorB, sizes=[1, 1, 1, FACTOR_SIZE])
            npu_dma_memcpy_nd(metadata=of_in_mainA, bd_id=2, mem=mainA, sizes=[1, 1, 1, FULL_INPUT_SIZE]) # input: mainA
            npu_dma_memcpy_nd(metadata=of_in_mainB, bd_id=3, mem=mainB, sizes=[1, 1, 1, FULL_INPUT_SIZE]) # input: mainB
            npu_dma_memcpy_nd(metadata=of_out, bd_id=0, mem=output, sizes=[1, 1, 1, OUT_SIZE*ITERS]) # output (size = BSIZE)
            # We know of_out will complete after of_in and of_in_factor, so it is sufficient to just wait for of_out
            dma_wait(of_out)


with mlir_mod_ctx() as ctx:
    loafty()
    res = ctx.module.operation.verify()
    if res == True:
        print(ctx.module)
    else:
        print(res)