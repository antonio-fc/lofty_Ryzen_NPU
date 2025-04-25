#include "plot_utils.h"

// Function to save 1D array (vector) to CSV
void save1DArrayToCSV(const std::vector<float>& data, const std::string& filename) {
    std::ofstream file(filename);
    for (size_t i = 0; i < data.size(); ++i) {
        file << data[i];
        if (i < data.size() - 1) file << ",";
    }
    file << "\n";
    file.close();
}

// Function to save 2D array (vector of vectors) to CSV
void save2DArrayToCSV(const std::vector<std::vector<float>>& data, const std::string& filename) {
    std::ofstream file(filename);
    for (const auto& row : data) {
        for (size_t j = 0; j < row.size(); ++j) {
            file << row[j];
            if (j < row.size() - 1) file << ",";
        }
        file << "\n";
    }
    file.close();
}

// Function to call Python script
void callPythonScript(const char *filename) {
    char command[100];
    strcpy(command, "python3 ");
    strcat(command, filename);
    int result = std::system(command);
    if (result != 0) {
        std::cerr << "Error running Python script\n";
    }
}
