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
#include "../utils/power_utils.hpp"

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

void writeVectorToCSV(const std::string& filename,
                      const std::vector<float>& vec,
                      const std::string& header = "Values") {
    std::ofstream file(filename);
    if (!file.is_open()) {
        std::cerr << "Error: Cannot open file " << filename << " for writing.\n";
        return;
    }

    // Optional header
    file << header << "\n";

    // Write each value in a new row
    for (float value : vec) {
        file << value << "\n";
    }

    file.close();
}

void writeVectorsToCSV(const std::string& filename,
                       const std::vector<float>& v1,
                       const std::vector<float>& v2,
                       const std::vector<float>& v3) {
    std::ofstream file(filename);
    if (!file.is_open()) {
        std::cerr << "Error: Cannot open file " << filename << " for writing.\n";
        return;
    }

    // Write CSV header
    file << "Vector1,Vector2,Vector3\n";

    // Determine the maximum size
    size_t maxSize = std::max({v1.size(), v2.size(), v3.size()});

    // Write each row
    for (size_t i = 0; i < maxSize; ++i) {
        file << (i < v1.size() ? std::to_string(v1[i]) : "")
             << "," << (i < v2.size() ? std::to_string(v2[i]) : "")
             << "," << (i < v3.size() ? std::to_string(v3[i]) : "")
             << "\n";
    }

    file.close();
}

void writeColumnsToCSV(const std::string& filename,
                       const std::vector<std::vector<float>>& columns) {
    if (columns.empty()) {
        std::cerr << "Error: No data to write.\n";
        return;
    }

    size_t numColumns = columns.size();
    size_t numRows = columns[0].size();

    // Check all columns have the same size
    for (const auto& col : columns) {
        if (col.size() != numRows) {
            std::cerr << "Error: All vectors must have the same length.\n";
            return;
        }
    }

    std::ofstream file(filename);
    if (!file.is_open()) {
        std::cerr << "Error: Cannot open file " << filename << " for writing.\n";
        return;
    }

    // Optional: write a header (Column1, Column2, ...)
    for (size_t i = 0; i < numColumns; ++i) {
        file << "Column" << (i + 1);
        if (i < numColumns - 1) file << ",";
    }
    file << "\n";

    // Write row by row
    for (size_t row = 0; row < numRows; ++row) {
        for (size_t col = 0; col < numColumns; ++col) {
            file << columns[col][row];
            if (col < numColumns - 1) file << ",";
        }
        file << "\n";
    }

    file.close();
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

    const int CV = 64; // number of consecutive values in output stream
    const int N_LMN = 3; // one for each l, m and n, just to avoid "magic numbers in code"

    const int INOUT0_VOLUME = MSIZE;
    const int INOUT1_VOLUME = CV * N_LMN; // padding the scalar of the frequency factor to be in the same stream as lmn values
    const int INOUT2_VOLUME = BSIZE;
    const int INOUT_LMN_VOLUME = INOUT2_VOLUME * N_LMN; // size of the stream for the lmn values and the frequency factor

    const int NINPUTS = 5;
    const int NCHANNELS = 2; // number of ct groups for distribution
    
    const int FREQ_VOL = 2;
    const int INPUT_VOL = MSIZE/NCHANNELS;
    const int FULL_INPUT_VOL = (INPUT_VOL + FREQ_VOL) * NINPUTS;
    const int OUTPUT_VOL = BSIZE;
    
    const size_t FULL_INPUT_SIZE = FULL_INPUT_VOL * sizeof(DATATYPE);
    const size_t INOUT_LMN_SIZE = INOUT_LMN_VOLUME * sizeof(DATATYPE);
    
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
    // std::unique_ptr<pmt::PMT> sensor(pmt::Create("powersensor3"));
    // std::unique_ptr<pmt::PMT> sensor(pmt::Create("nvml"));
    // pmt::State start, end_;
    // start = sensor->Read();
    // auto sum = 0;
    // for(auto i=0; i<1000000000; i++)
    //     sum+=1;
    // end_ = sensor->Read();
    // cout<<sensor->joules(start, end_) <<" [J]"<<endl;
    // cout<<sensor->watts(start, end_) <<" [W]"<<endl;
    // cout<<sensor->seconds(start, end_)<<" [S]"<<endl;

    // ------------------------------------------------------
    // Initialize input/ output buffer sizes and sync them
    // ------------------------------------------------------
    auto bo_instr = xrt::bo(device, instr_v.size() * sizeof(int), XCL_BO_FLAGS_CACHEABLE, kernel.group_id(1));
    auto bo_inout0 = xrt::bo(device, INOUT_LMN_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(3));
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

    // Getting data from hdf5 file
    const string fileName = "inputLBA1";
    const string filePath = format("./data/hdf5/{}.h5", fileName);
    auto datasetNames = getDatasetNames(filePath.data()); // size = 512
    auto [uVector, vVector, wVector] = computeBaselines(getXYZCoordinates(filePath.data())); // done
    std::vector<std::vector<float>> visibiltiesReal;
    std::vector<std::vector<float>> visibiltiesImag;
    std::vector<float> frequencies;
    // writeVectorsToCSV("inputs/baselines.csv", uVector, vVector, wVector);
    for(auto dsidx=0; dsidx<datasetNames.size(); dsidx+=1) {
        // GETTING INPUT DATA
        auto dataSetNameString = datasetNames[dsidx];
        auto dataSetName = (const char*) dataSetNameString.data();
        auto subbandIndex = getSubbandIndex(dataSetName);
        cout << endl << "Dataset Name: " << dataSetName << endl;
        cout << "   Subband: " << subbandIndex << endl;
        
        // Get visibilities, baselines and frequency
        auto [realVisVector, imagVisVector] = getVisibilitiesVector(filePath.data(), dataSetName); // done
        visibiltiesReal.push_back(realVisVector);
        visibiltiesImag.push_back(imagVisVector);
        float frequency = getFrequency("./data/hdf5/inputLBA1.h5", dataSetName); // done
        frequencies.push_back(frequency);
    }
    writeVectorToCSV("inputs/frequencies.csv", frequencies);
    writeColumnsToCSV("inputs/visibilitiesReal.csv", visibiltiesReal);
    writeColumnsToCSV("inputs/visibilitiesImag.csv", visibiltiesImag);
    
}
