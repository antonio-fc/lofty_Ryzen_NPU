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
#include <string_view>
#include <limits>

#include "xrt/xrt_bo.h"
#include "xrt/xrt_device.h"
#include "xrt/xrt_kernel.h"

#include "../utils/test_utils.h"
#include "../utils/hdf5/hdf5_utils.h"
#include "../utils/cpp_plotting/plot_utils.h"
#include "../utils/accuracy_utils.hpp"

#include "pmt.h"

using namespace std;
namespace po = boost::program_options;

#ifndef DATATYPES_USING_DEFINED
#define DATATYPES_USING_DEFINED
    using DATATYPE = bfloat16_t;
#endif

template<typename... Args>
string dyna_print(std::string_view rt_fmt_str, Args&&... args) {
    return std::vformat(rt_fmt_str, std::make_format_args(args...));
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
    auto trace_file = vm["trace_file"].as<std::string>();
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
    const int NCHANNELS = 2; // to split the inputs in objects

    const int FREQ_VOL = 2;
    const int BASELINES_VOLUME = MSIZE * 3;
    const int VIS_VOLUME = MSIZE * 2;
    const int INOUT2_VOLUME = BSIZE;
    const int LMN_VOLUME = INOUT2_VOLUME * N_LMN;
    const int OUTPUT_VOL = BSIZE;

    const size_t FREQ_SIZE = FREQ_VOL * sizeof(DATATYPE);
    const size_t BASELINES_SIZE = BASELINES_VOLUME * sizeof(DATATYPE);
    const size_t VIS_SIZE = VIS_VOLUME * sizeof(DATATYPE);
    const size_t LMN_SIZE = LMN_VOLUME * sizeof(DATATYPE);

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

    // Power measure stuff
    std::unique_ptr<pmt::PMT> sensor(pmt::Create("powersensor3"));
    // std::unique_ptr<pmt::PMT> sensor(pmt::Create("nvml"));
    pmt::State start, end_;
    start = sensor->Read();
    auto sum = 0;
    for(auto i=0; i<1000000000; i++)
        sum+=1;
    end_ = sensor->Read();
    cout<<sensor->joules(start, end_) <<" [J]"<<endl;
    cout<<sensor->watts(start, end_) <<" [W]"<<endl;
    cout<<sensor->seconds(start, end_)<<" [S]"<<endl;

    // ------------------------------------------------------
    // Initialize input/ output buffer sizes and sync them
    // ------------------------------------------------------
    auto bo_instr = xrt::bo(device, instr_v.size() * sizeof(int), XCL_BO_FLAGS_CACHEABLE, kernel.group_id(1));
    auto bo_inout0 = xrt::bo(device, FREQ_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(3));
    auto bo_inout1 = xrt::bo(device, BASELINES_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(4));
    auto bo_inout2 = xrt::bo(device, VIS_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(5));
    auto bo_inout3 = xrt::bo(device, LMN_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(6));
    auto bo_inout4 = xrt::bo(device, OUT_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(7));
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

    // Getting data from hdf5 file
    const string fileName = "inputLBA2";
    const string filePath = format("./data/hdf5/{}.h5", fileName);
    auto datasetNames = getDatasetNames(filePath.data()); // size = 512
    for(auto dsidx=0; dsidx<datasetNames.size(); dsidx+=1) {
        // GETTING INPUT DATA
        auto dataSetNameString = datasetNames[dsidx];
        auto dataSetName = (const char*) dataSetNameString.data();
        auto subbandIndex = getSubbandIndex(dataSetName);
        cout << endl << "Dataset Name: " << dataSetName << endl;
        cout << "   Subband: " << subbandIndex << endl;
        
        // Get visibilities, baselines and frequency
        auto [realVisVector, imagVisVector] = getVisibilitiesVector(filePath.data(), dataSetName); // done
        auto [uVector, vVector, wVector] = computeBaselines(getXYZCoordinates(filePath.data())); // done
        float frequency = getFrequency("./data/hdf5/inputLBA1.h5", dataSetName); // done
        cout << "   Frequency: " << frequency << endl;

        // Generating lmn
        auto x = linspace(-1.0f, 1.0f, MATRIX_DIM_SIZE1);
        auto y = linspace(1.0f, -1.0f, MATRIX_DIM_SIZE1);
        auto [lVector, mVector] = meshgrid(x, y); // done
        auto nVector = compute_n(lVector, mVector, MATRIX_DIM_SIZE1, MATRIX_DIM_SIZE1); // done
        auto nan_mask_v = getNanMask(lVector, mVector, MATRIX_DIM_SIZE1, MATRIX_DIM_SIZE1);

        // FORMATTING THE INPUT
        // Separating per input
        DATATYPE freq = (DATATYPE) frequency;
        DATATYPE SpeedOfLight = 299792458; // m/s
        DATATYPE factor = static_cast<DATATYPE>(-2 * M_PI / SpeedOfLight);
        DATATYPE ff = freq * factor; // frequency factor
        
        vector<DATATYPE> visR = castVector<DATATYPE>(realVisVector); // real component of visibilities
        vector<DATATYPE> visI = castVector<DATATYPE>(imagVisVector); // imaginary component of visibilities
        
        vector<DATATYPE> u = castVector<DATATYPE>(uVector); // baselines, u
        vector<DATATYPE> v = castVector<DATATYPE>(vVector); // baselines, v
        vector<DATATYPE> w = castVector<DATATYPE>(wVector); // baselines, w

        vector<DATATYPE> l = castVector<DATATYPE>(lVector); // l
        vector<DATATYPE> m = castVector<DATATYPE>(mVector); // m
        vector<DATATYPE> n = castVector<DATATYPE>(nVector); // n
        // Generating nan_mask
        // auto nan_mask = n | views::transform([](float x) { return x != x; });
        // vector<bool> nan_mask_v(nan_mask.begin(), nan_mask.end());

        // Format input
        DATATYPE *bufInOut0 = bo_inout0.map<DATATYPE *>();
        DATATYPE *bufInOut1 = bo_inout1.map<DATATYPE *>();
        DATATYPE *bufInOut2 = bo_inout2.map<DATATYPE *>();
        DATATYPE *bufInOut3 = bo_inout3.map<DATATYPE *>();

        // Format frequency input
        vector<DATATYPE> freq_vector = {ff, ff};

        // Format baselines input
        vector<DATATYPE> baselines_vector(BASELINES_VOLUME);
        const auto HALF_INPUT_VOL = MSIZE/2;
        const auto HALF_BL_VOL = BASELINES_VOLUME/2;
        for(auto h=0; h<2; h++)
            for(auto i=0; i<HALF_INPUT_VOL; i++) {
                auto index = h*HALF_INPUT_VOL+i;
                auto uIndex = h*HALF_BL_VOL + i;
                auto vIndex = h*HALF_BL_VOL + HALF_INPUT_VOL + i;
                auto wIndex = h*HALF_BL_VOL + 2*HALF_INPUT_VOL + i;

                baselines_vector[uIndex] = u[index];
                baselines_vector[vIndex] = v[index];
                baselines_vector[wIndex] = w[index];
            }

        // Format visibilities input
        vector<DATATYPE> vis_vector(VIS_VOLUME);
        const auto HALF_VIS_VOL = VIS_VOLUME/2;
        for(auto h=0; h<2; h++)
            for(auto i=0; i<HALF_INPUT_VOL; i++) {
                auto index = h*HALF_INPUT_VOL+i;
                auto rIndex = h*HALF_VIS_VOL + i;
                auto iIndex = h*HALF_VIS_VOL + HALF_INPUT_VOL + i;

                vis_vector[rIndex] = visR[index];
                vis_vector[iIndex] = visI[index];
            }

        // Format lmn input
        vector<DATATYPE> lmn_vector(LMN_VOLUME);
        vector<vector<DATATYPE>> lmnInputs = {l, m, n};
        for(int i=0; i<INOUT2_VOLUME/CV; i++) {
            for(int j=0; j<CV; j++) {
                for(int lmn=0; lmn<N_LMN; lmn++) {
                    auto index = i*N_LMN+lmn;
                    lmn_vector[index*CV + j] = lmnInputs[lmn][i*CV + j];
                }
            }
        }

        // Initialize data buffers
        memcpy(bufInOut0, freq_vector.data(), FREQ_SIZE);
        memcpy(bufInOut1, baselines_vector.data(), BASELINES_SIZE);
        memcpy(bufInOut2, vis_vector.data(), VIS_SIZE);
        memcpy(bufInOut3, lmn_vector.data(), LMN_SIZE);
        
        // Sync buffers to update input buffer values
        bo_instr.sync(XCL_BO_SYNC_BO_TO_DEVICE);
        bo_inout0.sync(XCL_BO_SYNC_BO_TO_DEVICE);
        bo_inout1.sync(XCL_BO_SYNC_BO_TO_DEVICE);
        bo_inout2.sync(XCL_BO_SYNC_BO_TO_DEVICE);
        bo_inout3.sync(XCL_BO_SYNC_BO_TO_DEVICE);

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
                run = kernel(opcode, bo_instr, instr_v.size(), bo_inout0, bo_inout1, bo_inout2, bo_inout3, bo_inout4, bo_trace);
            else
                run = kernel(opcode, bo_instr, instr_v.size(), bo_inout0, bo_inout1, bo_inout2, bo_inout3, bo_inout4);
            run.wait();
            auto stop = chrono::high_resolution_clock::now();
            bo_inout4.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
            if (iter < n_warmup_iterations) {
                /* Warmup iterations do not count towards average runtime. */
                continue;
            }
        
            // Copy output results and verify they are correct
            DATATYPE *bufOut;
            if (iter == num_iter - 1) {
                // Output
                bufOut = bo_inout4.map<DATATYPE *>();
                for(auto i=0; i<OUT_SIZE; i++)
                    if(nan_mask_v[i])
                        bufOut[i] = static_cast<DATATYPE>(nan("0"));
                vector<DATATYPE> out_vec(OUTPUT_VOL);
                memcpy(out_vec.data(), bufOut, (out_vec.size() * sizeof(DATATYPE)));
                reverse(out_vec.begin(), out_vec.end());
                // string outFileName = dyna_print("{}_{}.csv", fileName, subbandString);
                // string file_path = format("utils/cpp_plotting/file_plotting/{}", outFileName);
                // save1DArrayToCSV(castVector<float>(out_vec), file_path);
                // cout << "Saved Out in File: " << outFileName << endl;

                // Verification
                auto ref = image_reference(realVisVector, imagVisVector, uVector, vVector, wVector, frequency, MATRIX_DIM_SIZE1, MATRIX_DIM_SIZE1);
                // string outFileNameRef = dyna_print("{}_{}_ref.csv", fileName, subbandString);
                // string file_path_ref = format("utils/cpp_plotting/file_plotting/{}", outFileNameRef);
                // save1DArrayToCSV(castVector<float>(ref), file_path_ref);
                // cout << "Saved Ref in File: " << outFileNameRef << endl;
                if (do_verify >= 1) {
                    // reportAccuracy(castVector<float>(out_vec), ref, nan_mask_v, "");
                    auto file_path = dyna_print("accuracy/set1/acc0_{}.csv", MATRIX_DIM_SIZE1);
                    reportAccuracyCSV(castVector<float>(out_vec), ref, nan_mask_v, subbandIndex, frequency, file_path);
                }
            }

            // Copy trace and output to file
            if(do_trace && iter==num_iter-1) {
                char *bufTrace = bo_trace.map<char *>();
                std::vector<char> trace_vec(TRACE_SIZE/sizeof(char));
                memcpy(trace_vec.data(), bufTrace, TRACE_SIZE);
                
                cout << "   Trace Data Output Size: " << TRACE_SIZE/4 << " into file " << trace_file << endl;
                test_utils::write_out_trace(bufTrace, TRACE_SIZE, trace_file);
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
        cout << "   Avg NPU time: " << npu_time_total / n_iterations << "us." << endl;    
        cout << "   Min NPU time: " << npu_time_min << "us." << endl;
        cout << "   Max NPU time: " << npu_time_max << "us." << endl;
    }
}
