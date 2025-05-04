#include "hdf5_utils.h"

typedef struct {
    float r;  // real part
    float i;  // imag part
} complex_t;

vector<string> getDatasetNames(const char *filePath) {
    std::vector<std::string> dataset_names;
    // Openning file and group
    hid_t file_id = H5Fopen(filePath, H5F_ACC_RDONLY, H5P_DEFAULT);
    hid_t group_id = H5Gopen2(file_id, "/", H5P_DEFAULT);
    // Get the number of objects in the group
    hsize_t num_objs;
    H5Gget_num_objs(group_id, &num_objs);
    // Iterate through objects
    for (hsize_t i = 0; i < num_objs; ++i) {
        char name[128];
        ssize_t len = H5Gget_objname_by_idx(group_id, i, name, sizeof(name));

        if (len < 0) continue;

        int obj_type = H5Gget_objtype_by_idx(group_id, i);
        if (obj_type == H5G_DATASET) {
            dataset_names.emplace_back(name);
        }
    }
    H5Gclose(group_id);
    H5Fclose(file_id);
    return dataset_names;
}

VisibilitiesPolar getPolarVisibilitiesVector(const char *filePath, const char *datasetName) {
    // Openning file, group and dataset
    hid_t file_id = H5Fopen(filePath, H5F_ACC_RDONLY, H5P_DEFAULT);
    hid_t group_id = H5Gopen2(file_id, "/", H5P_DEFAULT);
    hid_t dataset_id = H5Dopen(group_id, datasetName, H5P_DEFAULT);
    hid_t dataspace_id = H5Dget_space(dataset_id);

    // Getting dataset type
    hid_t dtype = H5Dget_type(dataset_id);
    if (H5Tget_class(dtype) == H5T_COMPOUND) {
        int nmembers = H5Tget_nmembers(dtype);
        // printf("Compound type with %d fields:\n", nmembers);
        for (int i = 0; i < nmembers; ++i) {
            const char *name = H5Tget_member_name(dtype, i);
            H5T_class_t member_class = H5Tget_member_class(dtype, i);
            // printf("  Field %d: %s (class: %d)\n", i, name, member_class);
        }
    }

    // Get dimensions
    hsize_t dims[2];
    int ndims = H5Sget_simple_extent_dims(dataspace_id, dims, NULL);
    // printf("Dataset has %d dimensions: [%llu x %llu]\n", ndims, dims[0], dims[1]);

    // Define the matching compound datatype
    hid_t complex_type = H5Tcreate(H5T_COMPOUND, sizeof(complex_t));
    H5Tinsert(complex_type, "r", HOFFSET(complex_t, r), H5T_NATIVE_FLOAT);
    H5Tinsert(complex_type, "i", HOFFSET(complex_t, i), H5T_NATIVE_FLOAT);

    // Allocate memory
    complex_t *data = (complex_t *)malloc(dims[0] * dims[1] * sizeof(complex_t));

    // Read the dataset into memory
    herr_t  status = H5Dread(dataset_id, complex_type, H5S_ALL, H5S_ALL, H5P_DEFAULT, data);
    if (status < 0) {
        fprintf(stderr, "Failed to read dataset.\n");
        exit(1);
    }

    // Saving data in vectors
    vector<vector<float>> matrix_real(dims[0], vector<float>(dims[1]));
    vector<vector<float>> matrix_imag(dims[0], vector<float>(dims[1]));
    for (auto i = 0; i < dims[0]; ++i) {
        for (auto j = 0; j < dims[1]; ++j) {
            complex_t c = data[i * dims[1] + j];
            matrix_real[i][j] = c.r;
            matrix_real[i][j] = c.i;
        }
    }

    // Closing and cleaning up
    free(data);
    H5Sclose(dataspace_id);
    H5Dclose(dataset_id);
    H5Fclose(file_id);

    return {matrix_real, matrix_imag};
}

Visibilities getVisibilitiesVector(const char *filePath, const char *datasetName) {
    // Openning file, group and dataset
    hid_t file_id = H5Fopen(filePath, H5F_ACC_RDONLY, H5P_DEFAULT);
    hid_t group_id = H5Gopen2(file_id, "/", H5P_DEFAULT);
    hid_t dataset_id = H5Dopen(group_id, datasetName, H5P_DEFAULT);
    hid_t dataspace_id = H5Dget_space(dataset_id);

    // Getting dataset type
    hid_t dtype = H5Dget_type(dataset_id);
    if (H5Tget_class(dtype) == H5T_COMPOUND) {
        int nmembers = H5Tget_nmembers(dtype);
        // printf("Compound type with %d fields:\n", nmembers);
        for (int i = 0; i < nmembers; ++i) {
            const char *name = H5Tget_member_name(dtype, i);
            H5T_class_t member_class = H5Tget_member_class(dtype, i);
            // printf("  Field %d: %s (class: %d)\n", i, name, member_class);
        }
    }

    // Get dimensions
    hsize_t dims[2];
    int ndims = H5Sget_simple_extent_dims(dataspace_id, dims, NULL);

    // Define the matching compound datatype
    hid_t complex_type = H5Tcreate(H5T_COMPOUND, sizeof(complex_t));
    H5Tinsert(complex_type, "r", HOFFSET(complex_t, r), H5T_NATIVE_FLOAT);
    H5Tinsert(complex_type, "i", HOFFSET(complex_t, i), H5T_NATIVE_FLOAT);

    // Allocate memory
    complex_t *data = (complex_t *)malloc(dims[0] * dims[1] * sizeof(complex_t));

    // Read the dataset into memory
    herr_t status = H5Dread(dataset_id, complex_type, H5S_ALL, H5S_ALL, H5P_DEFAULT, data);
    if (status < 0) {
        fprintf(stderr, "Failed to read dataset.\n");
        exit(1);
    }

    // Separating the visibilities by polarization (https://git.astron.nl/bassa/lofty/-/blob/main/lofty/entry/imaging/xst.py)
    complex_t *cube_xx = (complex_t *)malloc(dims[0]/2 * dims[1]/2 * sizeof(complex_t)); // 96x96
    // complex_t *cube_xy = (complex_t *)malloc(dims[0]/2 * dims[1]/2 * sizeof(complex_t));
    // complex_t *cube_yx = (complex_t *)malloc(dims[0]/2 * dims[1]/2 * sizeof(complex_t));
    complex_t *cube_yy = (complex_t *)malloc(dims[0]/2 * dims[1]/2 * sizeof(complex_t));
    /*
    cube_xx = data[0::2, 0::2]
    cube_xy = data[0::2, 1::2]
    cube_yx = data[1::2, 0::2]
    cube_yy = data[1::2, 1::2]
    */

    for(int i=0; i<dims[0]/2; i++) {
        for (int j=0; j<dims[1]/2; j++) {
            auto cube_index = i * dims[1]/2 + j;
            auto data_index_xx = (i*2*dims[1]) + j*2;
            auto data_index_yy = ((i*2+1)*dims[1]) + j*2 + 1;
            cube_xx[cube_index] = data[data_index_xx];
            cube_yy[cube_index] = data[data_index_yy];
        }
    }

    // Visibilities = cube_xx + cube_yy
    auto total_size = (dims[0]/2) * (dims[1]/2);
    vector<float> vis_real(total_size);
    vector<float> vis_imag(total_size);
    for(int i=0; i<total_size; i++) {
        vis_real[i] = cube_xx[i].r + cube_yy[i].r;
        vis_imag[i] = cube_xx[i].i + cube_yy[i].i;
    }

    return {vis_real, vis_imag};
}

Matrix transposeMatrix(const Matrix& matrix) {
    if (matrix.empty()) return {};

    auto rows = matrix.size();
    auto cols = matrix[0].size();
    
    Matrix transposed(cols, vector<float>(rows));

    for (auto i = 0; i < rows; i++) {
        for (auto j = 0; j < cols; j++) {
            transposed[j][i] = matrix[i][j];
        }
    }

    return transposed;
}

Matrix MatrixMult(const Matrix& A, const Matrix& B) {
    
    if (A.empty() || B.empty() || A[0].size() != B.size()) {
        throw invalid_argument("Empty matrices are not suitable for multiplication");
    } else if(A[0].size() != B.size()) {
        throw invalid_argument("Matrix dimensions do not match for multiplication");
    }

    auto rowsA = A.size();
    auto colsA = A[0].size();  // also equal to rowsB
    auto colsB = B[0].size();

    Matrix result(rowsA, vector<float>(colsB));

    for (auto i = 0; i < rowsA; i++) {
        for (auto j = 0; j < colsB; j++) {
            for (auto k = 0; k < colsA; k++) {
                result[i][j] += A[i][k] * B[k][j];
            }
        }
    }

    return result;
}

Matrix getXYZCoordinates(const char *filePath) {
    // Getting the data from the file
    hid_t file_id = H5Fopen(filePath, H5F_ACC_RDONLY, H5P_DEFAULT);
    hid_t group_id = H5Gopen2(file_id, "/", H5P_DEFAULT);
    hid_t attr_id = H5Aopen(group_id, "antenna_reference_itrf", H5P_DEFAULT);
    hid_t attr_space = H5Aget_space(attr_id);
    int ndims = H5Sget_simple_extent_ndims(attr_space);
    hsize_t dims[2];
    H5Sget_simple_extent_dims(attr_space, dims, NULL);
    // cout << dims[0] << ", " << dims[1] << endl;
    float *data = (float*)malloc(dims[0] * dims[1] * sizeof(float));
    H5Aread(attr_id, H5T_NATIVE_FLOAT, data);
    
    // Saving PQR coordinates
    Matrix matrixPQR(dims[0], vector<float>(dims[1]));
    for(int i = 0; i < dims[0]; i++) { // 96
        for(int j = 0; j < dims[1]; j++) { // 3
            matrixPQR[i][j] = data[i*dims[1] + j];
        }
    }

    // Convert PQR to XYZ (From https://git.astron.nl/bassa/lofty/-/blob/main/lofty/utility/_station_xyz.py)
    Matrix rotationMatrix = { // identity matrix for now
        // {1, 0, 0},
        // {0, 1, 0},
        // {0, 0, 1},
        {-0.1195951054, 0.9928227484, 0.0000330969},
        {-0.7919544517, -0.0954186800, 0.6030782884},
        {0.5987530018, 0.0720990002, 0.7976820024},
    };
    Matrix matrixXYZ = transposeMatrix(MatrixMult(rotationMatrix, transposeMatrix(matrixPQR)));

    return matrixXYZ;
}

Baselines computeBaselines(const Matrix& coordXYZ) { // From https://git.astron.nl/bassa/lofty/-/blob/main/lofty/entry/imaging/xst.py#L66
    auto N = coordXYZ.size();  // number of stations
    auto total_size = N*N;
    vector<float> matrixU(total_size);
    vector<float> matrixV(total_size);
    vector<float> matrixW(total_size);

    for(auto i = 0; i < N; i++) {
        for(auto j = 0; j < N; j++) {
            auto index = i*N + j;
            matrixU[index] = coordXYZ[i][0] - coordXYZ[j][0];
            matrixV[index] = coordXYZ[i][1] - coordXYZ[j][1];
            matrixW[index] = coordXYZ[i][2] - coordXYZ[j][2];
            // cout << "(" << i << ", " << j << ") " << coordXYZ[i][0] << ", " << coordXYZ[i][1] << ", " << coordXYZ[i][2] << " - " << coordXYZ[j][0] << ", " << coordXYZ[j][1] << ", " << coordXYZ[j][2] << " = " << matrixU[index] << ", " << matrixV[index] << ", " << matrixW[index] << endl;
        }
    }

    return {matrixU, matrixV, matrixW};
}

int getSubbandIndex(string dataSetName) {
    auto subbandString = dataSetName.substr(dataSetName.length() - 3, dataSetName.length() - 1);
    if(dataSetName[dataSetName.length() - 3] == 'B') {
        subbandString = dataSetName.substr(dataSetName.length() - 2, dataSetName.length() - 1);
    }
    return stoi(subbandString);
}

float getFrequency(const char *filePath, const char *datasetName) {
    // Getting the subband data
    hid_t file_id = H5Fopen(filePath, H5F_ACC_RDONLY, H5P_DEFAULT);
    hid_t group_id = H5Gopen2(file_id, "/", H5P_DEFAULT);
    hid_t attr_id = H5Aopen(group_id, "subband_frequencies", H5P_DEFAULT);
    hid_t attr_space = H5Aget_space(attr_id);
    int ndims = H5Sget_simple_extent_ndims(attr_space);
    hsize_t dims[1];
    H5Sget_simple_extent_dims(attr_space, dims, NULL);
    float *data = (float*)malloc(dims[0] * sizeof(float));
    H5Aread(attr_id, H5T_NATIVE_FLOAT, data);

    // Getting the frequency index
    auto subbandIndex = getSubbandIndex(datasetName);
    auto subband = data[subbandIndex];
    
    return subband;
}

vector<float> linspace(float start, float end, int num) {
    vector<float> result(num);
    if (num == 1) {
        result[0] = start;
        return result;
    }

    float step = (end - start) / (num - 1);
    for (int i = 0; i < num; ++i) {
        result[i] = start + i * step;
    }
    return result;
}

pair<vector<float>, vector<float>> meshgrid(const vector<float>& x, const vector<float>& y) {
    auto ny = y.size();
    auto nx = x.size();

    auto total_size = ny*nx;
    vector<float> l(total_size);
    vector<float> m(total_size);

    for (auto i = 0; i < ny; ++i) {
        for (auto j = 0; j < nx; ++j) {
            auto index = i*nx + j;
            l[index] = x[j];
            m[index] = y[i];
        }
    }

    return {l, m};
}

vector<float> compute_n(const vector<float>& l, const vector<float>& m, size_t rows, size_t cols) {
    vector<float> n(rows*cols);

    for (auto i = 0; i < rows; ++i) {
        for (auto j = 0; j < cols; ++j) {
            auto index = i*cols + j;
            float val = 1.0f - l[index]*l[index] - m[index]*m[index];
            if (val >= 0.0f)
                n[index] = sqrtf(val) - 1.0f;
            else
                n[index] = nanf("0");  // nan values
        }
    }

    return n;
}