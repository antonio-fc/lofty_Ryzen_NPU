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

# import aie.utils.test as test_utils
import utils.test_utils as test_utils
import aie.utils.trace as trace_utils
from ml_dtypes import bfloat16

def image_reference(visR, visC, u, v, w, freq, npix_l, npix_m, rtype):
    SL = 299_792_458 # m/s
    factor = -2 * freq * math.pi / SL
    img = np.zeros((npix_l, npix_m), dtype=rtype)
    l, m = np.meshgrid(np.linspace(-1, 1, npix_l), np.linspace(1, -1, npix_m))
    n = np.sqrt(1 - l**2 - m**2) - 1
    l, m, n = l.astype(rtype), m.astype(rtype), n.astype(rtype)
    for l_ix in range(npix_l):
        for m_ix in range(npix_m):
            # Scale baselines with l, m and n
            scaleU = u * l[l_ix, m_ix]
            scaleV = v * m[l_ix, m_ix]
            scaleW = w * n[l_ix, m_ix]
            # Add scaled baselines
            blAdd = scaleU + scaleV + scaleW
            # Multiply by frequency factor
            scaleFactor = factor * blAdd
            # Appy sin/cos
            cos = np.cos(scaleFactor)
            sin = np.sin(scaleFactor)
            # Multiply with visibilities
            real = visR * cos
            imag = visC * sin
            # Subtract
            vis_mult = real - imag
            # Get the average
            n_split = 12
            if rtype==bfloat16:
                splits = np.split(vis_mult, n_split)
                results = np.empty(n_split, dtype=rtype)
                for i in range(n_split):
                    results[i] = np.mean(splits[i].astype(np.float32)).astype(bfloat16)
                result = np.mean(results.astype(np.float32)).astype(bfloat16)
            else:
                result = np.mean(vis_mult)
            # Save result
            img[npix_l - l_ix - 1, npix_m - m_ix - 1] = result # image is saved from bottom to top so need to reverse at the end for the NPU implementations
    return img

def image_reference2(visR, visC, u, v, w, freq, npix_l, npix_m, rtype):
    SL = 299_792_458 # m/s
    factor = -2 * freq * math.pi / SL
    img = np.zeros((npix_l, npix_m), dtype=rtype)
    l, m = np.meshgrid(np.linspace(-1, 1, npix_l), np.linspace(1, -1, npix_m))
    n = np.sqrt(1 - l**2 - m**2) - 1
    l, m, n = l.astype(rtype), m.astype(rtype), n.astype(rtype)
    for l_ix in range(npix_l):
        for m_ix in range(npix_m):
            # Scale baselines with l, m and n
            scaleU = u * l[l_ix, m_ix]
            scaleV = v * m[l_ix, m_ix]
            scaleW = w * n[l_ix, m_ix]
            # Add scaled baselines
            blAdd = scaleU + scaleV + scaleW
            # Multiply by frequency factor
            scaleFactor = factor * blAdd
            # Appy sin/cos
            cos = np.cos(scaleFactor)
            sin = np.sin(scaleFactor)
            # Multiply with visibilities
            real = visR * cos
            imag = visC * sin
            # Subtract
            # vis_mult = real - imag
            # Get the average
            if rtype==bfloat16:
                result = np.mean(real.astype(np.float32)) - np.mean(imag.astype(np.float32)) # np.mean(vis_mult.astype(np.float32)).astype(bfloat16)
            else:
                result = np.mean(vis_mult)
            # Save result
            img[npix_l - l_ix - 1, npix_m - m_ix - 1] = result # image is saved from bottom to top so need to reverse at the end for the NPU implementations
    return img

def plot_input_data(visibilities, baselines):
    sns.heatmap(np.real(visibilities), cmap="viridis", annot=False, cbar=True)  # Create heatmap
    plt.savefig("plots/inputs/visR.png")  # Save as image
    plt.close()  # Close the plot to free memory

    sns.heatmap(np.imag(visibilities), cmap="viridis", annot=False, cbar=True)  # Create heatmap
    plt.savefig("plots/inputs/visC.png")  # Save as image
    plt.close()  # Close the plot to free memory

    sns.heatmap(baselines[:, :, 0], cmap="viridis", annot=False, cbar=True)  # Create heatmap
    plt.savefig("plots/inputs/l.png")  # Save as image
    plt.close()  # Close the plot to free memory

    sns.heatmap(baselines[:, :, 1], cmap="viridis", annot=False, cbar=True)  # Create heatmap
    plt.savefig("plots/inputs/m.png")  # Save as image
    plt.close()  # Close the plot to free memory

    sns.heatmap(baselines[:, :, 2], cmap="viridis", annot=False, cbar=True)  # Create heatmap
    plt.savefig("plots/inputs/n.png")  # Save as image
    plt.close()  # Close the plot to free memory

def read_npy_data(path, plot):
    baselines = np.load(f"{path}/baselines.npy")
    visibilities = np.load(f"{path}/vis.npy")[0]
    frequency = np.load(f"{path}/freq.npy")
    if plot:
        plot_input_data(visibilities, baselines)
    return (frequency, visibilities, baselines)

def read_npz_data(path, index, plot):
    files = np.load(path)
    print(files.files)
    times = files['times'] # time stamps
    duration = files['duration']
    subband = files['subband']
    band = files['band']
    antenna_status = files['antenna_status']
    data = files['data'] # visibilities
    station_name = files['station_name']
    antenna_set = files['antenna_set']
    print(data.shape)
    print(data.dtype)

    file = duration
    print(file.shape)
    print(file.dtype)
    print(file)
    return data

def format_input1(freq, vis, blines, IN0_VOL, IN1_VOL, IN2_VOL, N_LMN, NINPUTS, CV, IMG_DIM_SIZE, INPUT_VOL, FULL_INPUT_VOL, OUT_SIZE, TRACE_SIZE, DATATYPE, verbose):
    f = freq[0] # 50MHz
    SL = 299_792_458 # m/s
    factor = -2 * f * math.pi / SL
    inout0 = np.array([factor], dtype=DATATYPE)            # factor (-2 pi f / SPEED_OF_LIGHT)
    inout0 = np.repeat(inout0, IN1_VOL)

    visR = np.real(vis).astype(dtype=DATATYPE).flatten()         # vis real
    visRa, visRb = np.split(visR, 2)
    
    visC = np.imag(vis).astype(dtype=DATATYPE).flatten()         # vis complex
    visCa, visCb = np.split(visC, 2)
    
    u = blines[:, :, 0].astype(dtype=DATATYPE).flatten()         # baselines u
    ua, ub = np.split(u, 2)
    
    v = blines[:, :, 1].astype(dtype=DATATYPE).flatten()         # baselines v
    va, vb = np.split(v, 2)
    
    w = blines[:, :, 2].astype(dtype=DATATYPE).flatten()         # baselines w
    wa, wb = np.split(w, 2)

    inputsA = [visRa, visCa, ua, va, wa]
    inputsB = [visRb, visCb, ub, vb, wb]
    inputs = [inputsA, inputsB]
    main_inputs = [np.empty((FULL_INPUT_VOL,), dtype=DATATYPE), np.empty((FULL_INPUT_VOL,), dtype=DATATYPE)] # 9216 * 5 / 2 each

    # Formatting the main input
    for m in range(2):
        main_inputs[m] = main_inputs[m].reshape(NINPUTS, INPUT_VOL) # 5, 9216 / 2
        for i in range(NINPUTS):
            main_inputs[m][i, :] = inputs[m][i]
    
    
    inout3 = np.empty((IN2_VOL*N_LMN,), dtype=DATATYPE)     # l, m, n
    l, m = np.meshgrid(np.linspace(-1, 1, IMG_DIM_SIZE), np.linspace(1, -1, IMG_DIM_SIZE))
    n = np.sqrt(1 - l**2 - m**2) - 1
    nan_mask = np.isnan(n)
    inout3a = l.flatten().astype(DATATYPE)
    inout3b = m.flatten().astype(DATATYPE)
    inout3c = n.flatten().astype(DATATYPE)
    
    # Values are stored in pairs since the data needs to be sent in chunks of at least 32 bits
    io3x = [inout3a, inout3b, inout3c] # each for l, m and n
    for i in range(len(io3x)):
        for j in range(CV):
            inout3[(i*CV + j)::(len(io3x)*CV)] = io3x[i][j::CV]
    inout_factor = np.concatenate((inout0, inout3))
    
    out_zero = np.zeros(OUT_SIZE, dtype=np.uint8)                      # output
    trace_zero = np.zeros(TRACE_SIZE, dtype=np.uint8)                # trace

    if verbose:
        print("Frequency/Factor Input: ")
        print(f"Frequency: {f/1_000_000}MHz")
        print(f"Factor (-2 pi f / SPEED_OF_LIGHT): {inout0[0]}")
        
        print("\nFull Input A: ")
        print(f"VisR: {main_inputs[0][0]}, VisC: {main_inputs[0][1]}, U: {main_inputs[0][2]}, V: {main_inputs[0][3]}, W: {main_inputs[0][4]}")
        print("\nFull Input B: ")
        print(f"VisR: {main_inputs[1][0]}, VisC: {main_inputs[1][1]}, U: {main_inputs[1][2]}, V: {main_inputs[1][3]}, W: {main_inputs[1][4]}")

        print(f"lmn: {inout3.flatten()[:24]}")
    
    return (inout_factor, main_inputs[0], main_inputs[1], out_zero, trace_zero, nan_mask)

def main(opts):
    # Load instruction sequence
    with open(opts.instr, "r") as f:
        instr_text = f.read().split("\n")
        instr_text = [l for l in instr_text if l != ""]
        instr_v = np.array([int(i, 16) for i in instr_text], dtype=np.uint32)

    # ------------------------------------------------------------
    # Configure this to match your design's buffer size and type
    # ------------------------------------------------------------
    MATRIX_DIM_SIZE0 = opts.anten # size of baselines and vis matrices side (square matrix) which corresponds to the number of antennas
    MATRIX_DIM_SIZE1 = opts.imgsz # size of lmn matrices side (square matrix), as well as size of image frame
    MSIZE = MATRIX_DIM_SIZE0**2 # 96x96
    BSIZE = MATRIX_DIM_SIZE1**2 # 256*256

    CV = 32 # number of consecutive values in output stream
    N_LMN = 3 # one for each l, m and n, just to avoid "magic numbers in code"
    
    INOUT0_VOLUME = MSIZE
    INOUT1_VOLUME = CV*N_LMN # padding the scalar of the frequency factor to be in the same stream as lmn values
    INOUT2_VOLUME = BSIZE
    INOUT_FACTOR_VOLUME = INOUT1_VOLUME + INOUT2_VOLUME * N_LMN # size of the stream for the lmn values and the frequency factor
    
    NCORES = 6 # for each distribution
    NINPUTS = 5 # u, v, w, real vis and imag vis
    NDISTGROUP = 2 # number of ct groups for distribution
    
    INPUT_VOL = MSIZE//NDISTGROUP # split in 2 for each distribution data stream
    FULL_INPUT_VOL = INPUT_VOL*NINPUTS
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
    npy_path = "data/npy/set0"
    frequency, visibilities, baselines = read_npy_data(path=npy_path, plot=False)

    # npz_path = "data/npz/input1.npz"
    # input_set = 0
    # inputs = read_npz_data(npz_path, input_set, False)

    # Formatting input data
    inout_factor, main_inputsA, main_inputsB, out_zero, trace_zero, nan_mask = format_input1(frequency, visibilities, baselines,
                                                                                   INOUT0_VOLUME, INOUT1_VOLUME, INOUT2_VOLUME,
                                                                                   N_LMN, NINPUTS, CV, MATRIX_DIM_SIZE1,
                                                                                   INPUT_VOL, FULL_INPUT_VOL,
                                                                                   OUT_SIZE, TRACE_SIZE,
                                                                                   DATATYPE, False)
    
    # Initialize data buffers
    if DATATYPE == bfloat16:
        bo_inout0.write(inout_factor.view(np.uint16), 0)
        bo_inout1.write(main_inputsA.view(np.uint16), 0)
        bo_inout2.write(main_inputsB.view(np.uint16), 0)
    else:
        bo_inout0.write(inout_factor, 0)
        bo_inout1.write(main_inputsA, 0)
        bo_inout2.write(main_inputsB, 0)
    bo_inout4.write(out_zero, 0)
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
    npu_time_min = 9999999999999999
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
            h = kernel(opcode, bo_instr, len(instr_v), bo_inout0, bo_inout1, bo_inout2, bo_inout4, bo_trace) # only 4 inputs and 1 output (+ tracing)
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

        # Copy output results
        entire_buffer = bo_inout4.read(OUT_SIZE, 0)
        output_buffer = entire_buffer[:OUT_SIZE].view(DATATYPE)
        
        if do_tracing and i==num_iter-1:
            print("Dumping out trace.")
            trace_buffer = bo_trace.read(TRACE_SIZE, 0).view(np.uint32)

            trace_utils.write_out_trace(trace_buffer, str(opts.trace_file))

        # Writing out unformatted output
        if i == num_iter-1 and opts.verbosity >= 1:
            print("\nOutput:")
            print(output_buffer.shape)
            for x in output_buffer.reshape(MATRIX_DIM_SIZE1, MATRIX_DIM_SIZE1)[::32]:
                print(x)
        
        # outputting image
        if i == num_iter-1:
            # Formatting output for plotting
            output_raw = output_buffer[::-1].reshape(MATRIX_DIM_SIZE1, MATRIX_DIM_SIZE1).astype(np.float64)
            output = np.select([~nan_mask], [output_raw], np.nan)

            # Generating reference values
            rtype = bfloat16
            img_ref = image_reference2(np.real(visibilities).astype(dtype=rtype),
                                      np.imag(visibilities).astype(dtype=rtype),
                                      baselines[:, :, 0].astype(dtype=rtype),
                                      baselines[:, :, 1].astype(dtype=rtype),
                                      baselines[:, :, 2].astype(dtype=rtype),
                                      frequency.astype(dtype=rtype),
                                      MATRIX_DIM_SIZE1,
                                      MATRIX_DIM_SIZE1,
                                      rtype).astype(np.float64)

            # Plotting and Analysis
            cmap_coolwarm = sns.color_palette("coolwarm", as_cmap=True)
            # print(output.flatten()[256*100:256*100+10])
            sns.heatmap(output, cmap="viridis", annot=False, cbar=True)  # Create heatmap
            plt.savefig("plots/images/output_py.png")  # Save as image
            plt.close()  # Close the plot to free memory
            
            # print(img_ref.flatten()[256*100:256*100+10])
            sns.heatmap(img_ref, cmap="viridis", annot=False, cbar=True)  # Create heatmap
            plt.savefig("plots/images/ref.png")  # Save as image
            plt.close()  # Close the plot to free memory

            n_bins = 32768

            print()
            # value historgrams
            aa = output.flatten()[~np.isnan(output.flatten())]
            aa_nan = np.count_nonzero(np.isnan(output))
            aa_max = np.max(aa)
            aa_min = np.min(aa)
            aa_range = aa_max - aa_min
            print(f"[NPU Output] Max: {aa_max}, Min: {aa_min}, Nr.NaN: {aa_nan}, RangeSz: {aa_range}")
            plt.hist(aa, n_bins)
            plt.axvline(x=aa_max, color='red', linestyle='--', linewidth=2, label="Max")
            plt.axvline(x=aa_min, color='red', linestyle='--', linewidth=2, label="Min")
            # plt.ylim(0, 2_048_000/n_bins)
            plt.savefig(f"plots/histograms/output_hist{n_bins}.png")  # Save as image
            plt.close()  # Close the plot to free memory

            bb = img_ref.flatten()[~np.isnan(img_ref.flatten())]
            bb_nan = np.count_nonzero(np.isnan(img_ref))
            bb_max = np.max(bb)
            bb_min = np.min(bb)
            bb_range = bb_max - bb_min
            print(f"[Numpy Reference] Max: {bb_max}, Min: {bb_min}, Nr.NaN: {bb_nan}, RangeSz: {bb_range}")
            plt.hist(bb, n_bins)
            plt.axvline(x=bb_max, color='red', linestyle='--', linewidth=2, label="Max")
            plt.axvline(x=bb_min, color='red', linestyle='--', linewidth=2, label="Min")
            # plt.ylim(0, 2500)
            plt.savefig(f"plots/histograms/ref_hist{n_bins}.png")  # Save as image
            plt.close()  # Close the plot to free memory

            sns.heatmap(np.abs(img_ref - output), cmap="viridis", annot=False, cbar=True)  # Create heatmap
            plt.savefig("plots/images/diff.png")  # Save as image
            plt.close() 

            diff = aa - bb
            diff_mean = np.mean(np.abs(diff))
            diff_max = np.max(np.abs(diff))
            diff_min = np.min(np.abs(diff))
            print(f"[Error] Avg Diff: {diff_mean}, Max Diff: {diff_max}, Min Diff: {diff_min}, Max Diff(numpy%): {diff_max/bb_range*100}%, Avg Diff(numpy%): {diff_mean/bb_range*100}%")
        
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


if __name__ == "__main__":
    p = test_utils.create_default_argparser()
    opts = p.parse_args(sys.argv[1:])
    main(opts)