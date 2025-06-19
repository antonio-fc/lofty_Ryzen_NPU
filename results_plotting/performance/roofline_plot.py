import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

PEAK_PERF_CT = 800 # GFLOP/s
PEAK_PERF_CT_MINE = 25.55 # GFLOP/s

NPU_PEAK_BW = 32 * 4 * 1.8 # GB/s

CT_PEAK_BW_LOW = 38.4 # GB/s (when neither input is from a nieghbor)
CT_PEAK_BW_MED = 326.4 # GB/s (when one input is from a neighbor)
CT_PEAK_BW_HIGH = 614.4 # GB/s (when both inputs are from neighbors)

def slopes_between_points(x, y):
    if len(x) != len(y):
        raise ValueError("x and y must be the same length")

    # If input is a Series, use iloc for position-based indexing
    is_series = hasattr(x, "iloc") and hasattr(y, "iloc")

    slopes = []
    for i in range(len(x) - 1):
        if is_series:
            dx = x.iloc[i + 1] - x.iloc[i]
            dy = y.iloc[i + 1] - y.iloc[i]
        else:
            dx = x[i + 1] - x[i]
            dy = y[i + 1] - y[i]
        
        if dx == 0:
            slopes.append(float('inf'))
        else:
            slopes.append(dy / dx)
    
    return slopes

def load_csv_to_dataframe(file_path):
    """
    Loads a CSV file into a pandas DataFrame using the first row as column headers.

    :param file_path: Path to the CSV file.
    :return: pandas DataFrame.
    """
    try:
        df = pd.read_csv(file_path, header=0)
        return df
    except Exception as e:
        print(f"An error occurred while reading the file: {e}")
        return None
    
def plot_dataframe(df):
    if df.shape[1] < 2:
        raise ValueError("DataFrame must have at least two columns.")

    x = df.iloc[:, 0]
    x_pixels = x*x
    colors = plt.cm.tab10.colors

    for i, col in enumerate(df.columns[1:]):
        y = df[col]
        if ' ' not in str(col):
            valid_data = df.dropna(subset=['pixels', col])
            valid_x = valid_data['pixels']**2
            valid_y = valid_data[col]

            slope, intercept = np.polyfit(valid_x, valid_y, 1)
            color = colors[i % len(colors)]
            plt.plot(x_pixels, x_pixels * slope + intercept, label=col, color=color)
            point = 210**2
            plt.text(point, point*slope+10000, f'Slope: {slope:.2f}', va='top', ha='left', fontsize=8)
            plt.plot(x_pixels, y, marker='o', color=color)
            print(len(valid_x))
            print(slopes_between_points(valid_x, valid_y))
            

    plt.xticks(ticks=x_pixels, labels=x, rotation=90, fontsize=6)
    plt.xlabel("N Number of Pixels for NxN Image")
    plt.ylabel("Execution Time (us)")
    # plt.title(f"Vector Size Optimization for Implementation {version}")
    plt.legend()
    plt.grid(True)
    plt.tight_layout()
    plt.show()

def roofline(peakPerf, peakBw, intensity):
    achievable_perf = np.minimum(peakPerf, peakBw * intensity)
    return achievable_perf

def plot_roofline_npu(START, STOP, N):
    # Getting the roofline
    arithmetic_intensity = np.logspace(START, STOP, num=N, base=2) # FLOP/Byte
    naive_perf_16CT = roofline(PEAK_PERF_CT*16, NPU_PEAK_BW, arithmetic_intensity) # GBFOP/s
    naive_perf_14CT = roofline(PEAK_PERF_CT*14, NPU_PEAK_BW, arithmetic_intensity) # GBFOP/s
    naive_perf_13CT = roofline(PEAK_PERF_CT*13, NPU_PEAK_BW, arithmetic_intensity) # GBFOP/s
    measured_perf_16CT = roofline(PEAK_PERF_CT_MINE*16, NPU_PEAK_BW*0.75, arithmetic_intensity) # GBFOP/s
    measured_perf_14CT = roofline(PEAK_PERF_CT_MINE*14, NPU_PEAK_BW, arithmetic_intensity) # GBFOP/s
    measured_perf_13CT = roofline(PEAK_PERF_CT_MINE*13, NPU_PEAK_BW*0.75, arithmetic_intensity) # GBFOP/s

    # Plotting the roofline
    _, ax = plt.subplots()
    ax.set_xscale('log', base=2)
    ax.set_yscale('log', base=2)
    ax.set_xlabel('Arithmetic Intensity (BFL16OP/byte)', fontsize=12)
    ax.set_ylabel("Achieveable Performance (GBFL16OP/s)", fontsize=12)
    ax.grid(True, which='major')
    ax.plot(arithmetic_intensity, naive_perf_16CT, linestyle='--', label="Naive Roofline (16 CTs)")
    ax.plot(arithmetic_intensity, naive_perf_14CT, linestyle='--', label="Naive Roofline (14 CTs)")
    ax.plot(arithmetic_intensity, naive_perf_13CT, linestyle='--', label="Naive Roofline (13 CTs)")
    ax.plot(arithmetic_intensity, measured_perf_16CT, linestyle='-.', label="Measured Roofline (16 CTs)")
    ax.plot(arithmetic_intensity, measured_perf_14CT, linestyle='-.', label="Measured Roofline (14 CTs)")
    ax.plot(arithmetic_intensity, measured_perf_13CT, linestyle='-.', label="Measured Roofline (13 CTs)")

    # Plotting the applications
    roof_all = 'data2/roofline_all.csv'
    df = load_csv_to_dataframe(roof_all)
    df['name'] = ['v0_128', 'v1_128', 'v2_128', 'v0_128B', 'v1_128B', 'v2_128B', 'v0_256', 'v1_256', 'v2_256', 'v0_256B', 'v1_256B', 'v2_256B', 'TINA', 'TINA']
    df['work'] = df['work/pixel'] * (df['pixels']**2) # BFL16OPs
    df['arith_inten'] = df['work']/df['data(bytes)'] # BFL16OP/byte
    df['perf'] = (df['work']/df['exec time'])/1000 # BFL16OP/us => GBFL16OP/s
    for _, row in df.iterrows(): # there are 12 data rows
        # if row['pixels'] == 256:
        #     continue
        if row['name'][-1] == 'B':
            ax.plot(row['arith_inten'], row['perf'], 'x', label=row['name'][:-1:]+" (w/0 LUT)")
        elif "TINA" in row['name']:
            ax.plot(row['arith_inten'], row['perf']*2, 's', label=row['name']+f"_{row['pixels']}")
        else:
            ax.plot(row['arith_inten'], row['perf'], 'o', label=row['name'])

    # Show plot
    ax.legend(loc='upper left', bbox_to_anchor=(1, 1))
    plt.tight_layout() 
    plt.show()

def plot_roofline_kernel(START, STOP, N):
    # Getting the roofline
    arithmetic_intensity = np.logspace(START, STOP, num=N, base=2) # FLOP/Byte
    naive_perf_low_bw = roofline(PEAK_PERF_CT, CT_PEAK_BW_LOW,arithmetic_intensity)
    naive_perf_med_bw = roofline(PEAK_PERF_CT, CT_PEAK_BW_MED, arithmetic_intensity)
    naive_perf_high_bw = roofline(PEAK_PERF_CT, CT_PEAK_BW_HIGH, arithmetic_intensity)
    measured_perf_low_bw = roofline(PEAK_PERF_CT_MINE, CT_PEAK_BW_LOW,arithmetic_intensity)
    measured_perf_med_bw = roofline(PEAK_PERF_CT_MINE, CT_PEAK_BW_MED, arithmetic_intensity)
    measured_perf_high_bw = roofline(PEAK_PERF_CT_MINE, CT_PEAK_BW_HIGH, arithmetic_intensity)

    # Plotting the kernels 0
    roof0 = 'data2/roofline_kernels0.csv'
    roof1 = 'data2/roofline_kernels1.csv'
    roof2 = 'data2/roofline_kernels2.csv'
    files = [roof0, roof1, roof2]
    for i in range(3): # 3 versions

        # Plotting the roofline
        _, ax = plt.subplots()
        ax.set_xscale('log', base=2)
        ax.set_yscale('log', base=2)
        ax.set_xlabel('Arithmetic Intensity (BFL16OP/byte)', fontsize=12)
        ax.set_ylabel("Achieveable Performance (GBFL16OP/s)", fontsize=12)
        ax.grid(True, which='major')
        ax.plot(arithmetic_intensity, naive_perf_low_bw, linestyle='--', label="Naive Low BW Roofline")
        # ax.plot(arithmetic_intensity, naive_perf_med_bw, linestyle='--', label="Naive Medium BW Roofline")
        ax.plot(arithmetic_intensity, naive_perf_high_bw, linestyle='--', label="Naive High BW Roofline")
        ax.plot(arithmetic_intensity, measured_perf_low_bw, linestyle='-.', label="Measured Low BW Roofline")
        # ax.plot(arithmetic_intensity, measured_perf_med_bw, linestyle='-.', label="Measured Medium BW Roofline")
        ax.plot(arithmetic_intensity, measured_perf_high_bw, linestyle='-.', label="Measured High BW Roofline")

        # plot points
        df = load_csv_to_dataframe(files[i])
        df['arith_inten'] = df['work']/df['data(bytes)'] # BFL16OP/byte
        df['perf'] = (df['work']/df['exec time']) # BFL16OP/ns => GBFL16OP/s
        for _, row in df.iterrows(): # there are 12 data rows
            x = row['arith_inten']
            y = row['perf']
            if 'LUT' in row['kernel']:
                ax.plot(x, y, 'x', label=f"{row['kernel']}")
            else:
                ax.plot(x, y, 'o', label=f"{row['kernel']}")

        # Show plot
        ax.legend(loc='upper left', bbox_to_anchor=(1, 1))
        plt.tight_layout() 
        plt.show()

def main():
    # df = load_csv_to_dataframe('data2/perf_pixel.csv')
    # plot_dataframe(df)

    # Plotting NPU roofline graph
    START = -4
    STOP = 16
    N = abs(STOP - START + 1)
    plot_roofline_npu(START, STOP, N)

    # Plotting kernel roofline graph
    START = -6
    STOP = 8
    N = abs(STOP - START + 1)
    plot_roofline_kernel(START, STOP, N)


    
    
    

if __name__ == "__main__":
    main()