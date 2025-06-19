import pandas as pd
import matplotlib.pyplot as plt

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
    
def plot_dataframe(df, version):
    if df.shape[1] < 2:
        raise ValueError("DataFrame must have at least two columns.")
    
    df = df[::-1].reset_index(drop=True)

    x_labels = df.iloc[:, 0].astype(str)
    x_pos = range(len(df))  # Equally spaced positions

    for col in df.columns[1:]:
        y = df[col]
        plt.plot(x_pos, y, label=col)
        
        # Mark the minimum value
        min_idx = y.idxmin()
        min_x = x_pos[min_idx]
        min_y = y[min_idx]
        plt.plot(min_x, min_y, 'o', color=plt.gca().lines[-1].get_color())

    plt.xticks(ticks=x_pos, labels=x_labels, rotation=45)
    plt.xlabel("Vector Size")
    plt.ylabel("Execution Time (ns)")
    # plt.title(f"Vector Size Optimization for Implementation {version}")
    plt.legend()
    plt.grid(True)
    plt.tight_layout()
    plt.show()

def main():
    csv_file_path0 = 'data/perf_out0.csv'
    csv_file_path1 = 'data/perf_out1.csv'
    csv_file_path2 = 'data/perf_out2.csv'
    
    df0 = load_csv_to_dataframe(csv_file_path0)
    df1 = load_csv_to_dataframe(csv_file_path1)
    df2 = load_csv_to_dataframe(csv_file_path2)

    plot_dataframe(df0, 0)
    plot_dataframe(df1, 1)
    plot_dataframe(df2, 2)
    
    

if __name__ == "__main__":
    main()