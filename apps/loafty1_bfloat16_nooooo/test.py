# test.py -*- Python -*-
#
# This file is licensed under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
# (c) Copyright 2024 Advanced Micro Devices, Inc. or its affiliates

import numpy as np
import pyxrt as xrt
import sys
import time
import math

import aie.utils.test as test_utils
import aie.utils.trace as trace_utils
from aie.utils.xrt import setup_aie, write_out_trace, execute
from ml_dtypes import bfloat16


def main(opts):

    # Load instruction sequence
    with open(opts.instr, "r") as f:
        instr_text = f.read().split("\n")
        instr_text = [l for l in instr_text if l != ""]
        instr_v = np.array([int(i, 16) for i in instr_text], dtype=np.uint32)

    # ------------------------------------------------------------
    # Configure this to match your design's buffer size and type
    # ------------------------------------------------------------
    INPUT0_VOLUME = 2 # 1 frequency but fbloat16 needs to be in pairs
    INPUT1_VOLUME = 256*256 # size for matrices l,m, and n
    INPUT2_VOLUME = 96*96 # size for vis (Real and Complex each), u, v and w
    
    NINPUTS = 5 # the number of inputs of size INPUT2_VOLUME
    MAIN_INPUT_VOLUME = INPUT2_VOLUME*NINPUTS//2 # SIZE OF THE 2 MAIN INPUT STREAMS (cached)
    SCALAR_INPUT_VOLUME = INPUT0_VOLUME + INPUT1_VOLUME
    OUTPUT_VOLUME = MAIN_INPUT_VOLUME

    DTYPE = bfloat16
    
    MAIN_INPUT_SIZE = MAIN_INPUT_VOLUME * 2
    SCALAR_INPUT_SIZE = SCALAR_INPUT_VOLUME * 2
    OUT_SIZE = OUTPUT_VOLUME * 2

    # ------------------------------------------------------
    # Get device, load the xclbin & kernel and register them
    # ------------------------------------------------------
    (device, kernel) = test_utils.init_xrt_load_kernel(opts)

    # ------------------------------------------------------
    # Initialize input/ output buffer sizes and sync them
    # ------------------------------------------------------
    bo_instr = xrt.bo(device, len(instr_v) * 4, xrt.bo.cacheable, kernel.group_id(1))
    bo_inout0 = xrt.bo(device, MAIN_INPUT_SIZE, xrt.bo.host_only, kernel.group_id(3))
    bo_inout1 = xrt.bo(device, SCALAR_INPUT_SIZE, xrt.bo.host_only, kernel.group_id(4))
    bo_inout2 = xrt.bo(device, OUT_SIZE, xrt.bo.host_only, kernel.group_id(5))

    # Initialize instruction buffer
    bo_instr.write(instr_v, 0)

    # Getting/generating input data
    f = 50_000_000 # 50MHz
    SL = 299_792_458 # m/s
    factor = -2 * f * math.pi / SL
    # inout0 = np.array([factor, 1], dtype=INOUT1_DATATYPE)               # factor (-2 pi f / SPEED_OF_LIGHT)
    # print("Frequency/Factor Input: ")
    # print(f"Frequency: {f/1_000_000}MHz")
    # print(f"Factor (-2 pi f / SPEED_OF_LIGHT): {inout0[0]}")

    visR = np.zeros(INPUT2_VOLUME, dtype=DTYPE)         # vis real
    visRa, visRb = np.split(visR, 2)
    visRb = visRb + 0.5
    
    visC = np.ones(INPUT2_VOLUME, dtype=DTYPE)          # vis complex
    visCa, visCb = np.split(visC, 2)
    visCb = visCb + 0.5
    
    u = np.full(INPUT2_VOLUME, 2, dtype=DTYPE)          # baselines u
    ua, ub = np.split(u, 2)
    ub = ub + 0.5
    
    v = np.full(INPUT2_VOLUME, 3, dtype=DTYPE)          # baselines v
    va, vb = np.split(v, 2)
    vb = vb + 0.5
    
    w = np.full(INPUT2_VOLUME, 4, dtype=DTYPE)          # baselines w
    wa, wb = np.split(w, 2)
    wb = wb + 0.5

    # Formatting input data for application kernel
    inout0 = np.empty(MAIN_INPUT_VOLUME, dtype=DTYPE)
    inout0 = inout0.reshape(NINPUTS, INPUT2_VOLUME//2) # 5, 9216 / 2
    inputs0 = [visRa, visCa, ua, va, wa]
    for i in range(NINPUTS):
        inout0[i, :] = inputs0[i]
    print("\nFull Input A: ")
    print(f"VisR: {inout0[0]}, VisC: {inout0[1]}, U: {inout0[2]}, V: {inout0[3]}, W: {inout0[4]}")

    inout1 = np.empty(MAIN_INPUT_VOLUME, dtype=DTYPE)
    inout1 = inout1.reshape(NINPUTS, INPUT2_VOLUME//2) # 5, 9216 / 2
    inputs1 = [visRb, visCb, ub, vb, wb]
    for i in range(NINPUTS):
        inout1[i, :] = inputs1[i]
    print("\nFull Input B: ")
    print(f"VisR: {inout1[0]}, VisC: {inout1[1]}, U: {inout1[2]}, V: {inout1[3]}, W: {inout1[4]}")
    

    inout2 = np.zeros(OUT_SIZE, dtype=np.uint8)

    # Initialize data buffers
    bo_inout0.write(inout0.view(np.uint16), 0) # view is necessary because there is an error otherwise (doesnt recognize the type for some reason)
    bo_inout1.write(inout1.view(np.uint16), 0)
    bo_inout2.write(inout2, 0)

    # Sync buffers to update input buffer values
    bo_instr.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout0.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout1.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    
    # ------------------------------------------------------
    # Initialize run configs
    # ------------------------------------------------------
    num_iter = opts.iters + opts.warmup_iters
    npu_time_total = 0
    npu_time_min = 9999999
    npu_time_max = 0
    errors = 0

    # ------------------------------------------------------
    # Main run loop
    # ------------------------------------------------------
    for i in range(num_iter):
        # Run kernel
        if opts.verbosity >= 1:
            print("Running Kernel.")
        start = time.time_ns()
        opcode = 3
        h = kernel(opcode, bo_instr, len(instr_v), bo_inout0, bo_inout1, bo_inout2) # only 1 input and 1 output
        h.wait()
        stop = time.time_ns()
        bo_inout2.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_FROM_DEVICE)

        # Warmup iterations do not count towards average runtime.
        # if i < opts.warmup_iters:
        #     continue
    
        # Copy output results and verify they are correct
        entire_buffer = bo_inout2.read(OUT_SIZE, 0).view(bfloat16)
        output_buffer = entire_buffer[:OUTPUT_VOLUME]
        if opts.verify:
            if opts.verbosity >= 1:
                print("Verifying results ...")

        # Printing results    
        for x in output_buffer.reshape(5, INPUT2_VOLUME//2):
            print(x)

        # Calculating executione times
        npu_time = stop - start
        npu_time_total = npu_time_total + npu_time
        npu_time_min = min(npu_time_min, npu_time)
        npu_time_max = max(npu_time_max, npu_time)
    
        
    # ------------------------------------------------------
    # Print verification and timing results
    # ------------------------------------------------------
    print("\nAvg NPU time: {}us.".format(int((npu_time_total) / 1000)))
    print("\nMin NPU time: {}us.".format(int((npu_time_min) / 1000)))
    print("\nMax NPU time: {}us.".format(int((npu_time_max) / 1000)))


if __name__ == "__main__":
    p = test_utils.create_default_argparser()
    opts = p.parse_args(sys.argv[1:])
    main(opts)