#define _USE_MATH_DEFINES

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

#include "utils/test_utils.h"
#include "utils/hdf5/hdf5_utils.h"
#include "utils/cpp_plotting/plot_utils.h"

using namespace std;
namespace po = boost::program_options;

#ifndef DATATYPES_USING_DEFINED
#define DATATYPES_USING_DEFINED
    using DATATYPE = bfloat16_t;
#endif

template<typename U, typename T>
std::vector<U> castVector(const std::vector<T>& input) {
    std::vector<U> output;
    output.reserve(input.size());
    for (const T& val : input) {
        output.push_back(static_cast<U>(val));
    }
    return output;
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
    int antennas = vm["anten"].as<int>();
    int image_size = vm["imgsz"].as<int>();

    // ------------------------------------------------------
    // BUFFER SIZES
    // ------------------------------------------------------

    const int MATRIX_DIM_SIZE0 = antennas; // size of baselines and vis matrices side (square matrix) 
    const int MATRIX_DIM_SIZE1 = image_size; // size of lmn matrices side (square matrix), as well as size of image frame
    const int MSIZE = pow(MATRIX_DIM_SIZE0, 2);
    const int BSIZE = pow(MATRIX_DIM_SIZE1, 2);

    const int CV = 32; // number of consecutive values in output stream
    const int N_LMN = 3; // one for each l, m and n, just to avoid "magic numbers in code"

    const int INOUT0_VOLUME = MSIZE;
    const int INOUT1_VOLUME = CV * N_LMN; // padding the scalar of the frequency factor to be in the same stream as lmn values
    const int INOUT2_VOLUME = BSIZE;
    const int INOUT_FACTOR_VOLUME = INOUT1_VOLUME + INOUT2_VOLUME * N_LMN; // size of the stream for the lmn values and the frequency factor

    const int NCORES = 6;
    const int NINPUTS = 5;
    const int NDISTGROUP = 2; // number of ct groups for distribution
    
    const int INPUT_VOL = MSIZE/NDISTGROUP;
    const int FULL_INPUT_VOL = INPUT_VOL * NINPUTS;
    const int OUTPUT_VOL = BSIZE;
    
    const size_t FULL_INPUT_SIZE = FULL_INPUT_VOL * sizeof(DATATYPE);
    const size_t INOUT_FACTOR_SIZE = INOUT_FACTOR_VOLUME * sizeof(DATATYPE);
    const size_t OUT_SIZE = OUTPUT_VOL * sizeof(DATATYPE);
    const size_t TRACE_SIZE = trace_size;
    
    srand(time(NULL)); // What is this for?
    
    // ------------------------------------------------------
    // LOAD INSTRUCTION SEQUENCE
    // ------------------------------------------------------
    
    vector<uint32_t> instr_v = test_utils::load_instr_binary(vm["instr"].as<string>());
    if (verbosity >= 1)
        cout << "Sequence instr count: " << instr_v.size() << "\n";

    // ------------------------------------------------------
    // Get device, load the xclbin & kernel and register them
    // ------------------------------------------------------
    // Get a device handle
    unsigned int device_index = 0;
    auto device = xrt::device(device_index);
    
    // Load the xclbin
    if (verbosity >= 1)
        cout << "Loading xclbin: " << vm["xclbin"].as<string>() << "\n";
    auto xclbin = xrt::xclbin(vm["xclbin"].as<string>());

    // Load the kernel
    if (verbosity >= 1)
        cout << "Kernel opcode: " << vm["kernel"].as<string>() << "\n";
    string Node = vm["kernel"].as<string>();
    
    // Get the kernel from the xclbin
    auto xkernels = xclbin.get_kernels();
    auto xkernel = *find_if(xkernels.begin(), xkernels.end(),
                               [Node, verbosity](xrt::xclbin::kernel &k) {
                                 auto name = k.get_name();
                                 if (verbosity >= 1) {
                                    cout << "Name: " << name << endl;
                                 }
                                 return name.rfind(Node, 0) == 0;
                               });
    auto kernelName = xkernel.get_name();

    // Register xclbin
    if (verbosity >= 1)
        cout << "Registering xclbin: " << vm["xclbin"].as<string>() << "\n";
    device.register_xclbin(xclbin);
    
    // Get a hardware context
    if (verbosity >= 1)
        cout << "Getting hardware context.\n";
    xrt::hw_context context(device, xclbin.get_uuid());
    
    // Get a kernel handle
    if (verbosity >= 1)
        cout << "Getting handle to kernel:" << kernelName << "\n";
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
        cout << "Writing data into buffer objects.\n";
    
    // Initialize instruction buffer
    void *bufInstr = bo_instr.map<void *>();
    memcpy(bufInstr, instr_v.data(), instr_v.size() * sizeof(int));

    // GETTING INPUT DATA
    auto fileName = "./data/hdf5/input1lba.h5";
    auto dataSetName = "XST_2025-04-11T07:42:11.000_SB027";
    
    // Get visibilities, baselines and frequency
    auto [realVisVector, imagVisVector] = getVisibilitiesVector(fileName, dataSetName); // done
    auto [uVector, vVector, wVector] = computeBaselines(getXYZCoordinates(fileName)); // done
    float frequency = getFrequency(fileName, dataSetName); // done
    // Generating lmn
    auto x = linspace(-1.0f, 1.0f, MATRIX_DIM_SIZE1);
    auto y = linspace(1.0f, -1.0f, MATRIX_DIM_SIZE1);
    auto [lVector, mVector] = meshgrid(x, y); // done
    auto nVector = compute_n(lVector, mVector, MATRIX_DIM_SIZE1, MATRIX_DIM_SIZE1); // done

    // FORMATTING THE INPUT
    // Separating per input
    DATATYPE freq = (DATATYPE) frequency; // 50MHz
    DATATYPE SpeedOfLight = 299792458; // m/s
    DATATYPE factor = -2 * M_PI / SpeedOfLight;
    DATATYPE ff = freq * factor; // frequency factor
    
    vector<DATATYPE> visR = castVector<DATATYPE>(realVisVector); // real component of visibilities
    vector<DATATYPE> visC = castVector<DATATYPE>(imagVisVector); // imaginary component of visibilities
    
    vector<DATATYPE> u = castVector<DATATYPE>(uVector); // baselines, u
    vector<DATATYPE> v = castVector<DATATYPE>(vVector); // baselines, v
    vector<DATATYPE> w = castVector<DATATYPE>(wVector); // baselines, w

    vector<DATATYPE> l = castVector<DATATYPE>(lVector); // l
    vector<DATATYPE> m = castVector<DATATYPE>(mVector); // m
    vector<DATATYPE> n = castVector<DATATYPE>(nVector); // n
    

    // Format input 0 (frequency factor + lmn)
    DATATYPE *bufInOut0 = bo_inout0.map<DATATYPE *>();
    vector<DATATYPE> factor_vec(INOUT_FACTOR_VOLUME);

    vector<DATATYPE> freq_vector(INOUT1_VOLUME, 0); // Frequency factor with padding to add to the lmn data stream
    freq_vector[0] = ff;

    vector<vector<DATATYPE>> lmnInputs = {l, m, n};
    vector<DATATYPE> lmn_vector(INOUT2_VOLUME * N_LMN, 0);
    for(int i=0; i<INOUT2_VOLUME/CV; i++) {
        for(int j=0; j<CV; j++) {
            for(int lmn=0; lmn<N_LMN; lmn++) {
                auto lmnI = i*N_LMN+lmn;
                lmn_vector[lmnI*CV + j] = lmnInputs[lmn][i*CV + j];
            }
        }
    }
    // for(int i=0; i<2; i++)
    //     for(int lmn=0; lmn<N_LMN; lmn++) 
    //         for(int j=0; j<5; j++) {
    //             auto lmnI = i*N_LMN+lmn;
    //             cout << lmn_vector[lmnI*CV + j] << ", ";
    //         }
    // cout << endl;
    copy(begin(freq_vector), end(freq_vector), begin(factor_vec));
    copy(begin(lmn_vector), end(lmn_vector), begin(factor_vec) + freq_vector.size());
    

    // Format inputs 1 and 2 (Main inputs A and B)
    DATATYPE *bufInOut1 = bo_inout1.map<DATATYPE *>();
    DATATYPE *bufInOut2 = bo_inout2.map<DATATYPE *>();
    vector<DATATYPE> main_inputA(FULL_INPUT_VOL);
    vector<DATATYPE> main_inputB(FULL_INPUT_VOL);
    vector<vector<DATATYPE>> mainInputs = {visR, visC, u, v, w};
    
    for(int v=0; v<NINPUTS; v++) {
        for(int i=0; i<INPUT_VOL; i++) {    
            main_inputA[i + v*INPUT_VOL] = mainInputs[v][i];
            main_inputB[i + v*INPUT_VOL] = mainInputs[v][i + INPUT_VOL];
        }
    }
    // for(int i=0; i<NINPUTS; i++) {
    //     for(int j=0; j<5; j++) {
    //         cout << main_inputB[i*INPUT_VOL + j] << ", ";
    //     }
    //     cout << endl;
    // }

    // Initialize data buffers
    memcpy(bufInOut0, factor_vec.data(), INOUT_FACTOR_SIZE);
    memcpy(bufInOut1, main_inputA.data(), FULL_INPUT_SIZE);
    memcpy(bufInOut2, main_inputB.data(), FULL_INPUT_SIZE);
    
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
    float npu_time_min = 999999999999;
    float npu_time_max = 0;

    // ------------------------------------------------------
    // Main run loop
    // ------------------------------------------------------
    for (unsigned iter = 0; iter < num_iter; iter++) {        
        // Run kernel
        if (verbosity >= 1)
            cout << "Running Kernel " << iter << ".\n";
        auto start = chrono::high_resolution_clock::now();
        unsigned int opcode = 3;
        xrt::run run;
        if(do_trace)
            run = kernel(opcode, bo_instr, instr_v.size(), bo_inout0, bo_inout1, bo_inout2, bo_inout4, bo_trace);
        else
            run = kernel(opcode, bo_instr, instr_v.size(), bo_inout0, bo_inout1, bo_inout2, bo_inout4);
        run.wait();
        auto stop = chrono::high_resolution_clock::now();
        bo_inout4.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
        if(do_trace)
            bo_trace.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
        
        if (iter < n_warmup_iterations) {
            /* Warmup iterations do not count towards average runtime. */
            continue;
        }
        // Copy trace and output to file
        uint32_t *bufTrace = bo_trace.map<uint32_t *>();
        vector<uint32_t> trace_vec(TRACE_SIZE/4);
        memcpy(trace_vec.data(), bufTrace, (trace_vec.size() * sizeof(uint32_t)));
    
        // Copy output results and verify they are correct
        bfloat16_t *bufOut = bo_inout4.map<bfloat16_t *>();
        vector<DATATYPE> out_vec(OUTPUT_VOL);
        memcpy(out_vec.data(), bufOut, (out_vec.size() * sizeof(DATATYPE)));

        // Printing part of the output
        if(iter == num_iter-1) {
            for(int i=0; i<MATRIX_DIM_SIZE1; i+=16) {
                for(int j=0; j<MATRIX_DIM_SIZE1; j+=16) {
                    cout << out_vec[i*MATRIX_DIM_SIZE1 + j] << ", ";
                }
                cout << endl;
            }   
        }

        // Verification
        if (do_verify) {
            if (verbosity >= 1) {
                cout << "Verifying results ..." << endl;
            }
            auto vstart = chrono::system_clock::now();
            // errors = verify(INOUT1_VOLUME, AVec, CVec, verbosity);
            auto vstop = chrono::system_clock::now();
            float vtime = chrono::duration_cast<chrono::seconds>(vstop - vstart).count();
            if (verbosity >= 1) {
                cout << "Verify time: " << vtime << "secs." << endl;
            }
        } else {
            if (verbosity >= 1)
                cout << "WARNING: results not verified." << endl;
        }
        
        // Write trace values if trace_size > 0
        if (trace_size > 0) {
            test_utils::write_out_trace(((char *)bufOut) + OUT_SIZE, trace_size, vm["trace_file"].as<string>());
            cout << vm["trace_file"].as<string>() << endl;
        }

        // Accumulate run times
        float npu_time = chrono::duration_cast<chrono::microseconds>(stop - start).count();
        npu_time_total += npu_time;
        npu_time_min = (npu_time < npu_time_min) ? npu_time : npu_time_min;
        npu_time_max = (npu_time > npu_time_max) ? npu_time : npu_time_max;
    }

    // ------------------------------------------------------
    // Print verification and timing results
    // ------------------------------------------------------
    
    // TODO - Mac count to guide gflops
    float macs = 0;
    
    cout << endl
        << "Avg NPU time: " << npu_time_total / n_iterations << "us."
        << endl;
    if (macs > 0)
        cout << "Avg NPU gflops: "
        << macs / (1000 * npu_time_total / n_iterations)
        << endl;
    
    cout << endl
        << "Min NPU time: " << npu_time_min << "us."
        << endl;
    if (macs > 0)
        cout << "Max NPU gflops: " << macs / (1000 * npu_time_min)
        << endl;
    
    cout << endl
        << "Max NPU time: " << npu_time_max << "us."
        << endl;
    if (macs > 0)
        cout << "Min NPU gflops: " << macs / (1000 * npu_time_max)
        << endl;
}
