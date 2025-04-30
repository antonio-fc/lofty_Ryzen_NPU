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
#include "utils/vector_utils.hpp"

using namespace std;
namespace po = boost::program_options;

#ifndef DATATYPES_USING_DEFINED
#define DATATYPES_USING_DEFINED
    using DATATYPE = bfloat16_t;
#endif

vector<float> load1DCSV(const string& filename) {
    vector<float> data;
    ifstream file(filename);

    if (!file.is_open()) {
        throw runtime_error("Could not open file: " + filename);
    }

    string line;
    while (getline(file, line)) {
        stringstream ss(line);
        string value;
        while (getline(ss, value, ',')) {
            try {
                data.push_back(stof(value));
            } catch (const invalid_argument& e) {
                cerr << "Warning: invalid value '" << value << "' skipped.\n";
            }
        }
    }

    file.close();
    return data;
}

vector<float> image_reference(vector<float> visR, vector<float> visI, vector<float> u, vector<float> v, vector<float> w, float freq, size_t npix_l, size_t npix_m) {
    const float SL = 299792458; // m/s
    float factor = -2 * freq * M_PI / SL;
    vector<float> img(npix_l*npix_m);
    auto x = linspace(-1.0f, 1.0f, npix_l);
    auto y = linspace(1.0f, -1.0f, npix_m); 
    auto [l, m] = meshgrid(x, y);
    auto n = compute_n(l, m, npix_l, npix_m);
    for(auto i=0; i<npix_l; i++) {
        for(auto j=0; j<npix_m; j++) {
            // Scale baselines with l, m and n
            auto index = i*npix_m + j;
            auto scaleU = u * l[index];
            auto scaleV = v * m[index];
            auto scaleW = w * n[index];
            // Add scaled baselines
            auto blAdd = scaleU + scaleV + scaleW;
            // Multiply by frequency factor
            auto scaleFactor = blAdd * factor;
            // Multiply with visibilties
            auto cos_v = cos(scaleFactor);
            auto sin_v = sin(scaleFactor);
            // Multiply with visibilities
            auto real = visR * cos_v;
            auto imag = visI * sin_v;
            // Subtract real and imag
            auto vis_mult = real - imag;
            // Get the mean
            auto result = mean(vis_mult);
            // Save result
            auto index_out = (npix_l - i - 1)*npix_m + npix_m - j - 1;
            img[index_out] = result;
        }
    }
    return img;
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

    const int CV = 64; // number of consecutive values in output stream
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
    auto fileName = "./data/hdf5/inputLBA0.h5";
    auto datasetNames = getDatasetNames(fileName);
    auto dataSetName = (const char*) datasetNames[213].data();
    cout << "Dataset Name: " << dataSetName << endl;
    cout << "Subband: " << 1 << endl;
    
    // Get visibilities, baselines and frequency
    auto [realVisVector, imagVisVector] = getVisibilitiesVector(fileName, dataSetName); // done
    auto [uVector, vVector, wVector] = computeBaselines(getXYZCoordinates(fileName)); // done
    float frequency = getFrequency(fileName, dataSetName); // done
    cout << "Frequency: " << frequency << endl;
    // Generating lmn
    auto x = linspace(-1.0f, 1.0f, MATRIX_DIM_SIZE1);
    auto y = linspace(1.0f, -1.0f, MATRIX_DIM_SIZE1);
    auto [lVector, mVector] = meshgrid(x, y); // done
    auto nVector = compute_n(lVector, mVector, MATRIX_DIM_SIZE1, MATRIX_DIM_SIZE1); // done

    // FORMATTING THE INPUT
    // Separating per input
    DATATYPE freq = (DATATYPE) frequency;
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
    
    // Generating nan_mask
    auto nan_mask = n | views::transform([](float x) { return x != x; });
    vector<bool> nan_mask_v(nan_mask.begin(), nan_mask.end());

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
        run = kernel(opcode, bo_instr, instr_v.size(), bo_inout0, bo_inout1, bo_inout2, bo_inout4);
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
            bufOut = bo_inout4.map<DATATYPE *>();
            vector<DATATYPE> out_vec(OUTPUT_VOL);
            memcpy(out_vec.data(), bufOut, (out_vec.size() * sizeof(DATATYPE)));
            for(auto i=0; i<OUT_SIZE; i++)
                out_vec[i] = nan_mask_v[i] ? nan("0") : out_vec[i];
            reverse(out_vec.begin(), out_vec.end());
            save1DArrayToCSV(castVector<float>(out_vec), "./utils/cpp_plotting/csv_files/output_cpp.csv");
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
    
    cout << endl
        << "Avg NPU time: " << npu_time_total / n_iterations << "us."
        << endl;
    
    cout << endl
        << "Min NPU time: " << npu_time_min << "us."
        << endl;
    
    cout << endl
        << "Max NPU time: " << npu_time_max << "us."
        << endl;
}
