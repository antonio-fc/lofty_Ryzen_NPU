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


## ▶️ Running the Application
