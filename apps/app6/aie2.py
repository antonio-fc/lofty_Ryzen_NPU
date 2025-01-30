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

def declaring_kernel_func(tile_ty, scalar_ty):
    # kernel for vector x scalar
    name0 = "scale_scalar"
    kernel0 = external_func("vector_scalar_mul_aie_scalar", # Name of the function inside the file compiled in the makefile
        inputs=[tile_ty, tile_ty, scalar_ty, np.int32],
    )
    # kernel for passthrough (scalar)
    name1 = "passthrough"
    kernel1 = external_func("passthrough",
        inputs=[tile_ty, tile_ty, np.int32],
    )
    # kenrel for adding two vectors (scalar)
    name2 = "add_scalar"
    kernel2 = external_func("vector_add_aie_scalar",
        inputs=[tile_ty, tile_ty, tile_ty, np.int32],
    )
    # kenrel for adding two vectors (scalar)
    name3 = "mult_scalar"
    kernel3 = external_func("vector_mult_aie_scalar",
        inputs=[tile_ty, tile_ty, tile_ty, np.int32],
    )
    # kernel for mean of a vector (scalar)
    name4 = "mean"
    kernel4 = external_func("mean",
        inputs=[tile_ty, scalar_ty, np.int32],
    )
    return {
        name0: kernel0,
        name1: kernel1,
        name2: kernel2,
        name3: kernel3,
        name4: kernel4,
    }


def loafty():
    ITER_KERNEL = sys.maxsize # This look runs the number of times the kernel is called, so the number of iterations atm
    MSIZE = 9216 # 96x96
    BSIZE = 9216*3 # 256X256
    TSIZE = 1024
    ITER_M = 9
    ITER_B = 9
    @device(AIEDevice.npu1_4col)
    def device_body():
        tensor_ty = np.ndarray[(MSIZE,), np.dtype[np.float32]]
        tensor_ty3 = np.ndarray[(BSIZE,), np.dtype[np.float32]]
        tile_ty = np.ndarray[(TSIZE,), np.dtype[np.float32]]
        tile_ty3 = np.ndarray[(TSIZE*3,), np.dtype[np.float32]]
        mean_ty = np.ndarray[(9,), np.dtype[np.float32]]
        mean_ty2 = np.ndarray[(18,), np.dtype[np.float32]]
        scalar_ty = np.ndarray[(1,), np.dtype[np.float32]]

        # AIE Core Function declarations
        kernels = declaring_kernel_func(tile_ty, scalar_ty)

        # Tile declarations
        st, mt, ct = declaring_tiles(4, 4)

        # AIE-array data movement with object fifos
        # Inputs
        # Column 0 (ct[0][0])
        of_in_factor = object_fifo("in0", st[0], ct[2][2], 2, scalar_ty) # input: factor (2 * pi * f / SL)
        of_in_vis = object_fifo("in1", st[0], ct[1][1], 2, tile_ty) # input: visibilities
        # Column 1 (ct[1][0])
        of_in_baselines = object_fifo("in2", st[1], mt[1], 3, tile_ty3) # input: u (baselines)
        # Distributing baselines
        # of_gg = object_fifo("gg", mt[1], ct[1][0], 2, tile_ty)
        of_hh = object_fifo("hh", mt[1], ct[2][0], 2, tile_ty)
        of_kk = object_fifo("kk", mt[1], ct[3][0], 2, tile_ty)
        # object_fifo_link(of_in_baselines, [of_gg, of_hh, of_kk], [], [0, TSIZE, TSIZE*2])
        of_in_l = object_fifo("in3", st[1], ct[1][0], 2, scalar_ty) # input: l (baseline scale)
        
        # Internal movements
        # # S1 = add w*n, v*m (ct[3][1])
        # of_c20toc31 = object_fifo("of_c20toc21", ct[2][0], ct[3][1], 2, tile_ty)
        # of_c30toc31 = object_fifo("of_c30toc21", ct[3][0], ct[3][1], 2, tile_ty)
        # # # S2 = add S1, u*l (ct[2][1])
        # of_c10toc21 = object_fifo("of_c10toc11", ct[1][0], ct[2][1], 2, tile_ty)
        # of_c31toc21 = object_fifo("of_c21toc11", ct[3][1], ct[2][1], 2, tile_ty)
        # # F = factor * S2 (ct[2][2])
        #     # input of the factor
        # of_c21toc22 = object_fifo("of_c21toc22", ct[2][1], ct[2][2], 2, tile_ty)
        # # C = cos F  (ct[1][2])
        # of_c22toc12 = object_fifo("of_c22toc12", ct[2][2], ct[1][2], 2, tile_ty)
        # # MU = vis * C (ct[1][1])
        #     # input of the visibilities
        # of_c12toc11 = object_fifo("of_c12toc11", ct[1][2], ct[1][1], 2, tile_ty)
        # # M1 = mean MU (ct[0][2])
        # ofc11toc02 = object_fifo("ofc11toc02", ct[1][1], ct[0][2], 2, tile_ty)
        # # M2 = mean M1 (ct[0][1])
        # ofc02toc01 = object_fifo("ofc02toc01", ct[0][2], ct[0][1], 2, scalar_ty)
        # M3 = mean M2 (ct[0][0])
        
        # Output
        of_out = object_fifo("out", mt[1], st[1], 2, tile_ty)
        # object_fifo_link(of_in_baselines, [of_out], [], [0])
        object_fifo_link(of_in_baselines, [of_kk, of_out, of_hh], [], [0, TSIZE, TSIZE*2])

        @core(ct[2][0])
        def core_body():
            # Effective while(1)
            for _ in range_(ITER_KERNEL):
                of_hh.acquire(ObjectFifoPort.Consume, 1)
                of_hh.release(ObjectFifoPort.Consume, 1)

        @core(ct[3][0])
        def core_body():
            # Effective while(1)
            for _ in range_(ITER_KERNEL):
                of_kk.acquire(ObjectFifoPort.Consume, 1)
                of_kk.release(ObjectFifoPort.Consume, 1)

        # Set up compute tiles        
        # @core(ct[1][0], "scale.o") # This is scale of u with l
        # def core_body():
        #     # Effective while(1)
        #     for _ in range_(ITER_KERNEL):
        #         l = of_in_l.acquire(ObjectFifoPort.Consume, 1)
        #         # Number of sub-vector "tile" iterations
        #         for _ in range_(ITER_M):
        #             u_out = of_out.acquire(ObjectFifoPort.Produce, 1)
        #             u_in = of_gg.acquire(ObjectFifoPort.Consume, 1)
        #             kernels['scale_scalar'](u_in, u_out, l, TSIZE)
        #             of_gg.release(ObjectFifoPort.Consume, 1)
        #             of_out.release(ObjectFifoPort.Produce, 1)
        #         of_in_l.release(ObjectFifoPort.Consume, 1)

        # @core(ct[2][1], "passthrough.o") # should be add
        # def core_body():
        #     # Effective while(1)
        #     for _ in range_(ITER_KERNEL):
        #         # Number of sub-vector "tile" iterations
        #         for _ in range_(ITER_M):
        #             # cant use 'of_c31toc21' yet cause of the input limit rn, so just passthrough for now instead of add
        #             out_ = of_c21toc22.acquire(ObjectFifoPort.Produce, 1)
        #             in_ = of_c10toc21.acquire(ObjectFifoPort.Consume, 1)
        #             kernels['passthrough'](in_, out_, TSIZE)
        #             of_c10toc21.release(ObjectFifoPort.Consume, 1)
        #             of_c21toc22.release(ObjectFifoPort.Produce, 1)

        # @core(ct[2][2], "scale.o") # This is the scale of the factor to the add of the scaled baselines
        # def core_body():
        #     # Effective while(1)
        #     for _ in range_(ITER_KERNEL):
        #         factor = of_in_factor.acquire(ObjectFifoPort.Consume, 1) # The one represents an object of size TSIZE
        #         # Number of sub-vector "tile" iterations
        #         for _ in range_(ITER_M):
        #             sum_out = of_c22toc12.acquire(ObjectFifoPort.Produce, 1)
        #             sum_in = of_c21toc22.acquire(ObjectFifoPort.Consume, 1)
        #             kernels['scale_scalar'](sum_in, sum_out, factor, TSIZE)
        #             of_c21toc22.release(ObjectFifoPort.Consume, 1)
        #             of_c22toc12.release(ObjectFifoPort.Produce, 1)
        #         of_in_factor.release(ObjectFifoPort.Consume, 1)

        # @core(ct[1][2], "passthrough.o") # should be the cos operation
        # def core_body():
        #     # Effective while(1)
        #     for _ in range_(ITER_KERNEL):
        #         # Number of sub-vector "tile" iterations
        #         for _ in range_(ITER_M):
        #             # using passthrough until learn how to use LUT
        #             cos_out = of_c12toc11.acquire(ObjectFifoPort.Produce, 1)
        #             cos_in = of_c22toc12.acquire(ObjectFifoPort.Consume, 1)
        #             kernels['passthrough'](cos_in, cos_out, TSIZE)
        #             of_c22toc12.release(ObjectFifoPort.Consume, 1)
        #             of_c12toc11.release(ObjectFifoPort.Produce, 1)

        # @core(ct[1][1], "vector_mult.o") # This is the elementwise mult of the cos result with the visibilities
        # def core_body():
        #     # Effective while(1)
        #     for _ in range_(ITER_KERNEL):
        #         # Number of sub-vector "tile" iterations
        #         for _ in range_(ITER_M):
        #             mult_out = of_out.acquire(ObjectFifoPort.Produce, 1)
        #             mult_in1 = of_in_vis.acquire(ObjectFifoPort.Consume, 1)
        #             mult_in2 = of_c12toc11.acquire(ObjectFifoPort.Consume, 1)
        #             kernels['mult_scalar'](mult_in1, mult_in2, mult_out, TSIZE)
        #             of_in_vis.release(ObjectFifoPort.Consume, 1)
        #             of_c12toc11.release(ObjectFifoPort.Consume, 1)
        #             of_out.release(ObjectFifoPort.Produce, 1)

        # @core(ct[0][2], "mean.o") 
        # def core_body():
        #     # Effective while(1)
        #     for _ in range_(ITER_KERNEL):
        #         # Number of sub-vector "tile" iterations
        #         for _ in range_(ITER_M): # 9 times
        #             mean_out = of_out.acquire(ObjectFifoPort.Produce, 1) # object size: 1
        #             mean_in = ofc11toc02.acquire(ObjectFifoPort.Consume, 1) # object size: 1024
        #             kernels['mean'](mean_in, mean_out, TSIZE)
        #             ofc11toc02.release(ObjectFifoPort.Consume, 1)
        #             of_out.release(ObjectFifoPort.Produce, 1)

        # @core(ct[0][1], "passthrough.o") 
        # def core_body():
        #     # Effective while(1)
        #     for _ in range_(ITER_KERNEL):
        #         for _ in range_(9):
        #             # Number of sub-vector "tile" iterations
        #             mean_out = of_out.acquire(ObjectFifoPort.Produce, 1) # size 1/9
        #             mean_in = ofc02toc01.acquire(ObjectFifoPort.Consume, 1) # size 1/9
        #             kernels['passthrough'](mean_in, mean_out, 1)
        #             ofc02toc01.release(ObjectFifoPort.Consume, 1)
        #             of_out.release(ObjectFifoPort.Produce, 1)

        # To/from AIE-array data movement
        @runtime_sequence(scalar_ty, tensor_ty, tensor_ty3, scalar_ty, tensor_ty)
        def sequence(factor, vis, u, l, output):
            npu_dma_memcpy_nd(metadata=of_in_factor, bd_id=1, mem=factor, sizes=[1, 1, 1, 1]) # input: factor (2 * pi * f / SL)
            npu_dma_memcpy_nd(metadata=of_in_vis, bd_id=2, mem=vis, sizes=[1, 1, 1, MSIZE]) # input: visibilities
            npu_dma_memcpy_nd(metadata=of_in_baselines, bd_id=3, mem=u, sizes=[1, 1, 1, BSIZE]) # input: u (baselines)
            npu_dma_memcpy_nd(metadata=of_in_l, bd_id=4, mem=l, sizes=[1, 1, 1, 2]) # input: l (baseline scale)
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
