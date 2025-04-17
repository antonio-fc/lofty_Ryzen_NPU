import sys  
import numpy as np
import seaborn as sb
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
from nptyping import NDArray, Shape, Float64, Complex64

SPEED_OF_LIGHT = 299792458.0

def read_npy_data(path):
    baselines = np.load(f"{path}/baselines.npy")
    visibilities = np.load(f"{path}/vis.npy")[0]
    frequency = np.load(f"{path}/freq.npy")
    return (frequency, visibilities, baselines)

def sky_imager_simple(
    visibilities: NDArray[Shape["Dim, Dim"], Complex64],
    baselines: NDArray[Shape["Dim, Dim, 3"], Float64],
    freq: NDArray[Shape["1"], Float64],
    npix_l: int,
    npix_m: int,
):
    """
    :param visibilities: 2d rectangular array of visibilities
    :param baselines: 3d array with u, v, w per antenna baseline (N^2)
    :param freq: the frequency in hertz
    :param npix_l: number of pixels length
    :param npix_m: number of pixels height
    :return: 2d image from the imaging process
    """

    img = np.zeros((npix_l, npix_m), dtype=np.complex128)
    l, m = np.meshgrid(np.linspace(-1, 1, npix_l), np.linspace(1, -1, npix_m))
    n = np.sqrt(1 - l**2 - m**2) - 1

    for l_ix in range(npix_l):
        for m_ix in range(npix_m):
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


def sky_imager_matrix(
    baselines: NDArray[Shape["Dim, Dim, 3"], Float64],
    freq: NDArray[Shape["1"], Float64],
    npix_l: int,
    npix_m: int,
):
    img = np.zeros((npix_l, npix_m, 96, 96), dtype=np.complex128)
    l, m = np.meshgrid(np.linspace(-1, 1, npix_l), np.linspace(1, -1, npix_m))
    n = np.sqrt(1 - l**2 - m**2) - 1

    freq_factor = -2j * np.pi * freq / SPEED_OF_LIGHT

    for l_ix in range(npix_l):
        for m_ix in range(npix_m):
            img[npix_l - l_ix - 1, npix_m - m_ix - 1,:, :] = np.exp(
                (
                    baselines[:, :, 0] * l[l_ix, m_ix]
                    + baselines[:, :, 1] * m[l_ix, m_ix]
                    + baselines[:, :, 2] * n[l_ix, m_ix]
                ) * freq_factor
            )


    return img



def main() -> int:
    input_path = "./../apps/loafty1_bfloat16/data/npy/set0"    
    frequency, visibilities, baselines = read_npy_data(path=input_path)

    rows = 128
    cols = 128

    ref_img = sky_imager_simple(visibilities, baselines, frequency, rows, cols)
    exp_matrix = sky_imager_matrix(baselines, frequency, rows, cols)
    
    img = np.zeros((rows, cols), dtype=np.float64)
    for i in range(rows):
        for j in range(cols):
            pixel = np.sum(visibilities * exp_matrix[i, j])
            img[i, j] = np.real(pixel)/9216.0
    
    print(img[50, 50])
    print(ref_img[50, 50])
    # sb.heatmap(img, cmap="viridis", annot=False, cbar=True)  # Create heatmap
    # plt.savefig("plots/images/output_py.png")  # Save as image
    # plt.close()  # Close the plot to free memory
    
    # # print(img_ref.flatten()[256*100:256*100+10])
    # sb.heatmap(, cmap="viridis", annot=False, cbar=True)  # Create heatmap
    # plt.savefig("plots/images/ref.png")  # Save as image
    # plt.close()  # Close the plot to free memory
    
    img_clean = img[~np.isnan(img)]
    ref_img_clean = ref_img[~np.isnan(ref_img)]
    diff = np.abs(img_clean - ref_img_clean)
    print(f"Mean Diff: {np.mean(diff)}")
    print(f"Max Diff: {np.max(diff)}")
    print(f"Min Diff: {np.min(diff)}")

    
    return 0

if __name__ == '__main__':
    main()
    sys.exit()