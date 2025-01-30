# section-4/section-4a/aie2.py -*- Python -*-
#
# This file is licensed under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
# (c) Copyright 2024 Advanced Micro Devices, Inc. or its affiliates
import numpy as np
import sys

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

def declaring_kernel_func(tile_ty, scalar_ty, dtype):
    # kernel for vector x scalar
    name0 = "scale_scalar"
    kernel0 = external_func("vector_scalar_mul_aie_scalar", # Name of the function inside the file compiled in the makefile
        inputs=[tile_ty, tile_ty, scalar_ty, dtype],
    )
    # kernel for passthrough (scalar)
    name1 = "passthrough"
    kernel1 = external_func("passthrough",
        inputs=[tile_ty, tile_ty, dtype],
    )
    # kenrel for adding two vectors (scalar)
    name2 = "add_scalar"
    kernel2 = external_func("vector_add_aie_scalar",
        inputs=[tile_ty, tile_ty, tile_ty, dtype],
    )
    # kenrel for adding two vectors (scalar)
    name3 = "mult_scalar"
    kernel3 = external_func("vector_mult_aie_scalar",
        inputs=[tile_ty, tile_ty, tile_ty, dtype],
    )
    # kernel for mean of a vector (scalar)
    name4 = "mean"
    kernel4 = external_func("mean",
        inputs=[tile_ty, scalar_ty, dtype],
    )
    # kernel for the cosing using lut and vectors
    name5 = "cos"
    kernel5 = external_func("cos_float_1024",
        inputs=[tile_ty, tile_ty, dtype],
    )
    return {
        name0: kernel0,
        name1: kernel1,
        name2: kernel2,
        name3: kernel3,
        name4: kernel4,
    }


def loafty():
    # Declaring constant sizes
    ITER_KERNEL = sys.maxsize # This look runs the number of times the kernel is called, so the number of iterations atm
    MSIZE = 9216 # 96x96
    BSIZE = 256*256 # 256X256
    TSIZE = 1024
    ITER_M = 9
    ITER_B = 9
    
    # Declaring basic types
    dtype = np.dtype[np.float32]
    dtype_k = np.int32

    # Device setup
    @device(AIEDevice.npu1_4col)
    def device_body():
        tensor_ty = np.ndarray[(MSIZE,), dtype]
        tensor_ty3 = np.ndarray[(MSIZE*3,), dtype]
        tile_ty = np.ndarray[(TSIZE,), dtype]
        tile_ty3 = np.ndarray[(TSIZE*3,), dtype]
        scalar_ty = np.ndarray[(1,), dtype]
        scalar_ty3 = np.ndarray[(3,), dtype]

        # AIE Core Function declarations
        kernels = declaring_kernel_func(tile_ty, scalar_ty, dtype_k)

        # Tile declarations
        st, mt, ct = declaring_tiles(4, 4)

        # AIE-array data movement with object fifos
        # Inputs
        of_in_factor = object_fifo("in0", st[0], ct[0][1], 2, scalar_ty) # input: factor (2 * pi * f / SL)
        of_in_vis = object_fifo("in1", st[0], ct[1][2], 2, tile_ty) # input: visibilities
        of_in_baselines = object_fifo("in2", st[1], mt[1], 1, tile_ty3) # input: baselines (uvw) # Number of objects needs to be 1 or it doesnt work
        of_in_lmn = object_fifo("in3", st[1], mt[2], 1, scalar_ty3) # input: baseline scale (lmn)
        
        # Distributing baselines
        of_u = object_fifo("u", mt[1], ct[1][0], 2, tile_ty)
        of_v = object_fifo("v", mt[1], ct[2][0], 2, tile_ty)
        of_w = object_fifo("w", mt[1], ct[3][0], 2, tile_ty)
        object_fifo_link(of_in_baselines, [of_u, of_v, of_w], [], [0, TSIZE, TSIZE*2])

        # Distributing baseline scales
        of_l = object_fifo("l", mt[2], ct[1][0], 2, scalar_ty)
        of_m = object_fifo("m", mt[2], ct[2][0], 2, scalar_ty)
        of_n = object_fifo("n", mt[2], ct[3][0], 2, scalar_ty)
        object_fifo_link(of_in_lmn, [of_l, of_m, of_n], [], [0, 1, 2])

        # INTERNAL MOVEMENTS

        # Adding v*m and w*n [A]
        of_addA0 = object_fifo("addA0", ct[2][0], ct[2][1], 2, tile_ty) # from v * m
        of_addA1 = object_fifo("addA1", ct[3][0], ct[2][1], 2, tile_ty) # from w * n
        
        # Adding u*l and A [B]
        of_addB0 = object_fifo("addB0", ct[1][0], ct[1][1], 2, tile_ty) # from u * l
        of_addB1 = object_fifo("addB1", ct[2][1], ct[1][1], 2, tile_ty) # from A

        # Scaling B by factor [C]
        of_scaleC = object_fifo("of_scaleC", ct[1][1], ct[0][1], 2, tile_ty) # from B

        # Applying cosine to C [D]
        of_cosD = object_fifo("of_cosD", ct[0][1], ct[0][2], 2, tile_ty) # from C

        # Multiplying D with the visibilities [E]
        of_multE = object_fifo("of_multE", ct[0][2], ct[1][2], 2, tile_ty) # from D

        # Applying first layer of mean to E [F]
        of_meanF = object_fifo("of_meanF", ct[1][2], ct[2][2], 2, tile_ty) # from E

        # Applying second layer of mean to F [G]
        of_meanG = object_fifo("of_meanG", ct[2][2], ct[3][2], 10, scalar_ty) # from F
        
        # Output
        of_out = object_fifo("out", ct[3][2], st[3], 2, scalar_ty) # from G

        @core(ct[1][0], "scale.o") # Multiplying u * l
        def core_body():
            for _ in range_(ITER_KERNEL):
                l = of_l.acquire(ObjectFifoPort.Consume, 1)
                for _ in range_(ITER_M):
                    u = of_u.acquire(ObjectFifoPort.Consume, 1)
                    elem_out = of_addB0.acquire(ObjectFifoPort.Produce, 1)
                    kernels['scale_scalar'](u, elem_out, l, TSIZE)
                    of_addB0.release(ObjectFifoPort.Produce, 1)
                    of_u.release(ObjectFifoPort.Consume, 1)
                of_l.release(ObjectFifoPort.Consume, 1)
        
        @core(ct[2][0], "scale.o")  # Multiplying v * m
        def core_body():
            for _ in range_(ITER_KERNEL):
                m = of_m.acquire(ObjectFifoPort.Consume, 1)
                for _ in range_(ITER_M):
                    v = of_v.acquire(ObjectFifoPort.Consume, 1)
                    elem_out = of_addA0.acquire(ObjectFifoPort.Produce, 1) # 1024 x 32
                    kernels['scale_scalar'](v, elem_out, m, TSIZE)
                    of_addA0.release(ObjectFifoPort.Produce, 1)
                    of_v.release(ObjectFifoPort.Consume, 1)
                of_m.release(ObjectFifoPort.Consume, 1)

        @core(ct[3][0], "scale.o")  # Multiplying w * n
        def core_body():
            for _ in range_(ITER_KERNEL):
                n = of_n.acquire(ObjectFifoPort.Consume, 1)
                for _ in range_(ITER_M):
                    w = of_w.acquire(ObjectFifoPort.Consume, 1)
                    elem_out = of_addA1.acquire(ObjectFifoPort.Produce, 1)
                    kernels['scale_scalar'](w, elem_out, n, TSIZE)
                    of_addA1.release(ObjectFifoPort.Produce, 1)
                    of_w.release(ObjectFifoPort.Consume, 1)
                of_n.release(ObjectFifoPort.Consume, 1)

        @core(ct[2][1], "vector_add.o")  # Adding (v*m) + (w*n) [A]
        def core_body():
            for _ in range_(ITER_KERNEL):
                for _ in range_(ITER_M):
                    A0 = of_addA0.acquire(ObjectFifoPort.Consume, 1)
                    A1 = of_addA1.acquire(ObjectFifoPort.Consume, 1)
                    add_out = of_addB1.acquire(ObjectFifoPort.Produce, 1)
                    kernels['add_scalar'](A0, A1, add_out, TSIZE)
                    of_addB1.release(ObjectFifoPort.Produce, 1)
                    of_addA0.release(ObjectFifoPort.Consume, 1)
                    of_addA1.release(ObjectFifoPort.Consume, 1)

        @core(ct[1][1], "vector_add.o")  # Adding (u*l) + A [B]
        def core_body():
            for _ in range_(ITER_KERNEL):
                for _ in range_(ITER_M):
                    B0 = of_addB0.acquire(ObjectFifoPort.Consume, 1)
                    B1 = of_addB1.acquire(ObjectFifoPort.Consume, 1)
                    add_out = of_scaleC.acquire(ObjectFifoPort.Produce, 1)
                    kernels['add_scalar'](B0, B1, add_out, TSIZE)
                    of_scaleC.release(ObjectFifoPort.Produce, 1)
                    of_addB0.release(ObjectFifoPort.Consume, 1)
                    of_addB1.release(ObjectFifoPort.Consume, 1)

        @core(ct[0][1], "scale.o") # Multiplying B * factor [C]
        def core_body():
            for _ in range_(ITER_KERNEL):
                factor = of_in_factor.acquire(ObjectFifoPort.Consume, 1)
                for _ in range_(ITER_M):
                    obj_in = of_scaleC.acquire(ObjectFifoPort.Consume, 1)
                    obj_out = of_cosD.acquire(ObjectFifoPort.Produce, 1)
                    kernels['scale_scalar'](obj_in, obj_out, factor, TSIZE)
                    of_cosD.release(ObjectFifoPort.Produce, 1)
                    of_scaleC.release(ObjectFifoPort.Consume, 1)
                of_in_factor.release(ObjectFifoPort.Consume, 1)

        @core(ct[0][2], "passthrough.o") # Applying cosine to C [D] (need to finish implementing cosine)
        def core_body():
            for _ in range_(ITER_KERNEL):
                for _ in range_(ITER_M):
                    obj_in = of_cosD.acquire(ObjectFifoPort.Consume, 1)
                    obj_out = of_multE.acquire(ObjectFifoPort.Produce, 1)
                    kernels['passthrough'](obj_in, obj_out, TSIZE)
                    of_multE.release(ObjectFifoPort.Produce, 1)
                    of_cosD.release(ObjectFifoPort.Consume, 1)

        @core(ct[1][2], "vector_mult.o") # Multiplying D with the visibilities [E]
        def core_body():
            for _ in range_(ITER_KERNEL):
                for _ in range_(ITER_M):
                    obj_in0 = of_multE.acquire(ObjectFifoPort.Consume, 1)
                    obj_in1 = of_in_vis.acquire(ObjectFifoPort.Consume, 1)
                    obj_out = of_meanF.acquire(ObjectFifoPort.Produce, 1)
                    kernels['mult_scalar'](obj_in0, obj_in1, obj_out, TSIZE)
                    of_meanF.release(ObjectFifoPort.Produce, 1)
                    of_multE.release(ObjectFifoPort.Consume, 1)
                    of_in_vis.release(ObjectFifoPort.Consume, 1)

        @core(ct[2][2], "mean.o") 
        def core_body():
            for _ in range_(ITER_KERNEL):
                for _ in range_(ITER_M):
                    mean_in = of_meanF.acquire(ObjectFifoPort.Consume, 1) # object size: 1024
                    mean_out = of_meanG.acquire(ObjectFifoPort.Produce, 1) # object size: 1
                    kernels['mean'](mean_in, mean_out, TSIZE)
                    of_meanG.release(ObjectFifoPort.Produce, 1)
                    of_meanF.release(ObjectFifoPort.Consume, 1)

        @core(ct[3][2], "passthrough.o") 
        def core_body():
            for _ in range_(ITER_KERNEL):
                    mean_in = of_meanG.acquire(ObjectFifoPort.Consume, 9) # object size: 1
                    mean_out = of_out.acquire(ObjectFifoPort.Produce, 1) # object size: 1
                    mean_out[0] = (mean_in[0][0] + mean_in[1][0] + mean_in[2][0] + 
                                   mean_in[3][0] + mean_in[4][0] + mean_in[5][0] + 
                                   mean_in[6][0] + mean_in[7][0] + mean_in[8][0])/9.0
                    of_out.release(ObjectFifoPort.Produce, 1)
                    of_meanG.release(ObjectFifoPort.Consume, 9)
                    
                    
        # To/from AIE-array data movement
        @runtime_sequence(scalar_ty, tensor_ty, tensor_ty3, scalar_ty, tensor_ty)
        def sequence(factor, vis, baselines, lmn, output):
            npu_dma_memcpy_nd(metadata=of_in_factor, bd_id=1, mem=factor, sizes=[1, 1, 1, 1]) # input: factor (2 * pi * f / SL)
            npu_dma_memcpy_nd(metadata=of_in_vis, bd_id=2, mem=vis, sizes=[1, 1, 1, MSIZE]) # input: visibilities
            npu_dma_memcpy_nd(metadata=of_in_baselines, bd_id=3, mem=baselines, sizes=[1, 1, 1, MSIZE*3]) # input: baselines
            npu_dma_memcpy_nd(metadata=of_in_lmn, bd_id=4, mem=lmn, sizes=[1, 1, 1, BSIZE*3]) # input: baseline scales
            npu_dma_memcpy_nd(metadata=of_out, bd_id=0, mem=output, sizes=[1, 1, 1, 1]) # output
            # We know of_out will complete after of_in and of_in_factor, so it is sufficient to just wait for of_out
            dma_wait(of_out)


with mlir_mod_ctx() as ctx:
    loafty()
    res = ctx.module.operation.verify()
    if res == True:
        print(ctx.module)
    else:
        print(res)
