import torch
import torch.nn as nn
import os
import subprocess
import onnxruntime
import numpy as np
import onnx
import shutil
from timeit import default_timer as timer
import vai_q_onnx
import psutil

import torch
import torch.nn as nn
import numpy as np
import pandas as pd
from math import exp
SPEED_OF_LIGHT = 299792458.0

# This function detects the APU (NPU) type in your system to configure environment variables for hardware-specific optimization.
def get_apu_info():
    # Run pnputil as a subprocess to enumerate PCI devices
    command = r'pnputil /enum-devices /bus PCI /deviceids '
    process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = process.communicate()
    # Check for supported Hardware IDs
    apu_type = ''
    if 'PCI\\VEN_1022&DEV_1502&REV_00' in stdout.decode(): apu_type = 'PHX/HPT'
    if 'PCI\\VEN_1022&DEV_17F0&REV_00' in stdout.decode(): apu_type = 'STX'
    if 'PCI\\VEN_1022&DEV_17F0&REV_10' in stdout.decode(): apu_type = 'STX'
    if 'PCI\\VEN_1022&DEV_17F0&REV_11' in stdout.decode(): apu_type = 'STX'
    return apu_type

apu_type = get_apu_info()
print(f"APU Type: {apu_type}")

# XLNX_VART_FIRMWARE - Specifies the firmware file used by the NPU for runtime execution
# NUM_OF_DPU_RUNNERS - Specifies the number of DPU runners (processing cores) available for execution
# XLNX_TARGET_NAME - Name of the target hardware configuration

def set_environment_variable(apu_type):

    install_dir = os.environ['RYZEN_AI_INSTALLATION_PATH']
    match apu_type:
        case 'PHX/HPT':
            print("Setting environment for PHX/HPT")
            os.environ['XLNX_VART_FIRMWARE']= os.path.join(install_dir, 'voe-4.0-win_amd64', 'xclbins', 'phoenix', '1x4.xclbin')
            os.environ['NUM_OF_DPU_RUNNERS']='1'
            os.environ['XLNX_TARGET_NAME']='AMD_AIE2_Nx4_Overlay'
        case 'STX':
            print("Setting environment for STX")
            os.environ['XLNX_VART_FIRMWARE']= os.path.join(install_dir, 'voe-4.0-win_amd64', 'xclbins', 'strix', 'AMD_AIE2P_Nx4_Overlay.xclbin')
            os.environ['NUM_OF_DPU_RUNNERS']='1'
            os.environ['XLNX_TARGET_NAME']='AMD_AIE2_Nx4_Overlay'
        case _:
            print("Unrecognized APU type. Exiting.")
            exit()
    print('XLNX_VART_FIRMWARE=', os.environ['XLNX_VART_FIRMWARE'])
    print('NUM_OF_DPU_RUNNERS=', os.environ['NUM_OF_DPU_RUNNERS'])
    print('XLNX_TARGET_NAME=', os.environ['XLNX_TARGET_NAME'])

set_environment_variable(apu_type)

def combine_to_complex(real_vec, imag_vec):
    # Ensure both are NumPy arrays
    real = np.asarray(real_vec, dtype=float)
    imag = np.asarray(imag_vec, dtype=float)

    if real.shape != imag.shape:
        raise ValueError("Real and imaginary vectors must be the same shape.")

    return real + 1j * imag

def all_sky_image(vis, u, v, w, freq, l, m, n, npix_l, npix_m):
    img = np.zeros((npix_l, npix_m))
    for l_ix in range(npix_l):
        for m_ix in range(npix_m):
            img[npix_l - l_ix - 1, npix_m - m_ix - 1] = np.mean(
                        vis
                        * np.exp(
                            -2j * np.pi * freq
                            * (
                                u * l[l_ix, m_ix]
                                + v * m[l_ix, m_ix]
                                + w * n[l_ix, m_ix]
                            ) / SPEED_OF_LIGHT
                        )
                    )
    return np.real(img)


def sky_imager_simple_just_exp_correct_shape(
    baselines,
    freq,
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
    exp_matrix = np.zeros((npix_l*npix_m,1 , baselines.shape[0], baselines.shape[1]), dtype=np.complex64)
    img = np.zeros((npix_l, npix_m), dtype=np.complex128)
    l, m = np.meshgrid(np.linspace(-1, 1, npix_l), np.linspace(1, -1, npix_m))
    n = np.sqrt(1 - l**2 - m**2) - 1

    for l_ix in range(npix_l):
        for m_ix in range(npix_m):
            exp_matrix[l_ix * npix_m + m_ix, :, :, :] = np.exp(
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
    return exp_matrix

class ElementwiseMult_Astron_final(nn.Module):
  def __init__(self, matrix) -> None:
      super(ElementwiseMult_Astron_final, self).__init__()
      shape = matrix.shape

      self.batch, self.channels, self.height, self.width = shape
      print("shape of exponential matrix: ", shape)

      self.conv_layer = nn.Conv2d(2, self.batch, bias=False, kernel_size= (self.width,self.height), stride= (1, 1), groups= 1)
      # print("shape of kernel:", self.conv_layer.weight.data.shape)
      weightsconv = matrix
      # print("shape of our exponential kernel:", weightsconv.shape)

      self.conv_layer.weight.data = weightsconv

  def forward(self, x):
    shape = x.shape
    # print("shape of input ElementwiseMult_Astron: ", shape)
    # print("TINA we multiply the visibilites:", x, "with the following index 4, 4", self.conv_layer.weight.data[4 * 10 + 4][0][:][:])
    out = self.conv_layer(x)
    # print("shape of output: ", out.shape)
    #print("shape of output after reshape: ", out.shape)
    out = out.view(1, 1, self.batch, 1)
    # print("shape of output after reshape: ", out.shape)
    # out = out/9216.0
    #print("shape of output after division: ", out.shape)

    return out

class sky_imager_TINA_comp_final(nn.Module):
  def __init__(self,
    baselines,
    freq,
    npix_l: int,
    npix_m: int,) -> None:
      super(sky_imager_TINA_comp_final, self).__init__()

      # Generating exp matrix
      exp_matrix = sky_imager_simple_just_exp_correct_shape(baselines, freq, npix_l, npix_m)
      
      # Formatting imaginary component
      exp_matrix_imag = np.imag(exp_matrix)
      exp_matriximag_tensor = torch.from_numpy(exp_matrix_imag).float()
      exp_matriximag_tensor = exp_matriximag_tensor * -1
      shapexp = exp_matriximag_tensor.shape

      # Formatting real component
      exp_matrix_real = np.real(exp_matrix)
      exp_matrixreal_tensor = torch.from_numpy(exp_matrix_real).float()
      shapexp = exp_matrixreal_tensor.shape
      exp_matrix_comp = torch.concat((exp_matrixreal_tensor, exp_matriximag_tensor), dim=1) # concatenated exp matrix, with shape [2, pixels, 96, 96]

      self.matrix_mult = ElementwiseMult_Astron_final(exp_matrix_comp)


  def forward(self, x):
    # print("shape of input Sky_imager_TINA_real: ", x.shape)
    outputcomp = self.matrix_mult(x)
    return outputcomp

def read_single_column_csv(filename):
    df = pd.read_csv(filename)
    return df.iloc[:, 0].to_numpy()

def read_multi_column_csv(filename):
    df = pd.read_csv(filename)
    return df.transpose().to_numpy().reshape(512, 96, 96)

def read_multi_column_csv2(filename):
    df = pd.read_csv(filename)
    return df.to_numpy().reshape(96, 96, 3)

def read_three_column_csv(filename):
    df = pd.read_csv(filename)
    # Fill missing values with NaN, then convert columns to numpy arrays
    v1 = df.iloc[:, 0].to_numpy(dtype=float).reshape(96, 96)
    v2 = df.iloc[:, 1].to_numpy(dtype=float).reshape(96, 96)
    v3 = df.iloc[:, 2].to_numpy(dtype=float).reshape(96, 96)
    return v1, v2, v3
