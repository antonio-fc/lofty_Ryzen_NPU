import pandas as pd
import matplotlib.pyplot as plt

def load_csv_to_dataframe(file_path, symbol):
    """
    Loads a CSV file into a pandas DataFrame using the first row as column headers.

    :param file_path: Path to the CSV file.
    :return: pandas DataFrame.
    """
    try:
        df = pd.read_csv(file_path, header=0, delimiter=symbol)
        return df
    except Exception as e:
        print(f"An error occurred while reading the file: {e}")
        return None

def main():
    csv_file_path0 = 'data/acc0_128.csv'
    csv_file_path1 = 'data/acc1_128.csv'
    csv_file_path2 = 'data/acc2_128.csv'
    csv_file_path3 = 'data/acc3_100.csv'
    
    df0 = load_csv_to_dataframe(csv_file_path0, ',')
    df1 = load_csv_to_dataframe(csv_file_path1, ',')
    df2 = load_csv_to_dataframe(csv_file_path2, ',')
    df3 = load_csv_to_dataframe(csv_file_path3, ';')

    dfs = [df0, df1, df2, df3]
    for i, df in enumerate(dfs):
        print(f'[Impl{i}] Mean: {df['Avg Error %'].mean()}, Min: {df['Avg Error %'].min()}, Max: {df['Avg Error %'].max()}')

    plt.plot(df0['frequency (Hz)']/1e6, df0['Avg Error %'], label='Impl0', color='red')
    plt.plot(df1['frequency (Hz)']/1e6, df1['Avg Error %'], label='Impl1', color='green')
    plt.plot(df2['frequency (Hz)']/1e6, df2['Avg Error %'], label='Impl2', color='blue')
    plt.plot(df3['frequency (Hz)']/1e6, df3['Avg Error %'], label='Impl3')
    plt.xlabel('Subband Frequency (MHz)')
    plt.ylabel('Average Pixel Error %')
    plt.title('Error % per Subband Frequency of the NPU Implementations vs CPU reference')
    plt.ylim(0, 100)
    plt.grid(True)
    plt.legend()
    plt.show()
    
    

if __name__ == "__main__":
    main()