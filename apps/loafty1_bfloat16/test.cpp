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
#include <hdf5.h>

#include "xrt/xrt_bo.h"
#include "xrt/xrt_device.h"
#include "xrt/xrt_kernel.h"

#include "utils/test_utils.h"

#ifndef DATATYPES_USING_DEFINED
#define DATATYPES_USING_DEFINED
    using DATATYPE = std::bfloat16_t;
#endif

namespace po = boost::program_options;

typedef struct {
    float real;
    float imaginary;
} VisData;

std::vector<std::vector<VisData>> visVector;

void H5GiterateCallback(hid_t group, const char *name, VisData *opdata /* in/out: operation data */) {
    hid_t dataset_id, filespace_id, datatype_id = -1;
    VisData *data = NULL;
    hsize_t dims[2];
    size_t total_elements = 0;

    datatype_id = H5Tcreate(H5T_COMPOUND, sizeof(VisData));
    // Insert fields into the compound type
    H5Tinsert(datatype_id, "x", 0 * sizeof(float), H5T_NATIVE_FLOAT);
    H5Tinsert(datatype_id, "y", 1 * sizeof(float), H5T_NATIVE_FLOAT);

    // printf("Processing dataset: %s\n", name);
    // if (oinfo->type != H5O_TYPE_DATASET) {
    //     return;
    // }

    /* Open the dataset */
    dataset_id = H5Dopen2(reinterpret_cast<hid_t>(opdata), name, H5P_DEFAULT);
    if (dataset_id < 0) {
        printf("Error opening dataset %s\n", name);
        return;
    }

    /* Get the dataset's space and dimensions */
    filespace_id = H5Dget_space(dataset_id);
    int ndims = H5Sget_simple_extent_ndims(filespace_id);
    if (ndims != 2) {
        printf("Dataset %s is not two-dimensional\n", name);
        if (data)
            free(data);
        if (filespace_id >= 0)
            H5Sclose(filespace_id);
        if (dataset_id >= 0)
            H5Dclose(dataset_id);
    }

    if (H5Sget_simple_extent_dims(filespace_id, dims, NULL) < 0) {
        printf("Error getting dimensions for dataset %s\n", name);
        if (data)
            free(data);
        if (filespace_id >= 0)
            H5Sclose(filespace_id);
        if (dataset_id >= 0)
            H5Dclose(dataset_id);
    }

    total_elements = dims[0] * dims[1];
    data = (VisData *)malloc(total_elements * sizeof(VisData));
    if (!data) {
        printf("Memory allocation failed for dataset %s\n", name);
        if (data)
            free(data);
        if (filespace_id >= 0)
            H5Sclose(filespace_id);
        if (dataset_id >= 0)
            H5Dclose(dataset_id);
    }

    /* Read the data */
    if (H5Dread(dataset_id, datatype_id,
        H5S_ALL,     // File space (entire dataset)
        H5S_ALL,     // Memory space (same as file)
        H5P_DEFAULT, // Transfer properties
        data) < 0) {
        printf("Error reading dataset %s\n", name);
        free(data);
        if (filespace_id >= 0)
            H5Sclose(filespace_id);
        if (dataset_id >= 0)
            H5Dclose(dataset_id);
    }

    /* Process the data as needed */
    printf("%llu" , dims[0]);
    printf("%llu", dims[1]);
    std::vector<std::vector<VisData>> visVec(dims[0], std::vector<VisData>(dims[1]));
    for (size_t x = 0; x < dims[0]; ++x) {
        for (size_t y = 0; y < dims[1]; ++y) {
            // printf("Element [%zu][%zu]: real = %.2f, imaginary = %.2f\n", x, y, data[(x * dims[0]) + y].real, data[(x * dims[0]) + y].imaginary);
            visVec[x][y] = data[(x * dims[0]) + y];
        }
    }
    visVector = visVec;
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
    
    // std::vector<uint32_t> instr_v = test_utils::load_instr_sequence(vm["instr"].as<std::string>());
    // if (verbosity >= 1)
    //     std::cout << "Sequence instr count: " << instr_v.size() << "\n";

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
    // auto bo_instr = xrt::bo(device, instr_v.size() * sizeof(int), XCL_BO_FLAGS_CACHEABLE, kernel.group_id(1));
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
    // void *bufInstr = bo_instr.map<void *>();
    // memcpy(bufInstr, instr_v.data(), instr_v.size() * sizeof(int));

    // OBTAINING INPUT DATA
    const char *filename = "./data/hdf5/input1lba.h5";
    hid_t file_id = H5Fopen(filename, H5F_ACC_RDONLY, H5P_DEFAULT);
    if (file_id < 0) {
        printf("Error opening file %s\n", filename);
        return -1;
    }

    hid_t group_id = H5Gopen2(file_id, "/", H5P_DEFAULT);
    if (group_id < 0) {
        printf("Error opening root group\n");
        H5Fclose(file_id);
    }
    
    /* Iterate over the group's datasets */
    H5Giterate(group_id, ".", NULL, reinterpret_cast<H5G_iterate_t>(H5GiterateCallback), reinterpret_cast<void *>(file_id));

    H5Gclose(group_id);

    std::cout << visVector[0][0].real << std::endl;
    std::cout << visVector[0][0].imaginary << std::endl;
    
    exit(32);
    // Separating per input
    DATATYPE freq = 50000000; // 50MHz
    DATATYPE SpeedOfLight = 299792458; // m/s
    DATATYPE factor = -2 * M_PI / SpeedOfLight;
    DATATYPE ff = freq * factor; // frequency factor
    // DATATYPE ff = 1.5;
    
    std::vector<DATATYPE> visR(INOUT0_VOLUME, 1); // real component of visibilities
    std::vector<DATATYPE> visC(INOUT0_VOLUME, 1); // imaginary component of visibilities
    
    std::vector<DATATYPE> u(INOUT0_VOLUME, 1); // baselines, u
    std::vector<DATATYPE> v(INOUT0_VOLUME, 1); // baselines, v
    std::vector<DATATYPE> w(INOUT0_VOLUME, 1); // baselines, w

    std::vector<DATATYPE> l(INOUT2_VOLUME, 1); // l
    std::vector<DATATYPE> m(INOUT2_VOLUME, 0); // m
    std::vector<DATATYPE> n(INOUT2_VOLUME, 0); // n
    

    // Format input 0 (frequency factor + lmn)
    DATATYPE *bufInOut0 = bo_inout0.map<DATATYPE *>();
    std::vector<DATATYPE> factor_vec(INOUT_FACTOR_VOLUME);

    std::vector<DATATYPE> freq_vector(INOUT1_VOLUME, 0); // Frequency factor with padding to add to the lmn data stream
    freq_vector[0] = ff;

    std::vector<std::vector<DATATYPE>> lmnInputs = {l, m, n};
    std::vector<DATATYPE> lmn_vector(INOUT2_VOLUME * N_LMN, 0);
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
    //             std::cout << lmn_vector[lmnI*CV + j] << ", ";
    //         }
    // std::cout << std::endl;
    std::copy(std::begin(freq_vector), std::end(freq_vector), std::begin(factor_vec));
    std::copy(std::begin(lmn_vector), std::end(lmn_vector), std::begin(factor_vec) + freq_vector.size());
    

    // Format inputs 1 and 2 (Main inputs A and B)
    DATATYPE *bufInOut1 = bo_inout1.map<DATATYPE *>();
    DATATYPE *bufInOut2 = bo_inout2.map<DATATYPE *>();
    std::vector<DATATYPE> main_inputA(FULL_INPUT_VOL);
    std::vector<DATATYPE> main_inputB(FULL_INPUT_VOL);
    std::vector<std::vector<DATATYPE>> mainInputs = {visR, visC, u, v, w};
    
    for(int v=0; v<NINPUTS; v++) {
        for(int i=0; i<INPUT_VOL; i++) {    
            main_inputA[i + v*INPUT_VOL] = mainInputs[v][i];
            main_inputB[i + v*INPUT_VOL] = mainInputs[v][i + INPUT_VOL];
        }
    }
    // for(int i=0; i<NINPUTS; i++) {
    //     for(int j=0; j<5; j++) {
    //         std::cout << main_inputB[i*INPUT_VOL + j] << ", ";
    //     }
    //     std::cout << std::endl;
    // }

    // Initialize data buffers
    memcpy(bufInOut0, factor_vec.data(), INOUT_FACTOR_SIZE);
    memcpy(bufInOut1, main_inputA.data(), FULL_INPUT_SIZE);
    memcpy(bufInOut2, main_inputB.data(), FULL_INPUT_SIZE);
    
    // Sync buffers to update input buffer values
    // bo_instr.sync(XCL_BO_SYNC_BO_TO_DEVICE);
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
            std::cout << "Running Kernel " << iter << ".\n";
        auto start = std::chrono::high_resolution_clock::now();
        unsigned int opcode = 3;
        xrt::run run;
        // if(do_trace)
        //     run = kernel(opcode, bo_instr, instr_v.size(), bo_inout0, bo_inout1, bo_inout2, bo_inout4, bo_trace);
        // else
        //     run = kernel(opcode, bo_instr, instr_v.size(), bo_inout0, bo_inout1, bo_inout2, bo_inout4);
        // run.wait();
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

        // Printing part of the output
        if(iter == num_iter-1) {
            for(int i=0; i<MATRIX_DIM_SIZE1; i+=32) {
                for(int j=0; j<8; j++) {
                    std::cout << out_vec[i*8 + j] << ", ";
                }
                std::cout << std::endl;
            }   
        }

        // Verification
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
}
