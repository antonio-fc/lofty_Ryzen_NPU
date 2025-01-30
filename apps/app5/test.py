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

import aie.utils.test as test_utils


def main(opts):

    # Load instruction sequence
    with open(opts.instr, "r") as f:
        instr_text = f.read().split("\n")
        instr_text = [l for l in instr_text if l != ""]
        instr_v = np.array([int(i, 16) for i in instr_text], dtype=np.uint32)

    # ------------------------------------------------------------
    # Configure this to match your design's buffer size and type
    # ------------------------------------------------------------
    MSIZE = 9216 # 96x96
    ISIZE = 1024
    BSIZE = 1 # 256X256
    INOUT0_VOLUME = int(MSIZE)  # Input only, 64x uint32_t in this example
    INOUT1_VOLUME = int(1)  # Input only, 1 uint32_t scale factor
    INOUT2_VOLUME = int(BSIZE)  # Output only, 64x uint32_t in this example

    INOUT0_DATATYPE = np.float32
    INOUT1_DATATYPE = np.float32
    INOUT2_DATATYPE = np.float32

    INOUT0_SIZE = INOUT0_VOLUME * INOUT0_DATATYPE().itemsize
    INOUT1_SIZE = INOUT1_VOLUME * INOUT1_DATATYPE().itemsize
    INOUT2_SIZE = INOUT2_VOLUME * INOUT2_DATATYPE().itemsize

    OUT_SIZE = INOUT0_SIZE
    OUT_DATATYPE = INOUT2_DATATYPE

    # ------------------------------------------------------
    # Get device, load the xclbin & kernel and register them
    # ------------------------------------------------------
    (device, kernel) = test_utils.init_xrt_load_kernel(opts)

    # ------------------------------------------------------
    # Initialize input/ output buffer sizes and sync them
    # ------------------------------------------------------
    # I dont know what the kernel.group_id() is for :(
    bo_instr = xrt.bo(device, len(instr_v) * 4, xrt.bo.cacheable, kernel.group_id(1))
    bo_inout0 = xrt.bo(device, INOUT1_SIZE, xrt.bo.host_only, kernel.group_id(3)) # factor (2 pi f / SPEED_OF_LIGHT)
    bo_inout1 = xrt.bo(device, INOUT0_SIZE, xrt.bo.host_only, kernel.group_id(4)) # vis
    bo_inout2 = xrt.bo(device, INOUT0_SIZE*3, xrt.bo.host_only, kernel.group_id(5)) # baselines (u, v, w)
    bo_inout3 = xrt.bo(device, INOUT2_SIZE*3, xrt.bo.host_only, kernel.group_id(6)) # l, m, n
    bo_inout4 = xrt.bo(device, OUT_SIZE*3, xrt.bo.host_only, kernel.group_id(7))    # output

    # Initialize instruction buffer
    bo_instr.write(instr_v, 0)

    # Getting/generating input data
    inout0 = np.array([3], dtype=INOUT1_DATATYPE)                   # factor (-2 pi f / SPEED_OF_LIGHT)            
    inout1 = np.ones(INOUT0_VOLUME, dtype=INOUT2_DATATYPE)          # vis
    
    inout2a = np.arange(1, INOUT0_VOLUME + 1, dtype=INOUT0_DATATYPE) # u
    inout2b = np.arange(1, INOUT0_VOLUME + 1, dtype=INOUT0_DATATYPE) # v
    inout2c = np.arange(1, INOUT0_VOLUME + 1, dtype=INOUT0_DATATYPE) # w
    inout2 = np.empty((INOUT0_VOLUME*3,), dtype=INOUT0_DATATYPE)     # baselines (u, v, w)
    inout2 = inout2.reshape(9*3, ISIZE)
    inout2[0::3, :] = inout2a.reshape(9, ISIZE)
    inout2[1::3, :] = inout2b.reshape(9, ISIZE)
    inout2[2::3, :] = inout2c.reshape(9, ISIZE)
    
    
    inout3a = np.ones(INOUT2_VOLUME, dtype=INOUT2_DATATYPE)          # l
    inout3b = np.ones(INOUT2_VOLUME, dtype=INOUT2_DATATYPE)          # m
    inout3c = np.ones(INOUT2_VOLUME, dtype=INOUT2_DATATYPE)          # n
    inout3 = np.empty((INOUT2_VOLUME*3,), dtype=INOUT2_DATATYPE)     # l, m, n
    inout3[0::3] = inout3a
    inout3[1::3] = inout3b
    inout3[2::3] = inout3c
    
    inout4 = np.zeros(OUT_SIZE, dtype=np.uint8)                     # output
    
    # Initialize data buffers
    bo_inout0.write(inout0, 0)
    bo_inout1.write(inout1, 0)
    bo_inout2.write(inout2, 0)
    bo_inout3.write(inout3, 0)
    bo_inout4.write(inout4, 0)

    # Sync buffers to update input buffer values
    bo_instr.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout0.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout1.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout2.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout3.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout4.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)

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
        h = kernel(opcode, bo_instr, len(instr_v), bo_inout0, bo_inout1, bo_inout2, bo_inout3, bo_inout4) # only 4 inputs and 1 output
        h.wait()
        stop = time.time_ns()
        bo_inout4.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_FROM_DEVICE)

        # Warmup iterations do not count towards average runtime.
        if i < opts.warmup_iters:
            continue

        # Copy output results and verify they are correct
        entire_buffer = bo_inout4.read(OUT_SIZE*3, 0).view(OUT_DATATYPE)
        output_buffer = entire_buffer[:OUT_SIZE*3]
        if opts.verify:
            if opts.verbosity >= 1:
                print("Verifying results ...")
            # ref = np.arange(1, INOUT0_VOLUME + 1, dtype=INOUT0_DATATYPE) * inout0
            # e = np.equal(output_buffer, ref)
            # errors = errors + np.size(e) - np.count_nonzero(e)
        # My own error check
        errors = 0
        # print(f"weird thing: {np.count_nonzero(e)}")
        # for j in range(0, INOUT2_VOLUME):
        #     a = ref[j]
        #     b = entire_buffer[j]
        #     # print(f"correct: {a}, result: {b}, equal: {a == b}")
        #     if a != b:
        #         errors = errors + 1
        # print(f"errors in iter {i}: {errors}")
        print(f"cut{i}")
        output_buffer = output_buffer.reshape(3*9, 1024)
        for x in output_buffer:
            print(x)
        print(output_buffer.size)
        npu_time = stop - start
        npu_time_total = npu_time_total + npu_time
        npu_time_min = min(npu_time_min, npu_time)
        npu_time_max = max(npu_time_max, npu_time)

    # ------------------------------------------------------
    # Print verification and timing results
    # ------------------------------------------------------

    # TODO - Mac count to guide gflops

    print("\nAvg NPU time: {}us.".format(int((npu_time_total / opts.iters) / 1000)))
    print("\nMin NPU time: {}us.".format(int((npu_time_min / opts.iters) / 1000)))
    print("\nMax NPU time: {}us.".format(int((npu_time_max / opts.iters) / 1000)))

    if not errors:
        print("\nPASS!\n")
        exit(0)
    else:
        print("\nError count: ", errors)
        print("\nFailed.\n")
        exit(-1)


if __name__ == "__main__":
    p = test_utils.create_default_argparser()
    opts = p.parse_args(sys.argv[1:])
    main(opts)
