import numpy as np
IMG_DIM_SIZE = 128

def read_npy_data(path):
    baselines = np.load(f"{path}/baselines.npy")
    visibilities = np.load(f"{path}/vis.npy")[0]
    frequency = np.load(f"{path}/freq.npy")
    return (frequency, visibilities, baselines)

def save_1d_array_to_csv(array, filename):
    """
    Saves a 1D NumPy array to a CSV file.

    Parameters:
    - array (np.ndarray): The 1D array to save.
    - filename (str): The name of the output CSV file.
    """
    if not isinstance(array, np.ndarray) or array.ndim != 1:
        raise ValueError("Input must be a 1D NumPy array.")
    
    np.savetxt(filename, array, delimiter=",", fmt="%.18e")  # You can change the format as needed

npy_path = "../../data/npy/set0"
frequency, visibilities, baselines = read_npy_data(path=npy_path)
l, m = np.meshgrid(np.linspace(-1, 1, IMG_DIM_SIZE), np.linspace(1, -1, IMG_DIM_SIZE))
n = np.sqrt(1 - l**2 - m**2) - 1

save_1d_array_to_csv(frequency, "csv_files/frequency.csv") # saving frequency
save_1d_array_to_csv(np.real(visibilities).flatten(), "csv_files/visR.csv") # saving real visibilities
save_1d_array_to_csv(np.imag(visibilities).flatten(), "csv_files/visI.csv") # saving iamginary visibilities
save_1d_array_to_csv(baselines[:, :, 0].flatten(), "csv_files/u.csv") # saving u baselines
save_1d_array_to_csv(baselines[:, :, 1].flatten(), "csv_files/v.csv") # saving v baselines
save_1d_array_to_csv(baselines[:, :, 2].flatten(), "csv_files/w.csv") # saving w baselines
save_1d_array_to_csv(l.flatten(), "csv_files/l.csv") # saving l values
save_1d_array_to_csv(m.flatten(), "csv_files/m.csv") # saving m values
save_1d_array_to_csv(n.flatten(), "csv_files/n.csv") # saving n values