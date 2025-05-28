#include <fstream>
#include <iostream>
#include <vector>
#include <format>
#include <cstring>
#include <cstdlib>  // For system()

using namespace std;

void save1DArrayToCSV(const vector<float>& data, const string& filename);
void save2DArrayToCSV(const vector<vector<float>>& data, const string& filename);
void callPythonScript(const char *filename);