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
    ITER_M = 9*2
    ITER_B = 9
    
    # Declaring basic types
    dtype = np.dtype[bfloat16]
    dtype_k = np.int32

    # Device setup
    @device(AIEDevice.npu1_4col)
    def device_body():
        tensor_ty = np.ndarray[(MSIZE,), dtype]
        tensor_ty3 = np.ndarray[(MSIZE*3,), dtype]
        tile_ty = np.ndarray[(TSIZE,), dtype]
        tile_ty2 = np.ndarray[(TSIZE*2,), dtype]
        tile_ty3 = np.ndarray[(TSIZE*3,), dtype]
        scalar_ty = np.ndarray[(2,), dtype]
        scalar = np.ndarray[(1,), np.float32]
        scalar_ty3 = np.ndarray[(6,), dtype]

        # AIE Core Function declarations
        kernels = declaring_kernel_func(tile_ty, scalar_ty, scalar, dtype_k)

        # Tile declarations
        st, mt, ct = declaring_tiles(4, 4)

        # AIE-array data movement with object fifos
        # Inputs
        main_compute_tiles = []
        for i in range(3):
            for j in range(4):
                main_compute_tiles.append(ct[i][j])
        of_in_factor = object_fifo("in0", st[0], main_compute_tiles, 2, scalar_ty) # input: factor (2 * pi * f / SL)
        of_in_vis = object_fifo("in1", st[3], ct[3][0], 2, tile_ty)         # input: visibilities        
        of_in_baselines = object_fifo("in2", st[1], main_compute_tiles, 2, tile_ty)  # input: baselines (uvw) # Number of objects needs to be 1 or it doesnt work
        of_in_lmn = object_fifo("in3", st[1], mt[2], 2, scalar_ty3)      # input: baseline scale (lmn)

        
        # Distributing baselines
        # of_u = object_fifo("u", mt[1], ct[0][0], 2, tile_ty)
        # of_v = object_fifo("v", st[1], ct[1][0], 2, tile_ty)
        # of_w = object_fifo("w", mt[1], ct[2][0], 2, tile_ty)
        # object_fifo_link(of_in_baselines, [of_u, of_v, of_w], [], [0, TSIZE, TSIZE*2])
        # of_u.set_repeat_count(2)
        # of_v.set_repeat_count(2)
        # of_w.set_repeat_count(2)
        # of01 = object_fifo("of01", ct[3][0], ct[0][1], 2, tile_ty)
        # of02 = object_fifo("of02", ct[3][0], ct[0][2], 2, tile_ty)
        # of03 = object_fifo("of03", ct[3][0], ct[0][3], 2, tile_ty)

        # of11 = object_fifo("of11", ct[3][0], ct[1][1], 2, tile_ty)
        
        # Output
        of_out = object_fifo("out", ct[3][0], st[3], 2, tile_ty) # from G

        @core(ct[3][0], "passthrough.o") # Multiplying u * l
        def core_body():
            for _ in range_(ITER_KERNEL):
                for _ in range_(ITER_M):
                    vis = of_in_vis.acquire(ObjectFifoPort.Consume, 1)
                    out = of_out.acquire(ObjectFifoPort.Produce, 1)
                    kernels['passthrough'](vis, out, TSIZE)
                    of_out.release(ObjectFifoPort.Produce, 1)
                    of_in_vis.release(ObjectFifoPort.Consume, 1)

        for i in range(3):
            for j in range(4):
                @core(ct[i][j], "passthrough.o")  # Multiplying w * n
                def core_body():
                    for _ in range_(ITER_KERNEL):
                        for _ in range_(ITER_M):
                            w = of_in_baselines.acquire(ObjectFifoPort.Consume, 1)
                            of_in_baselines.release(ObjectFifoPort.Consume, 1)


        
                



                    
        # To/from AIE-array data movement
        @runtime_sequence(scalar_ty, tensor_ty, tensor_ty3, scalar_ty, tensor_ty)
        def sequence(factor, vis, baselines, lmn, output):
            npu_dma_memcpy_nd(metadata=of_in_factor, bd_id=1, mem=factor, sizes=[1, 1, 1, 2]) # input: factor (2 * pi * f / SL)
            npu_dma_memcpy_nd(metadata=of_in_vis, bd_id=2, mem=vis, sizes=[1, 1, 1, MSIZE*2]) # input: visibilities
            npu_dma_memcpy_nd(metadata=of_in_baselines, bd_id=3, mem=baselines, sizes=[1, 1, 1, MSIZE*3]) # input: baselines
            npu_dma_memcpy_nd(metadata=of_in_lmn, bd_id=4, mem=lmn, sizes=[1, 1, 1, BSIZE*3]) # input: baseline scales
            npu_dma_memcpy_nd(metadata=of_out, bd_id=0, mem=output, sizes=[1, 1, 1, MSIZE]) # output
            # We know of_out will complete after of_in and of_in_factor, so it is sufficient to just wait for of_out
            dma_wait(of_out)


with mlir_mod_ctx() as ctx:
    loafty()
    res = ctx.module.operation.verify()
    if res == True:
        print(ctx.module)
    else:
        print(res)
