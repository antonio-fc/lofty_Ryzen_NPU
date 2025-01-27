# vector_exp/aie2.py -*- Python -*-
#
# This file is licensed under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
# (c) Copyright 2024 Advanced Micro Devices, Inc. or its affiliates
import numpy as np
from ml_dtypes import bfloat16

from aie.dialects.aie import *  # primary mlir-aie dialect definitions
from aie.extras.context import mlir_mod_ctx  # mlir ctx wrapper

from aie.dialects.aiex import *  # extended mlir-aie dialect definitions
from aie.helpers.dialects.ext.scf import (
    _for as range_,
)  # scf (structured control flow) dialect
from aie.helpers.util import np_ndarray_type_get_shape

import aie.utils.trace as trace_utils

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
    # kernel for the cosing using lut and vectors
    name5 = "cos"
    kernel5 = external_func("cos_float_1024",
        inputs=[tile_ty, tile_ty, np.int32],
    )
    return {
        name0: kernel0,
        name1: kernel1,
        name2: kernel2,
        name3: kernel3,
        name4: kernel4,
    }


# AI Engine structural design function
def loafty():

    N = 9216

    # Tile sizes
    n = 1024
    N_div_n = N // n

    n_cores = 3
    tiles = N_div_n // n_cores
    buffer_depth = 2

    # Device declaration - aie2 device NPU (aka Ryzen AI)
    @device(AIEDevice.npu1_4col)
    def device_body():

        tile_ty = np.ndarray[(n,), np.dtype[bfloat16]]

        # Type used in the tile memory
        A_ty = np.ndarray[(n,), np.dtype[bfloat16]]
        C_ty = np.ndarray[(n,), np.dtype[bfloat16]]

        # Type used in the memory tile which aggregates across the 4 cores
        A_memTile_ty = np.ndarray[(n * n_cores,), np.dtype[bfloat16]]
        C_memTile_ty = np.ndarray[(n * n_cores,), np.dtype[bfloat16]]

        # AIE Core Function declarations

        # exp_bf16_1024 = external_func("exp_bf16_1024", inputs=[tile_ty, tile_ty])

        # Tile declarations
        ShimTile = tile(0, 0)
        ShimTile2 = tile(1, 0)

        MemTile = tile(0, 1)
        MemTile2 = tile(1, 1)
        cores = [tile(0, 2 + i) for i in range(n_cores)]

        inA_fifos = []
        outC_fifos = []

        # AIE-array data movement with object fifos
        # Input A
        inA = object_fifo("inA", ShimTile, MemTile, buffer_depth, A_memTile_ty)
        inF = object_fifo("inF", ShimTile2, MemTile2, buffer_depth, C_memTile_ty)
        for i in range(n_cores):
            inA_fifos.append(
                object_fifo(f"memA{i}", MemTile, cores[i], buffer_depth, A_ty)
            )
        if n_cores > 1:
            of_offsets = [
                (np.prod(np_ndarray_type_get_shape(A_memTile_ty)) // n_cores) * i
                for i in range(n_cores)
            ]
        else:
            of_offsets = []
        object_fifo_link(inA, inA_fifos, [], of_offsets)

        # Output C
        for i in range(n_cores):
            outC_fifos.append(
                object_fifo(f"memC{i}", cores[i], MemTile, buffer_depth, C_ty)
            )
        outC = object_fifo("outC", MemTile, ShimTile, buffer_depth, C_memTile_ty)
        if n_cores > 1:
            of_offsets = [
                (np.prod(np_ndarray_type_get_shape(C_memTile_ty)) // n_cores) * i
                for i in range(n_cores)
            ]
        else:
            of_offsets = []
        object_fifo_link(outC_fifos, outC, of_offsets, [])

        # trace_utils.configure_packet_tracing_aie2(cores, ShimTile, 4096, N * 2)

        # Compute tile bodies
        for i in range(n_cores):
            # Compute tile i
            @core(cores[i])
            def core_body():
                for _ in range_(0xFFFFFFFF):
                    for _ in range_(tiles):
                        elem_out = outC_fifos[i].acquire(ObjectFifoPort.Produce, 1)
                        elem_in_a = inA_fifos[i].acquire(ObjectFifoPort.Consume, 1)

                        for j in range_(1024):
                            elem_out[j] = elem_in_a[j]

                        inA_fifos[i].release(ObjectFifoPort.Consume, 1)
                        outC_fifos[i].release(ObjectFifoPort.Produce, 1)

        # To/from AIE-array data movement
        tensor_ty = np.ndarray[(N,), np.dtype[bfloat16]]

        @runtime_sequence(tensor_ty, tensor_ty, tensor_ty)
        def sequence(F, A, C):
            # trace_utils.configure_packet_tracing_flow(cores, ShimTile)
            npu_dma_memcpy_nd(metadata=inF, bd_id=2, mem=F, sizes=[1, 1, 1, 2])
            npu_dma_memcpy_nd(metadata=inA, bd_id=1, mem=A, sizes=[1, 1, 1, N], issue_token=True)
            npu_dma_memcpy_nd(metadata=outC, bd_id=0, mem=C, sizes=[1, 1, 1, 2])
            dma_wait(outC)


with mlir_mod_ctx() as ctx:
    loafty()
    res = ctx.module.operation.verify()
    if res == True:
        print(ctx.module)
    else:
        print(res)
