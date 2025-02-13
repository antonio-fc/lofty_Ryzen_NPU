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

def declaring_tiles(n_cols, n_comp):
    st = [] # Shim Tiles
    mt = [] # Memory Tiles (currently not used)
    ct = [] # Compute Tiles
    for i in range(n_cols):
        # Making the shim tiles
        st.append(tile(i, 0))
        mt.append(tile(i, 1))
        # Making compute tiles
        c = []
        for j in range(n_comp):
            c.append(tile(i, j+2))
        ct.append(c)
    return (st, mt, ct)

def declaring_kernel_func(tile_ty, scalar_ty, scalar, dtype):
    # kernel for vector x scalar
    name0 = "scale"
    kernel0 = external_func("vector_scale", # Name of the function inside the file compiled in the makefile
        inputs=[tile_ty, tile_ty, scalar_ty, dtype],
    )
    # kernel for passthrough (scalar)
    name1 = "passthrough"
    kernel1 = external_func("passthrough",
        inputs=[tile_ty, tile_ty, dtype],
    )
    # kenrel for adding two vectors (scalar)
    name2 = "add"
    kernel2 = external_func("vector_add",
        inputs=[tile_ty, tile_ty, tile_ty, dtype],
    )
    # kenrel for adding two vectors (scalar)
    name3 = "mult"
    kernel3 = external_func("vector_mult",
        inputs=[tile_ty, tile_ty, tile_ty, dtype],
    )
    # kernel for mean of a vector (scalar)
    name4 = "mean"
    kernel4 = external_func("mean",
        inputs=[tile_ty, scalar_ty, dtype, dtype],
    )
    # kernel for the cosine using lut and vectors
    name5 = "sin"
    kernel5 = external_func("sin_float_1024",
        inputs=[tile_ty, tile_ty, dtype],
    )
    # kernel for the cosine using lut and vectors
    name6 = "cos"
    kernel6 = external_func("cos_float_1024",
        inputs=[tile_ty, tile_ty, dtype],
    )
    # kenrel for adding two vectors (scalar)
    name7 = "sub"
    kernel7 = external_func("vector_sub",
        inputs=[tile_ty, tile_ty, tile_ty, dtype],
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
    }


def loafty():
    # Declaring constant sizes
    ITER_KERNEL = sys.maxsize # This look runs the number of times the kernel is called, so the number of iterations atm
    MSIZE = 9216 # 96x96
    BSIZE = 256*256 # 256X256
    TSIZE = 1024
    NINPUTS = 5
    COLS = [0, 1]
    ROWS = [1, 2, 3]
    NCOLS = len(COLS)
    NROWS = len(ROWS)
    NCORES = NCOLS * NROWS
    INPUT_SIZE = int(MSIZE/2) # 9216/2
    FULL_INPUT_SIZE = INPUT_SIZE*NINPUTS # 9216*5/2
    
    MAIN_SIZE = int(FULL_INPUT_SIZE/NCORES) # (9216*5/2)/6
    
    # Declaring basic types
    dtype = np.dtype[bfloat16]
    dtype_k = np.int32

    # Device setup
    @device(AIEDevice.npu1_4col)
    def device_body():
        tile_ty = np.ndarray[(TSIZE,), dtype]
        scalar_ty = np.ndarray[(2,), dtype]
        scalar = np.ndarray[(1,), np.float32]
        full_input_ty = np.ndarray[(FULL_INPUT_SIZE,), dtype]
        main_ct_ty = np.ndarray[(MAIN_SIZE,), dtype]

        # AIE Core Function declarations
        kernels = declaring_kernel_func(tile_ty, scalar_ty, scalar, dtype_k)

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
        of_in_factor = object_fifo("in0", st[0], main_compute_tilesA + main_compute_tilesB, NCORES*2+1, scalar_ty)
        of_in_mainA = object_fifo("in1", st[1], mt[1], 1, full_input_ty)       
        of_in_mainB = object_fifo("in2", st[2], mt[2], 1, full_input_ty)

        # Distribution of inputs mainA and mainB
        main_in_fifosA = []
        main_in_fifosB = []
        main_dist_offsets = []
        
        for i in COLS:
            for j in ROWS:
                main_in_fifosA.append(object_fifo(f"of_in_mainA{i}{j}", mt[1], ct[i][j], 2, main_ct_ty))
                # main_in_fifosB.append(object_fifo(f"of_in_mainB{i+NCOLS}{j}", mt[2], ct[i+NCOLS][j], 2, main_ct_ty))
                main_dist_offsets.append((i*NROWS + j - 1) * MAIN_SIZE)
                
        object_fifo_link(of_in_mainA, main_in_fifosA, [], main_dist_offsets)
        # object_fifo_link(of_in_mainB, main_in_fifosB, [], main_dist_offsets)

        # Join of processed inputs mainA and mainB
        main_out_fifosA = []
        main_out_fifosB = []
        main_dist_offsets = []
        
        for i in COLS:
            for j in ROWS:
                main_out_fifosA.append(object_fifo(f"of_out_mainA{i}{j}", ct[i][j], mt[3], 2, main_ct_ty))
                # main_out_fifosB.append(object_fifo(f"of_out_mainB{i+NCOLS}{j}", mt[2], ct[i+NCOLS][j], 2, main_ct_ty))
                main_dist_offsets.append((i*NROWS + j - 1) * MAIN_SIZE)

        of_out_mainA = object_fifo("out1", mt[3], ct[2][0], 1, full_input_ty)      
        
        object_fifo_link(main_out_fifosA, of_out_mainA, main_dist_offsets, [])
        # object_fifo_link(main_out_fifosB, of_out_mainB, main_dist_offsets, [])
        
        # Output
        of_out = object_fifo("out", ct[3][0], st[3], 2, tile_ty)

        @core(ct[3][0], "passthrough.o")
        def core_body():
            for _ in range_(ITER_KERNEL):
                mean_out = of_out.acquire(ObjectFifoPort.Produce, 1) # object size: 2
                
                of_out.release(ObjectFifoPort.Produce, 1)

        for i in COLS:
            for j in ROWS:
                obf_fifoA = main_in_fifosA[i*NROWS + j - 1]
                # obf_fifoB = main_in_fifosB[i*NROWS + j - 1]
                @core(ct[i][j], "passthrough.o")  # Main CTs A
                def core_body():
                    for _ in range_(ITER_KERNEL):
                        inputs = obf_fifoA.acquire(ObjectFifoPort.Consume, 1)
                        
                        obf_fifoA.release(ObjectFifoPort.Consume, 1)

                # @core(ct[i+NCOLS][j], "passthrough.o")  # Main CTs B
                # def core_body():
                #     for _ in range_(ITER_KERNEL):
                #         inputs = obf_fifoB.acquire(ObjectFifoPort.Consume, 1)
                        
                #         obf_fifoB.release(ObjectFifoPort.Consume, 1)

                    
        # To/from AIE-array data movement
        @runtime_sequence(full_input_ty, full_input_ty, full_input_ty, full_input_ty)
        def sequence(factor, mainA, mainB, output):
            npu_dma_memcpy_nd(metadata=of_in_factor, bd_id=1, mem=factor, sizes=[1, 1, 1, 2])
            npu_dma_memcpy_nd(metadata=of_in_mainA, bd_id=2, mem=mainA, sizes=[1, 1, 1, FULL_INPUT_SIZE]) # input: mainA
            npu_dma_memcpy_nd(metadata=of_in_mainB, bd_id=3, mem=mainB, sizes=[1, 1, 1, FULL_INPUT_SIZE]) # input: mainB
            npu_dma_memcpy_nd(metadata=of_out, bd_id=0, mem=output, sizes=[1, 1, 1, 2]) # output
            # We know of_out will complete after of_in and of_in_factor, so it is sufficient to just wait for of_out
            dma_wait(of_out)


with mlir_mod_ctx() as ctx:
    loafty()
    res = ctx.module.operation.verify()
    if res == True:
        print(ctx.module)
    else:
        print(res)
