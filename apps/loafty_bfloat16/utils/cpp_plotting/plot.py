import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import os

def plot_from_csv(filename):
    # Load the matrix (with float data)
    data = np.loadtxt(filename, delimiter=",")

    # Plot with imshow
    plt.imshow(data, cmap="viridis")
    plt.colorbar()
    plt.title(f"Matrix Heatmap from {filename}")
    plt.savefig(f"{filename.split('.')[0]}_plot.png", dpi=300)

def plotHeatMap(filename, plot_name, h, w):
    data = np.loadtxt(filename, delimiter=",")
    sns.heatmap(data.reshape(h, w), cmap="viridis", annot=False, cbar=True)
    plt.savefig(f"../../plots/correctness/cpp_output/{plot_name}B.png")
    plt.close()
    print(f"Plotted {plot_name}")

# plotHeatMap("csv_files/visRcpp.csv", "visR", 96, 96)
# plotHeatMap("csv_files/visIcpp.csv", "visI", 96, 96)
# plotHeatMap("csv_files/Ucpp.csv", "u", 96, 96)
# plotHeatMap("csv_files/Vcpp.csv", "v", 96, 96)
# plotHeatMap("csv_files/Wcpp.csv", "w", 96, 96)
# plotHeatMap("csv_files/lcpp.csv", "l", 128, 128)
# plotHeatMap("csv_files/mcpp.csv", "m", 128, 128)
# plotHeatMap("csv_files/ncpp.csv", "n", 128, 128)
# plotHeatMap("csv_files/output_cpp.csv", "output_cpp", 128, 128)

# Plotting the outputs of input
path = "."
csv_files = [f for f in os.listdir(path) if f.endswith('.csv')]
plot_names = [os.path.splitext(f)[0] for f in csv_files]
done_files = 0#len([f for f in os.listdir("../../plots/correctness/cpp_output") if f.endswith('.png')])
# print(done_files)
if(len(csv_files) != len(plot_names)):
    exit("Not matching lengths")
print("Started")
for file, name in zip(csv_files[done_files:], plot_names[done_files:]):
    plotHeatMap(f"{path}/{file}", name, 128, 128)

