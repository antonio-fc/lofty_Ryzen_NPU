# 📚 Master's Thesis Project: *Exploration of the AMD Ryzen NPU for Real-time Signal Processing*

## 📝 Abstract

The growing prevalence of Artificial Intelligence (AI) applications has led to the development of specialized hardware accelerators optimized for performance and energy efficiency. One such accelerator is the Ryzen Neural Processing Unit (NPU), integrated into AMD’s Ryzen AI processors. While primarily designed for AI workloads, this thesis investigates the potential of repurposing the Ryzen NPU for Digital Signal Processing (DSP) applications, with a focus on radio astronomy. Using the All-Sky Imaging Algorithm from the LOFAR telescope system as a case study, the research evaluates whether the NPU can meet the real-time data processing demands imposed by LOFAR's 10 Hz data generation rate.

Four implementations of the algorithm were developed: three using the MLIR-AIE toolchain and one using the TINA framework. These implementations explored various parallelization and pipelining strategies to optimize performance while ensuring correctness and minimal power consumption. Experimental evaluations revealed up to a 77.4× speedup over a CPU baseline and a 2.84× speedup over a GPU implementation. Notably, three of the four implementations met the 10 Hz real-time requirement. All implementations yielded accurate results, with only minor variations due to differences in data types.

Although power consumption data for the NPU implementations was unavailable, the performance gains underscore the Ryzen NPU's potential for non-AI workloads. This thesis provides a proof of concept for DSP acceleration on the Ryzen NPU, contributes a new layer to the TINA toolchain, and offers insights for future application development.

---

## 📂 Project Overview

This repository contains the source code for the master's thesis titled *"Exploration of the AMD Ryzen NPU for Real-time Signal Processing"*, submitted to *Technische Universiteit Delft* for the *MSc. Computer and Embedded Systems Engineering*, and in collaboration with [ASTRON](https://www.astron.nl/).

**Thesis Author:** José Antonio Fortanet Capetillo
**Supervisor(s):** Dr. Peter Hofstee and Ir. Steven van der Vlugt
**Defense Date:** 30/06/2025

---

## 🛠️ Technologies Used

- Programming Language(s): Python, C++
- Frameworks: [MLIR-AIE](https://github.com/Xilinx/mlir-aie), [TINA](https://github.com/ChristiaanBoe/TINA), [Ryzen AI Software](https://github.com/amd/RyzenAI-SW) 

---

## 🔧 Installation
### MLIR-AIE Intallation
In order to run the MLIR-AIE implementations, there are three requirements:

1. A Linux machine with Ubuntu 24.04 and turn off SecureBoot to install drivers.
2. Install XDNA driver and XRT following the instructions [here](https://github.com/Xilinx/mlir-aie#:~:text=Build%20and%20install%20the%20XDNA%E2%84%A2%20Driver%20and%20XRT).
3. Install IRON and MLIR-AIE by following the instructions [here](https://github.com/Xilinx/mlir-aie#:~:text=Install%20IRON%20and%20MLIR%2DAIE%20Prerequisites) and [here](https://github.com/Xilinx/mlir-aie#:~:text=Install%20IRON%20for%20AMD%20Ryzen%E2%84%A2%20AI%20AIE%20Application%20Development).

Make sure to activate the created IRON environment to run MLIR-AIE applications with <code>source env/bin/activate</code> while being in the directory where the environment was created and using the name of the environment instead of 'env'.
### TINA
In order to run the TINA implementation, it is necessary to install Ryzen AI SW. Currently, this is only available for Windows 11. The installation process includes:
1. Installing NPU drivers.
2. Installing Ryzen AI Software.
3. Creating a conda environment to run the application.

Follow the installation instructions from [here](https://ryzenai.docs.amd.com/en/latest/inst.html) to install the driver and Ryzen AI Software. Use the instructions from [here](https://github.com/amd/RyzenAI-SW/tree/main/tutorial/hello_world#:~:text=in%20this%20folder.-,Getting%20Started,-Before%20running%20this) for creating the conda environment.

Make sure to activate the created conda environment for running the application.


## ▶️ Running the Application

### MLIR-AIE Implementation

1. Go into the directory that contains the source files of the applications as <code>cd apps/lofty_bfloat16</code>.
2. There are three versions of the MLIR-AIE implementations, src_v0, src_v1, and src_v2, which correspond to the Pipelined, Parallel, and Bi-Pipelined, respectively.
3. To choose the app version, there are some changes needed in the Makefile.
  1. Change 'app_version' to the version number to match the desired implementation.
  2. There is a section of the file that contains the commands to compile the kernels under "##== COMPILING NPU KERNELS WITH PEANO ==##". Make sure to comment out the commands under the sections named "##### Kernels for version N #####", where N is NOT the number of the desired app version.
4. To run the application, use <code>make run</code>.

### TINA Implementation

1. Go into the directory that contains the source files of the applications as <code>cd lofty_tina</code>.
2. Build and run the model with <code>python3 tina_run.py N</code>, where N is the number of pixels for an NxN image.
