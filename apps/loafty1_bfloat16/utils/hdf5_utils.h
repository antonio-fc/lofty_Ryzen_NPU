#include <hdf5.h>
#include <vector>
#include <string>
#include <iostream>
#include <cmath>

using namespace std;

using Matrix = vector<vector<float>>;
using VisibilitiesPolar = pair<Matrix, Matrix>;
using Visibilities = pair<vector<float>, vector<float>>;
using Baselines = tuple<vector<float>, vector<float>, vector<float>>;

VisibilitiesPolar getPolarVisibilitiesVector(const char *filePath, const char *datasetName);
Visibilities getVisibilitiesVector(const char *filePath, const char *datasetName);
Matrix getXYZCoordinates(const char *filePath);
Baselines computeBaselines(const Matrix& station_xyz);
float getFrequency(const char *filePath, const char *datasetName);
vector<float> linspace(float start, float end, int num);
pair<Matrix, Matrix> meshgrid(const vector<float>& x, const vector<float>& y);
Matrix compute_n(const Matrix& l, const Matrix& m);