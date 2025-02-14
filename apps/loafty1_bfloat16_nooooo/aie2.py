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
from aie.helpers.util import np_ndarray_type_get_shape
import aie.utils.trace as trace_utils

def declaring_kernel_func(tile_ty, dtype):
    # kernel for passthrough (scalar)
    name0 = "passthrough"
    kernel0 = external_func("passthrough",
        inputs=[tile_ty, tile_ty, dtype],
    )
    return {
        name0: kernel0,
    }

def shim_tile(n):
    if n in range(4):
     return tile(n, 0)
    else:
        raise Exception("Shim tile declared is beyond index range")

def mem_tile(n):
    if n in range(4):
     return tile(n, 1)
    else:
        raise Exception("Mem tile declared is beyond index range")

def comp_tile(col, row):
    if col in range(4) and row in range(4):
        return tile(col+2, row+2)
    else:
        raise Exception("Compute tile declared is beyond index range")

def loafty():
    ITER_KERNEL = sys.maxsize # This look runs the number of times the kernel is called, so the number of iterations atm
    
    INPUT_VOLUME = 96*96 # total size of an input
    NINPUTS = 5 # number of inputs
    N = INPUT_VOLUME*NINPUTS//2 # total input size of a single data stream (inputs are split in two data streams)
    n_cores = 6 # number of compute tiles to distribute a single data stream
    tile_objs = NINPUTS # number of data objects to be distributed to the compute tiles
    n = N//(tile_objs*n_cores) # amout of data per object fifo acquire
    mem_n = n * n_cores
    buffer_depth = 2
    cols = [0, 1]
    rows = [0, 1, 2]
    

    # Device declaration - aie2 device NPU (aka Ryzen AI)
    @device(AIEDevice.npu1_4col)
    def device_body():

        tile_ty = np.ndarray[(n,), np.dtype[bfloat16]]

        # Type used in the tile memory
        A_ty = np.ndarray[(n,), np.dtype[bfloat16]]
        C_ty = np.ndarray[(n,), np.dtype[bfloat16]]

        # Type used in the memory tile which aggregates across the 4 coresA
        A_memTile_ty = np.ndarray[(mem_n,), np.dtype[bfloat16]]
        C_memTile_ty = np.ndarray[(mem_n,), np.dtype[bfloat16]]

        # AIE Core Function declarations

        kernels = declaring_kernel_func(A_ty, bfloat16)

        # Tile declarations
        ShimTileInA = shim_tile(0)
        MemTileInA = mem_tile(0)
        
        ShimTileOutA = shim_tile(1)
        MemTileOutA = mem_tile(1)
        
        coresA = []
        for i in cols:
            for j in rows:
                coresA.append(comp_tile(i, j))

        inA_fifos = []
        outC_fifos = []
        
        # AIE-array data movement with object fifos
        # Input A
        inA = object_fifo("inA", ShimTileInA, MemTileInA, buffer_depth, A_memTile_ty)
        for i in cols:
            for j in rows:
                index = i*len(rows) + j
                inA_fifos.append(
                    object_fifo(f"memA{index}", MemTileInA, coresA[index], buffer_depth, A_ty)
                )
        of_offsets = [n * i for i in range(n_cores)]
        object_fifo_link(inA, inA_fifos, [], of_offsets)
        
        # Output C
        for i in cols:
            for j in rows:
                index = i*len(rows) + j
                outC_fifos.append(
                    object_fifo(f"memC{index}", coresA[index], MemTileOutA, buffer_depth, C_ty)
                )
        outC = object_fifo("outC", MemTileOutA, ShimTileOutA, buffer_depth, C_memTile_ty)
        of_offsets = [n * i for i in range(n_cores)]
        object_fifo_link(outC_fifos, outC, of_offsets, [])
        
        # Compute tile bodies
        for i in range(n_cores):
            # Compute tile i
            out_fifoA = outC_fifos[i]
            in_fifoA = inA_fifos[i]
            @core(coresA[i], "passthrough.o")
            def core_body():
                for _ in range_(ITER_KERNEL): 
                    for _ in range_(tile_objs):
                        elem_out = out_fifoA.acquire(ObjectFifoPort.Produce, 1)
                        elem_in = in_fifoA.acquire(ObjectFifoPort.Consume, 1)
    
                        # kernels['passthrough'](elem_in, elem_out, n)
                        for x in range_(n):
                            elem_out[x] = elem_in[x]
    
                        in_fifoA.release(ObjectFifoPort.Consume, 1)
                        out_fifoA.release(ObjectFifoPort.Produce, 1)

        # To/from AIE-array data movement
        tensor_ty = np.ndarray[(N,), np.dtype[bfloat16]]

        @runtime_sequence(tensor_ty, tensor_ty, tensor_ty)
        def sequence(A, B, C):
            npu_dma_memcpy_nd(metadata=inA, bd_id=1, mem=A, sizes=[1, 1, 1, N], issue_token=True)
            npu_dma_memcpy_nd(metadata=outC, bd_id=0, mem=C, sizes=[1, 1, 1, N])
            dma_wait(inA, outC)




with mlir_mod_ctx() as ctx:
    loafty()
    res = ctx.module.operation.verify()
    if res == True:
        print(ctx.module)
    else:
        print(res)
