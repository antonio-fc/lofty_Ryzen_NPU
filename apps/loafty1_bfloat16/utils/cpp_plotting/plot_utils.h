#include <fstream>
#include <iostream>
#include <vector>
#include <format>
#include <cstring>
#include <cstdlib>  // For system()

void save1DArrayToCSV(const std::vector<float>& data, const std::string& filename);
void save2DArrayToCSV(const std::vector<std::vector<float>>& data, const std::string& filename);
void callPythonScript(const char *filename);