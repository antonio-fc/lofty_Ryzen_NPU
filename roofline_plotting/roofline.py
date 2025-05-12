import sys
import shlex
import numpy as np
import seaborn as sb
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors

# stats for full NPU
NPU_PEAK_PERF_16CT = 307.2 # GBFOP/s
NPU_PEAK_PERF_14CT = 268.8 # GBFOP/s
NPU_PEAK_PERF_13CT = 249.6 # GBFOP/s
NPU_PEAK_BW = 76.8 # GB/s

# stats for one CT
CT_PEAK_PERF = 19.2 # GBFOP/s
CT_PEAK_BW_LOW = 38.4 # GB/s (when neither input is from a nieghbor)
CT_PEAK_BW_MED = 326.4 # GB/s (when one input is from a neighbor)
CT_PEAK_BW_HIGH = 614.4 # GB/s (when both inputs are from neighbors)

# metrics for NPU applications
loaftyLabels = ['loafty0', 'loafty1', 'loafty2']
loaftySizes = [128, 256, 128]
loaftyPerf = [[3.6841, 3.6902], [24.986239, 25.285982, 47.8039], [8.9213, 8.9636]] # GBFOP/s
loaftyArithInt = [[12080.3731, 27048.3932], [9737.9951, 21813.262018, 9737.9951], [12084.6272, 27053.7240]] # FLOP/Byte
loaftyColors = [['r', 'm'], ['g', 'y', 'k'], ['b', 'c']]

# metrics for CT kernels
kernelLabels = [[], ['l0_MainKernel', 'l0_mean'], []]
kernelPerf = [[], [], []]
kernelArithInt = [[], [], []]
kernelColors = ['r', 'g', 'b']

def roofline(peakPerf, peakBw, intensity):
    achievable_perf = np.minimum(peakPerf, peakBw * intensity)
    return achievable_perf

def plot_npu_roofline(START, STOP, N):
    # Getting the roofline
    arithmetic_intensity = np.logspace(START, STOP, num=N, base=2) # FLOP/Byte
    achievable_perf_16CT = roofline(NPU_PEAK_PERF_16CT, NPU_PEAK_BW, arithmetic_intensity) # GBFOP/s
    achievable_perf_14CT = roofline(NPU_PEAK_PERF_14CT, NPU_PEAK_BW, arithmetic_intensity) # GBFOP/s
    achievable_perf_13CT = roofline(NPU_PEAK_PERF_13CT, NPU_PEAK_BW, arithmetic_intensity) # GBFOP/s
    # Plotting the roofline
    _, ax = plt.subplots()
    ax.set_xscale('log', base=2)
    ax.set_yscale('log', base=2)
    ax.set_xlabel('Arithmetic Intensity (FLOP/byte)', fontsize=12)
    ax.set_ylabel("Achieveable Performance (GBFOP/s)", fontsize=12)
    ax.grid(True, which='major')
    ax.plot(arithmetic_intensity, achievable_perf_16CT, linestyle='--', color='b', label="Naive Roofline (16 CTs)")
    ax.plot(arithmetic_intensity, achievable_perf_14CT, linestyle='--', color='r', label="Naive Roofline (14 CTs)")
    ax.plot(arithmetic_intensity, achievable_perf_13CT, linestyle='--', color='g', label="Naive Roofline (13 CTs)")
    # Plotting the applications
    for l in range(len(loaftyPerf)):
        for s in range(len(loaftyPerf[l])):
            ax.plot(loaftyArithInt[l][s], loaftyPerf[l][s], 'o', color=loaftyColors[l][s], label=f"{loaftyLabels[l]}_{loaftySizes[s]}")

    # Show plot
    ax.legend()
    plt.show()

def plot_ct_roofline(START, STOP, N):
    # Getting the rooflines
    arithmetic_intensity = np.logspace(START, STOP, num=N, base=2) # FLOP/Byte
    achievable_perf_low_bw = roofline(CT_PEAK_PERF, CT_PEAK_BW_LOW,arithmetic_intensity)
    achievable_perf_med_bw = roofline(CT_PEAK_PERF, CT_PEAK_BW_MED, arithmetic_intensity)
    achievable_perf_high_bw = roofline(CT_PEAK_PERF, CT_PEAK_BW_HIGH, arithmetic_intensity)
    # Plotting the rooflines
    _, ax = plt.subplots()
    ax.set_xscale('log', base=2)
    ax.set_yscale('log', base=2)
    ax.set_xlabel('Arithmetic Intensity (FLOP/byte)', fontsize=12)
    ax.set_ylabel("Achieveable Performance (GBFOP/s)", fontsize=12)
    ax.grid(True, which='major')
    ax.plot(arithmetic_intensity, achievable_perf_low_bw, linestyle='--', color='r', label="Low BW Roofline")
    ax.plot(arithmetic_intensity, achievable_perf_med_bw, linestyle='--', color='tab:gray', label="Medium BW Roofline")
    ax.plot(arithmetic_intensity, achievable_perf_high_bw, linestyle='--', color='k', label="High BW Roofline")
    # Plotting the kernels
    for i in kernelLabels:
        continue
        # plot the kernels

    # Show the plot
    ax.legend()
    plt.show()

def main() -> int:
    START = -4
    STOP = 16
    N = abs(STOP - START + 1)
    plot_npu_roofline(START, STOP, N)
    START = -8
    STOP = 8
    N = abs(STOP - START + 1)
    plot_ct_roofline(START, STOP, N)

    
    return 0

if __name__ == '__main__':
    main()
    sys.exit()