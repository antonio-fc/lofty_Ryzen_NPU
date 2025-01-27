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


def my_vector_scalar():
    MSIZE = 4096
    TSIZE = 1024
    ITER = 4
    typeT = np.float
    @device(AIEDevice.npu1_1col)
    def device_body():
        tensor_ty = np.ndarray[(MSIZE,), np.dtype[np.int32]]
        tile_ty = np.ndarray[(TSIZE,), np.dtype[np.int32]]
        tile2_ty = np.ndarray[(4,), np.dtype[np.int32]]
        scalar_ty = np.ndarray[(1,), np.dtype[np.int32]]

        # AIE Core Function declarations
        scale_scalar = external_func(
            "vector_scalar_mul_aie_scalar", # Name of the function inside the file compiled in the makefile
            inputs=[tile_ty, tile_ty, scalar_ty, np.int32],
        )
        passthrough = external_func(
            "passthrough",
            inputs=[tile_ty, tile_ty, np.int32],
        )

        mean = external_func(
            "mean",
            inputs=[tile_ty, scalar_ty, np.int32],
        )

        cos = external_func(
            "cos",
            inputs=[tile_ty, tile_ty, np.int]
        )

        # Tile declarations
        n_cols = 1
        n_comp = 1
        st = [] # Shim Tiles
        mt = [] # Memory Tiles (currently not used)
        ct = [] # Compute Tiles
        for i in range(n_cols):
            # Making the shim tiles
            st.append(tile(i, 0))
            # Making compute tiles
            c = []
            for j in range(n_comp):
                c.append(tile(i, j+2))
            ct.append(c)

        # AIE-array data movement with object fifos
        # Inputs from shim 00 to cmptile 00
        of_in = object_fifo("in", st[0], ct[0][0], 2, tile_ty) # inputs 1024 int32
        of_factor = object_fifo("infactor", st[0], ct[0][0], 2, scalar_ty) # inputs 1 int32
        
        # Internal movements
        # Column 0
        
        # Output
        of_out = object_fifo("out", ct[0][0], st[0], 2, tile_ty) # outputs 1 int32

        # Set up compute tiles
        # Compute tile 2
        @core(ct[0][0], "passthrough.o")
        def core_body():
            # Effective while(1)
            for _ in range_(sys.maxsize):
                # Number of sub-vector "tile" iterations
                for _ in range_(ITER):
                    elem_out = of_out.acquire(ObjectFifoPort.Produce, 1)  # acquiring 1 x int32
                    elem_in = of_in.acquire(ObjectFifoPort.Consume, 1) # acquiring 1024 x int32
                    passthrough(elem_in, elem_out, TSIZE)
                    of_in.release(ObjectFifoPort.Consume, 1)
                    of_out.release(ObjectFifoPort.Produce, 1)

        # To/from AIE-array data movement
        @runtime_sequence(tensor_ty, scalar_ty, tensor_ty)
        def sequence(A, F, C):
            npu_dma_memcpy_nd(metadata=of_in, bd_id=1, mem=A, sizes=[1, 1, 1, MSIZE])
            npu_dma_memcpy_nd(metadata=of_factor, bd_id=2, mem=F, sizes=[1, 1, 1, 1])
            npu_dma_memcpy_nd(metadata=of_out, bd_id=0, mem=C, sizes=[1, 1, 1, MSIZE])
            # We know of_out will complete after of_in and of_factor, so it is sufficient to just wait for of_out
            dma_wait(of_out)


with mlir_mod_ctx() as ctx:
    my_vector_scalar()
    res = ctx.module.operation.verify()
    if res == True:
        print(ctx.module)
    else:
        print(res)
