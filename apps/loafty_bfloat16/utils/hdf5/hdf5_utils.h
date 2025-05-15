#include <hdf5.h>
#include <vector>
#include <string>
#include <iostream>
#include <cmath>
#include <cstring>

using namespace std;

using Matrix = vector<vector<float>>;
using VisibilitiesPolar = pair<Matrix, Matrix>;
using Visibilities = pair<vector<float>, vector<float>>;
using Baselines = tuple<vector<float>, vector<float>, vector<float>>;

vector<string> getDatasetNames(const char *filePath);
VisibilitiesPolar getPolarVisibilitiesVector(const char *filePath, const char *datasetName);
Visibilities getVisibilitiesVector(const char *filePath, const char *datasetName);
Matrix getXYZCoordinates(const char *filePath);
Baselines computeBaselines(const Matrix& coordXYZ);
int getSubbandIndex(string dataSetName);
float getFrequency(const char *filePath, const char *datasetName);
vector<float> linspace(float start, float end, int num);
pair<vector<float>, vector<float>> meshgrid(const vector<float>& x, const vector<float>& y);
vector<float> compute_n(const vector<float>& l, const vector<float>& m, size_t rows, size_t cols);
vector<bool> getNanMask(const vector<float>& l, const vector<float>& m, size_t rows, size_t cols);