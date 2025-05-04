import numpy as np
import pyxrt as xrt
import sys
import time
import math
import matplotlib.pyplot as plt
import seaborn as sns
import os

# import aie.utils.test as test_utils
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..', 'utils'))) # changing the import path to apps/utils
import test_utils
import aie.utils.trace as trace_utils
from ml_dtypes import bfloat16

def image_reference(visR, visC, u, v, w, freq, npix_l, npix_m, rtype):
    SL = 299_792_458 # m/s
    factor = -2 * freq * math.pi / SL
    img = np.zeros((npix_l, npix_m), dtype=rtype)
    l, m = np.meshgrid(np.linspace(-1, 1, npix_l), np.linspace(1, -1, npix_m))
    n = np.sqrt(1 - l**2 - m**2) - 1
    nan_mask = np.isnan(n)
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

            diff = real - imag
            
            if rtype==bfloat16:
                result = np.mean(diff.astype(np.float32)).astype(bfloat16)
            else:
                result = np.mean(diff)
            # Save result
            nan_val = nan_mask[npix_l - l_ix - 1, npix_m - m_ix - 1]
            img[npix_l - l_ix - 1, npix_m - m_ix - 1] = result if not nan_val else np.nan  # image is saved from bottom to top so need to reverse at the end for the NPU implementations
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
    # print(data.shape)
    # print(data.dtype)

    file = duration
    # print(file.shape)
    # print(file.dtype)
    # print(file)
    return data

def format_input0(freq, vis, blines, N_LMN, CV, IMG_DIM_SIZE, OUT_SIZE, TRACE_SIZE, NCHANNELS, DATATYPE, verbose):
    IMG_VOL = IMG_DIM_SIZE**2
    # Formatting the frequency to rads
    f = freq[0] # 50MHz
    SL = 299_792_458 # m/s
    factor = -2 * f * math.pi / SL
    inout0 = np.array([factor, factor], dtype=DATATYPE)            # factor (-2 pi f / SPEED_OF_LIGHT)
    
    # Formatting main inputs (baselines and visibilities)
    visR = np.real(vis).astype(dtype=DATATYPE).flatten()         # vis real
    visRa, visRb = np.split(visR, NCHANNELS)
    
    visC = np.imag(vis).astype(dtype=DATATYPE).flatten()         # vis complex
    visCa, visCb = np.split(visC, NCHANNELS)
    
    u = blines[:, :, 0].astype(dtype=DATATYPE).flatten()         # baselines u
    ua, ub = np.split(u, NCHANNELS)
    
    v = blines[:, :, 1].astype(dtype=DATATYPE).flatten()         # baselines v
    va, vb = np.split(v, NCHANNELS)
    
    w = blines[:, :, 2].astype(dtype=DATATYPE).flatten()         # baselines w
    wa, wb = np.split(w, NCHANNELS)

    # Formatting the baselines input
    inputsBaseLines_A = [ua, va, wa]
    inputsBaseLines_B = [ub, vb, wb]    
    inputsBaseLines = np.concatenate([np.concatenate(inputsBaseLines_A), np.concatenate(inputsBaseLines_B)]).reshape(2, 3, 4608) # (9216/2) * 3 * 2 (4608 * 3 * 2 = 27648) each to then be distributed

    # Formatting the visibilities
    inputsVis_A = [visRa, visCa]
    inputsVis_B = [visRb, visCb]
    inputsVis = np.concatenate([np.concatenate(inputsVis_A), np.concatenate(inputsVis_B)]).reshape(2, 2, 4608) # (9216/2) * 2 * 2 (4608 * 2 * 2 = 18432) each to then be distributed

    # Formatting lmn
    inout3 = np.empty((IMG_VOL*N_LMN), dtype=DATATYPE)     # l, m, n
    l, m = np.meshgrid(np.linspace(-1, 1, IMG_DIM_SIZE), np.linspace(1, -1, IMG_DIM_SIZE))
    n = np.sqrt(1 - l**2 - m**2) - 1
    nan_mask = np.isnan(n)
    inout3a = l.flatten().astype(DATATYPE)
    inout3b = m.flatten().astype(DATATYPE)
    inout3c = n.flatten().astype(DATATYPE)
    
    # Values are stored in chunks of CV, alternating for l, m and n
    io3x = [inout3a, inout3b, inout3c] # each for l, m and n
    for i in range(len(io3x)):
        for j in range(CV):
            inout3[(i*CV + j)::(len(io3x)*CV)] = io3x[i][j::CV]
    inout3 = inout3.reshape(IMG_VOL//CV, N_LMN, CV)

    # Output buffers
    out_zero = np.zeros(OUT_SIZE, dtype=np.uint8)                    # output
    trace_zero = np.zeros(TRACE_SIZE, dtype=np.uint8)                # trace

    if verbose:
        print("Frequency/Factor Input: ")
        print(f"Frequency: {f/1_000_000}MHz")
        print(f"Factor (-2 pi f / SPEED_OF_LIGHT): {inout0[0]}")
        
        print("\nFull Baselines: ")
        print(f"uA: {inputsBaseLines[0][0]}, vA: {inputsBaseLines[0][1]}, wA: {inputsBaseLines[0][2]}, uB: {inputsBaseLines[1][0]}, vB: {inputsBaseLines[1][1]}, wB: {inputsBaseLines[1][2]}")
        print("\nFull Vis: ")
        print(f"VisRA: {inputsVis[0][0]}, VisCA: {inputsVis[0][1]}, visRB: {inputsVis[1][0]}, VisCB: {inputsVis[1][1]}")

        print("\nLMN Input: ")
        print(f"l0: {inout3[10][0]}")
        print(f"m0: {inout3[10][1]}")
        print(f"n0: {inout3[10][2]}")
    
    return (inout0, inputsBaseLines, inputsVis, inout3, out_zero, trace_zero, nan_mask)

def main(opts):
    # Load instruction sequence
    with open(opts.instr, "rb") as f:
        instr_bin = f.read()
        instr_v = np.array([i for i in instr_bin], dtype=np.uint8)

    # ------------------------------------------------------------
    # Configure this to match your design's buffer size and type
    # ------------------------------------------------------------
    MATRIX_DIM_SIZE0 = opts.anten # size of baselines and vis matrices side (square matrix) which corresponds to the number of antennas
    MATRIX_DIM_SIZE1 = opts.imgsz # size of lmn matrices side (square matrix), as well as size of image frame
    MSIZE = MATRIX_DIM_SIZE0**2 # 96x96
    BSIZE = MATRIX_DIM_SIZE1**2 # 256*256

    DATATYPE = bfloat16
    DTYPE_SIZE = 2 # bfloat16 size in bytes

    CV = 32 # number of consecutive values in output stream
    N_LMN = 3 # one for each l, m and n, just to avoid "magic numbers in code"
    NCHANNELS = 2 # number of ct groups for distribution
    
    FREQ_VOL = 2 # minimum size for input given bfloat16
    BASELINES_VOLUME = MSIZE * 3
    VIS_VOLUME = MSIZE * 2
    INOUT2_VOLUME = BSIZE
    INOUT_LMN_VOLUME = INOUT2_VOLUME * N_LMN # size of the stream for the lmn values and the frequency factor
    OUTPUT_VOL = BSIZE

    FREQ_SIZE = FREQ_VOL * DTYPE_SIZE
    BASELINES_SIZE = BASELINES_VOLUME * DTYPE_SIZE
    VIS_SIZE = VIS_VOLUME * DTYPE_SIZE
    INOUT_LMN_SIZE = INOUT_LMN_VOLUME * DTYPE_SIZE

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
    bo_instr = xrt.bo(device, len(instr_v), xrt.bo.cacheable, kernel.group_id(1))
    bo_inout0 = xrt.bo(device, FREQ_SIZE, xrt.bo.host_only, kernel.group_id(3)) # factor (-2 pi f / SPEED_OF_LIGHT) + lmn
    bo_inout1 = xrt.bo(device, BASELINES_SIZE, xrt.bo.host_only, kernel.group_id(4)) # main inputs A
    bo_inout2 = xrt.bo(device, VIS_SIZE, xrt.bo.host_only, kernel.group_id(5)) # main inputs B
    bo_inout3 = xrt.bo(device, INOUT_LMN_SIZE, xrt.bo.host_only, kernel.group_id(6)) # main inputs B
    bo_inout4 = xrt.bo(device, OUT_SIZE, xrt.bo.host_only, kernel.group_id(7))    # output
    if do_tracing:
        bo_trace = xrt.bo(device, TRACE_SIZE, xrt.bo.host_only, kernel.group_id(8))    # trace

    # Initialize instruction buffer
    bo_instr.write(instr_v, 0)

    # Getting the data sim/files
    npy_path = "data/npy/set0"
    frequency, visibilities, baselines = read_npy_data(path=npy_path, plot=False)

    npz_path = "data/npz/input1.npz"
    input_set = 0
    inputs = read_npz_data(npz_path, input_set, False)

    # Formatting input data
    inputFreq, inputBL, inputVis, inputLMN, out_zero, trace_zero, nan_mask = format_input0(frequency, visibilities, baselines,
                                                                                    N_LMN, CV, MATRIX_DIM_SIZE1,
                                                                                    OUT_SIZE, TRACE_SIZE, NCHANNELS,
                                                                                    DATATYPE, False)

    # Initialize data buffers
    if DATATYPE == bfloat16:
        bo_inout0.write(inputFreq.view(np.uint16), 0)
        bo_inout1.write(inputBL.view(np.uint16), 0)
        bo_inout2.write(inputVis.view(np.uint16), 0)
        bo_inout3.write(inputLMN.view(np.uint16), 0)
    else:
        bo_inout0.write(inputFreq, 0)
        bo_inout1.write(inputBL, 0)
        bo_inout2.write(inputVis, 0)
        bo_inout3.write(inputLMN, 0)
    bo_inout4.write(out_zero, 0)
    if do_tracing:
        bo_trace.write(trace_zero, 0)

    # Sync buffers to update input buffer values
    bo_instr.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout0.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout1.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout2.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout3.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
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
            h = kernel(opcode, bo_instr, len(instr_v), bo_inout0, bo_inout1, bo_inout2, bo_inout3, bo_inout4, bo_trace) # only 4 inputs and 1 output (+ tracing)
        else:
            h = kernel(opcode, bo_instr, len(instr_v), bo_inout0, bo_inout1, bo_inout2, bo_inout3, bo_inout4)  # only 4 inputs and 1 output
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
        # if i == num_iter-1 and opts.verbosity >= 1:
        if i == num_iter-1:
            print("\nOutput:")
            for x in output_buffer.reshape(MATRIX_DIM_SIZE1, MATRIX_DIM_SIZE1)[::32]:
                print(x)
        
        # outputting image
        if i == num_iter-1:
            # Formatting output for plotting
            output_raw = output_buffer[::-1].reshape(MATRIX_DIM_SIZE1, MATRIX_DIM_SIZE1).astype(np.float64)
            output = np.select([~nan_mask], [output_raw], np.nan)

            # Generating reference values
            rtype = bfloat16
            img_ref = image_reference(np.real(visibilities).astype(dtype=rtype),
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