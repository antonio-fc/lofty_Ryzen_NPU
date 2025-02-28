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
import matplotlib.pyplot as plt
import seaborn as sns

import aie.utils.test as test_utils
import aie.utils.trace as trace_utils
from ml_dtypes import bfloat16

def image_reference(visibilities, baselines, freq, npix_l, npix_m):
    SPEED_OF_LIGHT = 299792458.0
    img = np.zeros((npix_l, npix_m), dtype=np.complex128)
    l, m = np.meshgrid(np.linspace(-1, 1, npix_l), np.linspace(1, -1, npix_m))
    n = np.sqrt(1 - l**2 - m**2) - 1

    for l_ix in range(npix_l):
        for m_ix in range(npix_m):
            # image is saved from bottom to top so need to reverse at the end for the NPU implementations
            img[npix_l - l_ix - 1, npix_m - m_ix - 1] = np.mean(
                visibilities
                * np.exp(
                    -2j
                    * np.pi
                    * freq
                    * (
                        baselines[:, :, 0] * l[l_ix, m_ix]
                        + baselines[:, :, 1] * m[l_ix, m_ix]
                        + baselines[:, :, 2] * n[l_ix, m_ix]
                    )
                    / SPEED_OF_LIGHT
                )
            )
    return np.real(img)



def main(opts):
    # Load instruction sequence
    with open(opts.instr, "r") as f:
        instr_text = f.read().split("\n")
        instr_text = [l for l in instr_text if l != ""]
        instr_v = np.array([int(i, 16) for i in instr_text], dtype=np.uint32)

    # ------------------------------------------------------------
    # Configure this to match your design's buffer size and type
    # ------------------------------------------------------------
    MATRIX_DIM_SIZE0 = 96 # size of baselines and vis matrices side (square matrix) 
    MATRIX_DIM_SIZE1 = 256 # size of lmn matrices side (square matrix), as well as size of image frame
    MSIZE = MATRIX_DIM_SIZE0**2 # 96x96
    BSIZE = MATRIX_DIM_SIZE1**2 # 256*256

    CV = 32 # number of consecutive values in output stream
    N_LMN = 3 # one for each l, m and n, just to avoid "magic numbers in code"
    
    INOUT0_VOLUME = int(MSIZE)  
    INOUT1_VOLUME = int(CV*N_LMN) # padding the scalar of the frequency factor to be in the same stream as lmn values
    INOUT2_VOLUME = int(BSIZE)
    INOUT_FACTOR_VOLUME = INOUT1_VOLUME + INOUT2_VOLUME * N_LMN # size of the stream for the lmn values and the frequency factor
    
    NCORES = 6 # for each distribution
    NINPUTS = 5 # u, v, w, real vis and imag vis
    INPUT_VOL = int(MSIZE/2) # split in 2 for each distribution data stream
    FULL_INPUT_VOL = int(INPUT_VOL*NINPUTS)
    OUTPUT_VOL = BSIZE

    DATATYPE = bfloat16
    DTYPE_SIZE = 2 # bfloat16 size in bytes

    INOUT0_SIZE = INOUT0_VOLUME * DTYPE_SIZE
    INOUT1_SIZE = INOUT1_VOLUME * DTYPE_SIZE
    INOUT2_SIZE = INOUT2_VOLUME * DTYPE_SIZE
    FULL_INPUT_SIZE = FULL_INPUT_VOL * DTYPE_SIZE
    INOUT_FACTOR_SIZE = INOUT_FACTOR_VOLUME * DTYPE_SIZE

    OUT_SIZE = OUTPUT_VOL * DTYPE_SIZE
    TRACE_SIZE = int(opts.trace_size)
    do_tracing = TRACE_SIZE > 0

    # ------------------------------------------------------
    # Get device, load the xclbin & kernel and register them
    # ------------------------------------------------------
    (device, kernel) = test_utils.init_xrt_load_kernel(opts)

    # ------------------------------------------------------
    # Initialize input/ output buffer sizes and sync them
    # ------------------------------------------------------
    bo_instr = xrt.bo(device, len(instr_v) * 4, xrt.bo.cacheable, kernel.group_id(1))
    bo_inout0 = xrt.bo(device, INOUT_FACTOR_SIZE, xrt.bo.host_only, kernel.group_id(3)) # factor (-2 pi f / SPEED_OF_LIGHT) + lmn
    bo_inout1 = xrt.bo(device, FULL_INPUT_SIZE, xrt.bo.host_only, kernel.group_id(4)) # main inputs A
    bo_inout2 = xrt.bo(device, FULL_INPUT_SIZE, xrt.bo.host_only, kernel.group_id(5)) # main inputs B
    bo_inout4 = xrt.bo(device, OUT_SIZE, xrt.bo.host_only, kernel.group_id(6))    # output
    if do_tracing:
        bo_trace = xrt.bo(device, TRACE_SIZE, xrt.bo.host_only, kernel.group_id(7))    # trace

    # Initialize instruction buffer
    bo_instr.write(instr_v, 0)

    # Getting the data sim/files
    npy_path = "data/basic"
    baselines = np.load(f"{npy_path}/baselines.npy")
    visibilities = np.load(f"{npy_path}/vis.npy")[0]
    frequency = np.load(f"{npy_path}/freq.npy")

    sns.heatmap(np.real(visibilities), cmap="viridis", annot=False, cbar=True)  # Create heatmap
    plt.savefig("plots/visR.png")  # Save as image
    plt.close()  # Close the plot to free memory

    sns.heatmap(np.imag(visibilities), cmap="viridis", annot=False, cbar=True)  # Create heatmap
    plt.savefig("plots/visC.png")  # Save as image
    plt.close()  # Close the plot to free memory

    sns.heatmap(baselines[:, :, 0], cmap="viridis", annot=False, cbar=True)  # Create heatmap
    plt.savefig("plots/l.png")  # Save as image
    plt.close()  # Close the plot to free memory

    sns.heatmap(baselines[:, :, 1], cmap="viridis", annot=False, cbar=True)  # Create heatmap
    plt.savefig("plots/m.png")  # Save as image
    plt.close()  # Close the plot to free memory

    sns.heatmap(baselines[:, :, 2], cmap="viridis", annot=False, cbar=True)  # Create heatmap
    plt.savefig("plots/n.png")  # Save as image
    plt.close()  # Close the plot to free memory
    

    # Getting/generating input data
    f = frequency[0] # 50MHz
    SL = 299_792_458 # m/s
    factor = -2 * f * math.pi / SL
    inout0 = np.array([factor], dtype=DATATYPE)            # factor (-2 pi f / SPEED_OF_LIGHT)
    inout0 = np.repeat(inout0, INOUT1_VOLUME)
    print("Frequency/Factor Input: ")
    print(f"Frequency: {f/1_000_000}MHz")
    print(f"Factor (-2 pi f / SPEED_OF_LIGHT): {inout0[0]}")

    visR = np.real(visibilities).astype(dtype=DATATYPE).flatten() # np.ones(INOUT0_VOLUME, dtype=DATATYPE)          # vis real
    visRa, visRb = np.split(visR, 2)
    
    visC = np.imag(visibilities).astype(dtype=DATATYPE).flatten() # np.ones(INOUT0_VOLUME, dtype=DATATYPE)          # vis complex
    visCa, visCb = np.split(visC, 2)
    
    u = baselines[:, :, 0].astype(dtype=DATATYPE).flatten() # np.full(INOUT0_VOLUME, 1, dtype=DATATYPE)          # baselines u
    ua, ub = np.split(u, 2)
    
    v = baselines[:, :, 1].astype(dtype=DATATYPE).flatten() # np.full(INOUT0_VOLUME, 1, dtype=DATATYPE)          # baselines v
    va, vb = np.split(v, 2)
    
    w = baselines[:, :, 2].astype(dtype=DATATYPE).flatten() # np.full(INOUT0_VOLUME, 1, dtype=DATATYPE)          # baselines w
    wa, wb = np.split(w, 2)

    inputsA = [visRa, visCa, ua, va, wa]
    inputsB = [visRb, visCb, ub, vb, wb]
    
    inout1 = np.empty((FULL_INPUT_VOL,), dtype=DATATYPE) # 9216 * 5 / 2
    inout1 = inout1.reshape(NINPUTS, INPUT_VOL) # 5, 9216 / 2
    for i in range(NINPUTS):
        inout1[i, :] = inputsA[i]
    print("\nFull Input A: ")
    print(f"VisR: {inout1[0]}, VisC: {inout1[1]}, U: {inout1[2]}, V: {inout1[3]}, W: {inout1[4]}")
    
    inout2 = np.empty((FULL_INPUT_VOL,), dtype=DATATYPE) # 9216 * 5 / 2
    inout2 = inout2.reshape(NINPUTS, INPUT_VOL) # 5, 9216 / 2
    for i in range(NINPUTS):
        inout2[i, :] = inputsB[i]
    print("\nFull Input B: ")
    print(f"VisR: {inout2[0]}, VisC: {inout2[1]}, U: {inout2[2]}, V: {inout2[3]}, W: {inout2[4]}")
    
    
    inout3 = np.empty((INOUT2_VOLUME*N_LMN,), dtype=DATATYPE)     # l, m, n
    # inout3a = np.full(INOUT2_VOLUME, 1.5, dtype=DATATYPE)          # l
    # inout3b = np.full(INOUT2_VOLUME, 0, dtype=DATATYPE)           # m
    # inout3c = np.full(INOUT2_VOLUME, 0, dtype=DATATYPE)            # n
    l, m = np.meshgrid(np.linspace(-1, 1, 256), np.linspace(1, -1, 256))
    n = np.sqrt(1 - l**2 - m**2) - 1
    inout3a = l.flatten().astype(DATATYPE)
    inout3b = m.flatten().astype(DATATYPE)
    inout3c = n.flatten().astype(DATATYPE)
    
    # Values are stored in pairs since the data needs to be sent in chunks of at least 32 bits
    io3x = [inout3a, inout3b, inout3c] # each for l, m and n
    for i in range(len(io3x)):
        for j in range(CV):
            inout3[(i*CV + j)::(len(io3x)*CV)] = io3x[i][j::CV]
    inout_factor = np.concatenate((inout0, inout3))
    print(f"lmn: {inout3.flatten()[:24]}")
    
    inout4 = np.zeros(OUT_SIZE, dtype=np.uint8)                      # output
    trace_zero = np.zeros(TRACE_SIZE, dtype=np.uint8)                # trace
    
    # Initialize data buffers
    if DATATYPE == bfloat16:
        bo_inout0.write(inout_factor.view(np.uint16), 0)
        bo_inout1.write(inout1.view(np.uint16), 0)
        bo_inout2.write(inout2.view(np.uint16), 0)
    else:
        bo_inout0.write(inout_factor, 0)
        bo_inout1.write(inout1, 0)
        bo_inout2.write(inout2, 0)
    bo_inout4.write(inout4, 0)
    if do_tracing:
        bo_trace.write(trace_zero, 0)

    # Sync buffers to update input buffer values
    bo_instr.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout0.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout1.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout2.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout4.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    if do_tracing:
        bo_trace.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)

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
            print(f"Running Kernel ({i}).")
        start = time.time_ns()
        opcode = 3
        if do_tracing:
            h = kernel(opcode, bo_instr, len(instr_v), bo_inout0, bo_inout1, bo_inout2, bo_inout4, bo_trace) # only 4 inputs and 1 output (+ do_tracing)
        else:
            h = kernel(opcode, bo_instr, len(instr_v), bo_inout0, bo_inout1, bo_inout2, bo_inout4)  # only 4 inputs and 1 output
        h.wait()
        stop = time.time_ns()
        bo_inout4.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_FROM_DEVICE)
        if do_tracing:
            bo_trace.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_FROM_DEVICE)

        # Warmup iterations do not count towards average runtime.
        if i < opts.warmup_iters:
            continue

        # Copy output results and verify they are correct
        entire_buffer = bo_inout4.read(OUT_SIZE, 0)
        output_buffer = entire_buffer[:OUT_SIZE].view(DATATYPE)
        
        if do_tracing and i==num_iter-1:
            print("Dumping out trace.")
            trace_buffer = bo_trace.read(TRACE_SIZE, 0).view(np.uint32)

            trace_utils.write_out_trace(trace_buffer, str(opts.trace_file))
        
        # if opts.verify:
        #     if opts.verbosity >= 1:
        #         print("Verifying results ...")
                
        errors = 0
        
        if i == num_iter-1 and opts.verbosity >= 1:
            print("\nOutput:")
            print(output_buffer.shape)
            for x in output_buffer.reshape(MATRIX_DIM_SIZE1, MATRIX_DIM_SIZE1)[::32]:
                print(x)
        
        # outputting image
        if i == num_iter-1:
            output = output_buffer[::-1].reshape(MATRIX_DIM_SIZE1, MATRIX_DIM_SIZE1).astype(np.float64)
            sns.heatmap(output, cmap="viridis", annot=False, cbar=True)  # Create heatmap
            plt.savefig("plots/output.png")  # Save as image
            plt.close()  # Close the plot to free memory

            # img_ref = image_reference(visibilities, baselines, frequency, MATRIX_DIM_SIZE1, MATRIX_DIM_SIZE1)
            # sns.heatmap(img_ref, cmap="viridis", annot=False, cbar=True)  # Create heatmap
            # plt.savefig("plots/ref.png")  # Save as image
            # plt.close()  # Close the plot to free memory


        
        npu_time = stop - start
        npu_time_total = npu_time_total + npu_time
        npu_time_min = min(npu_time_min, npu_time)
        npu_time_max = max(npu_time_max, npu_time)

    # ------------------------------------------------------
    # Print verification and timing results
    # ------------------------------------------------------

    # TODO - Mac count to guide gflops

    print("\nTotal NPU time: {}us.".format(int(npu_time_total / 1000)))
    print("\nAvg NPU time: {}us.".format(int((npu_time_total / opts.iters) / 1000)))
    print("\nMin NPU time: {}us.".format(int((npu_time_min) / 1000)))
    print("\nMax NPU time: {}us.".format(int((npu_time_max) / 1000)))

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
