#include "plot_utils.h"

// Function to save 1D array (vector) to CSV
void save1DArrayToCSV(const vector<float>& data, const string& filename) {
    ofstream file(filename);
    if (!file.is_open()) {
        cerr << "Error: Could not open file " << filename << endl;
        return;
    }
    for (size_t i = 0; i < data.size(); ++i) {
        file << data[i];
        if (i < data.size() - 1) file << ",";
    }
    file << "\n";
    file.close();
}

// Function to save 2D array (vector of vectors) to CSV
void save2DArrayToCSV(const vector<vector<float>>& data, const string& filename) {
    ofstream file(filename);
    if (!file.is_open()) {
        cerr << "Error: Could not open file " << filename << endl;
        return;
    }
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
    int result = system(command);
    if (result != 0) {
        cerr << "Error running Python script\n";
    }
}
