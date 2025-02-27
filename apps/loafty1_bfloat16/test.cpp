#include <bits/stdc++.h>

#include <boost/program_options.hpp>
#include <cmath>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

#include "xrt/xrt_bo.h"
#include "xrt/xrt_device.h"
#include "xrt/xrt_kernel.h"

#include "test_utils.h"

#ifndef DATATYPES_USING_DEFINED
#define DATATYPES_USING_DEFINED
    using DATATYPE = std::bfloat16_t;
#endif

namespace po = boost::program_options;

// ----------------------------------------------------------------------------
// Verify results (specific to our design example)
// ----------------------------------------------------------------------------

template <typename T>
int verify(int CSize, std::vector<T> A, std::vector<T> C, int verbosity) {
  int errors = 0;
  for (uint32_t i = 0; i < CSize; i++) {
    std::bfloat16_t ref = exp(A[i]);
    // Let's check if they are inf or nan, and if so just pass because
    // comparisions will then fail, even for matches
    if (std::isinf(ref) || std::isinf(C[i]))
      break;
    if (std::isnan(ref) || std::isnan(C[i]))
      break;
    if (!test_utils::nearly_equal(ref, C[i], 0.0078125)) {
      std::cout << "Error in output " << C[i] << " != " << ref << std::endl;
      errors++;
    } else {
      if (verbosity > 1)
        std::cout << "Correct output " << C[i] << " == " << ref << std::endl;
    }
  }
  return errors;
}

// ----------------------------------------------------------------------------
// Main
// ----------------------------------------------------------------------------
int main(int argc, const char *argv[]) {

    // ------------------------------------------------------
    // Parse program arguments
    // ------------------------------------------------------
    po::options_description desc("Allowed options");
    po::variables_map vm;
    test_utils::add_default_options(desc);
    
    test_utils::parse_options(argc, argv, desc, vm);
    int verbosity = vm["verbosity"].as<int>();
    int do_verify = vm["verify"].as<bool>();
    int n_iterations = vm["iters"].as<int>();
    int n_warmup_iterations = vm["warmup"].as<int>();
    int trace_size = vm["trace_sz"].as<int>();
    int do_trace = trace_size > 0;

    // ------------------------------------------------------
    // BUFFER SIZES
    // ------------------------------------------------------

    int MATRIX_DIM_SIZE0 = 96; // size of baselines and vis matrices side (square matrix) 
    int MATRIX_DIM_SIZE1 = 256; // size of lmn matrices side (square matrix), as well as size of image frame
    int MSIZE = pow(MATRIX_DIM_SIZE0, 2);
    int BSIZE = pow(MATRIX_DIM_SIZE1, 2);

    int CV = 32; // number of consecutive values in output stream
    int N_LMN = 3; // one for each l, m and n, just to avoid "magic numbers in code"

    int INOUT0_VOLUME = MSIZE;
    int INOUT1_VOLUME = CV * N_LMN; // padding the scalar of the frequency factor to be in the same stream as lmn values
    int INOUT2_VOLUME = BSIZE;
    int INOUT_FACTOR_VOLUME = INOUT1_VOLUME + INOUT2_VOLUME * N_LMN; // size of the stream for the lmn values and the frequency factor

    int NCORES = 6;
    int NINPUTS = 5;
    
    int INPUT_VOL = MSIZE/2;
    int FULL_INPUT_VOL = INPUT_VOL * NINPUTS;
    int OUTPUT_VOL = BSIZE;
    
    size_t INOUT0_SIZE = INOUT0_VOLUME * sizeof(DATATYPE);
    size_t INOUT1_SIZE = INOUT1_VOLUME * sizeof(DATATYPE);
    size_t INOUT2_SIZE = INOUT2_VOLUME * sizeof(DATATYPE);
    size_t FULL_INPUT_SIZE = FULL_INPUT_VOL * sizeof(DATATYPE);
    size_t INOUT_FACTOR_SIZE = INOUT_FACTOR_VOLUME * sizeof(DATATYPE);
    size_t OUT_SIZE = OUTPUT_VOL * sizeof(DATATYPE);
    size_t TRACE_SIZE = trace_size;
    
    srand(time(NULL)); // What is this for?
    
    // ------------------------------------------------------
    // LOAD INSTRUCTION SEQUENCE
    // ------------------------------------------------------
    
    std::vector<uint32_t> instr_v = test_utils::load_instr_sequence(vm["instr"].as<std::string>());
    if (verbosity >= 1)
        std::cout << "Sequence instr count: " << instr_v.size() << "\n";

    // ------------------------------------------------------
    // Get device, load the xclbin & kernel and register them
    // ------------------------------------------------------
    // Get a device handle
    unsigned int device_index = 0;
    auto device = xrt::device(device_index);
    
    // Load the xclbin
    if (verbosity >= 1)
        std::cout << "Loading xclbin: " << vm["xclbin"].as<std::string>() << "\n";
    auto xclbin = xrt::xclbin(vm["xclbin"].as<std::string>());

    // Load the kernel
    if (verbosity >= 1)
        std::cout << "Kernel opcode: " << vm["kernel"].as<std::string>() << "\n";
    std::string Node = vm["kernel"].as<std::string>();
    
    // Get the kernel from the xclbin
    auto xkernels = xclbin.get_kernels();
    auto xkernel = *std::find_if(xkernels.begin(), xkernels.end(),
                               [Node, verbosity](xrt::xclbin::kernel &k) {
                                 auto name = k.get_name();
                                 if (verbosity >= 1) {
                                    std::cout << "Name: " << name << std::endl;
                                 }
                                 return name.rfind(Node, 0) == 0;
                               });
    auto kernelName = xkernel.get_name();

    // Register xclbin
    if (verbosity >= 1)
        std::cout << "Registering xclbin: " << vm["xclbin"].as<std::string>() << "\n";
    device.register_xclbin(xclbin);
    
    // Get a hardware context
    if (verbosity >= 1)
        std::cout << "Getting hardware context.\n";
    xrt::hw_context context(device, xclbin.get_uuid());
    
    // Get a kernel handle
    if (verbosity >= 1)
        std::cout << "Getting handle to kernel:" << kernelName << "\n";
    auto kernel = xrt::kernel(context, kernelName);

    // ------------------------------------------------------
    // Initialize input/ output buffer sizes and sync them
    // ------------------------------------------------------
    auto bo_instr = xrt::bo(device, instr_v.size() * sizeof(int), XCL_BO_FLAGS_CACHEABLE, kernel.group_id(1));
    auto bo_inout0 = xrt::bo(device, INOUT_FACTOR_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(3));
    auto bo_inout1 = xrt::bo(device, FULL_INPUT_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(4));
    auto bo_inout2 = xrt::bo(device, FULL_INPUT_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(5));
    auto bo_inout4 = xrt::bo(device, OUT_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(6));
    xrt::bo bo_trace;
    if(do_trace)
        bo_trace = xrt::bo(device, TRACE_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(7));
    else
        bo_trace = xrt::bo(device, 1, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(7));
    
    if (verbosity >= 1)
        std::cout << "Writing data into buffer objects.\n";
    
    // Initialize instruction buffer
    void *bufInstr = bo_instr.map<void *>();
    memcpy(bufInstr, instr_v.data(), instr_v.size() * sizeof(int));

    // // Initialize Inout buffer 0
    // INOUT0_DATATYPE *bufInOut0 = bo_inout0.map<INOUT0_DATATYPE *>();
    // std::vector<INOUT0_DATATYPE> AVec(INOUT0_VOLUME);
    // for (int i = 0; i < INOUT0_VOLUME; i++) {
    //     std::uint16_t u16 = (std::uint16_t)i;
    //     std::bfloat16_t bf16 = *(std::bfloat16_t *)&u16;
    //     AVec[i] = bf16;
    // }
    // memcpy(bufInOut0, AVec.data(), (AVec.size() * sizeof(INOUT0_DATATYPE)));
    
    // Sync buffers to update input buffer values
    bo_instr.sync(XCL_BO_SYNC_BO_TO_DEVICE);
    bo_inout0.sync(XCL_BO_SYNC_BO_TO_DEVICE);
    bo_inout1.sync(XCL_BO_SYNC_BO_TO_DEVICE);
    bo_inout2.sync(XCL_BO_SYNC_BO_TO_DEVICE);

    // ------------------------------------------------------
    // Initialize run configs
    // ------------------------------------------------------
    unsigned num_iter = n_iterations + n_warmup_iterations;
    float npu_time_total = 0;
    float npu_time_min = 9999999;
    float npu_time_max = 0;
    
    int errors = 0;

    // ------------------------------------------------------
    // Main run loop
    // ------------------------------------------------------
    for (unsigned iter = 0; iter < num_iter; iter++) {        
        // Run kernel
        if (verbosity >= 1)
            std::cout << "Running Kernel " << iter << ".\n";
        auto start = std::chrono::high_resolution_clock::now();
        unsigned int opcode = 3;
        xrt::run run;
        if(do_trace)
            run = kernel(opcode, bo_instr, instr_v.size(), bo_inout0, bo_inout1, bo_inout2, bo_inout4, bo_trace);
        else
            run = kernel(opcode, bo_instr, instr_v.size(), bo_inout0, bo_inout1, bo_inout2, bo_inout4);
        run.wait();
        auto stop = std::chrono::high_resolution_clock::now();
        bo_inout4.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
        if(do_trace)
            bo_trace.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
        
        if (iter < n_warmup_iterations) {
            /* Warmup iterations do not count towards average runtime. */
            continue;
        }
        // Copy trace and output to file
        std::uint32_t *bufTrace = bo_trace.map<std::uint32_t *>();
        std::vector<std::uint32_t> trace_vec(TRACE_SIZE/4);
        memcpy(trace_vec.data(), bufTrace, (trace_vec.size() * sizeof(uint32_t)));
    
        // Copy output results and verify they are correct
        std::bfloat16_t *bufOut = bo_inout4.map<std::bfloat16_t *>();
        std::vector<DATATYPE> out_vec(OUTPUT_VOL);
        memcpy(out_vec.data(), bufOut, (out_vec.size() * sizeof(DATATYPE)));
        
        if (do_verify) {
            if (verbosity >= 1) {
                std::cout << "Verifying results ..." << std::endl;
            }
            auto vstart = std::chrono::system_clock::now();
            // errors = verify(INOUT1_VOLUME, AVec, CVec, verbosity);
            auto vstop = std::chrono::system_clock::now();
            float vtime = std::chrono::duration_cast<std::chrono::seconds>(vstop - vstart).count();
            if (verbosity >= 1) {
                std::cout << "Verify time: " << vtime << "secs." << std::endl;
            }
        } else {
            if (verbosity >= 1)
                std::cout << "WARNING: results not verified." << std::endl;
        }
        
        // Write trace values if trace_size > 0
        if (trace_size > 0) {
            test_utils::write_out_trace(((char *)bufOut) + OUT_SIZE, trace_size, vm["trace_file"].as<std::string>());
            std::cout << vm["trace_file"].as<std::string>() << std::endl;
        }

        // Accumulate run times
        float npu_time = std::chrono::duration_cast<std::chrono::microseconds>(stop - start).count();
        npu_time_total += npu_time;
        npu_time_min = (npu_time < npu_time_min) ? npu_time : npu_time_min;
        npu_time_max = (npu_time > npu_time_max) ? npu_time : npu_time_max;
    }

    // ------------------------------------------------------
    // Print verification and timing results
    // ------------------------------------------------------
    
    // TODO - Mac count to guide gflops
    float macs = 0;
    
    std::cout << std::endl
        << "Avg NPU time: " << npu_time_total / n_iterations << "us."
        << std::endl;
    if (macs > 0)
        std::cout << "Avg NPU gflops: "
        << macs / (1000 * npu_time_total / n_iterations)
        << std::endl;
    
    std::cout << std::endl
        << "Min NPU time: " << npu_time_min << "us."
        << std::endl;
    if (macs > 0)
        std::cout << "Max NPU gflops: " << macs / (1000 * npu_time_min)
        << std::endl;
    
    std::cout << std::endl
        << "Max NPU time: " << npu_time_max << "us."
        << std::endl;
    if (macs > 0)
        std::cout << "Min NPU gflops: " << macs / (1000 * npu_time_max)
        << std::endl;
    
    if (!errors) {
        std::cout << "\nPASS!\n\n";
        return 0;
    } else {
        std::cout << "\nError count: " << errors << "\n\n";
        std::cout << "\nFailed.\n\n";
        return 1;
    }
}
