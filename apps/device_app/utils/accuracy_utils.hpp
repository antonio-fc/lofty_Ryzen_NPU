#include <vector>
#include <iostream>
#include "vector_utils.hpp"
using namespace std;

tuple<vector<float>, vector<float>, vector<float>, vector<float>> getDiffVector(vector<float> output, vector<float> ref, vector<bool> nan_mask) {
    auto filtered_output = filter_vector<float>(output, nan_mask);
    auto filtered_ref = filter_vector<float>(ref, nan_mask);
    vector<float> diff(filtered_ref.size());
    vector<float> diff_percent(diff.size());
    for(auto i=0; i<filtered_ref.size(); i++) {
        diff[i] = abs(filtered_output[i] - filtered_ref[i]);
        diff_percent[i] = diff[i]*100/filtered_ref[i];
    }
    vector<float> metadata = {};
    return {diff, diff_percent, filtered_output, filtered_ref};
}

int reportAccuracy(vector<float> output, vector<float> ref, vector<bool> nan_mask, const std::string& filename) {
    auto [diff, diff_percent, output_new, ref_new] = getDiffVector(output, ref, nan_mask);
    auto max_diff_percent = *max_element(begin(diff_percent), end(diff_percent));
    auto min_diff_percent = *min_element(begin(diff_percent), end(diff_percent));
    auto mean_diff_percent = mean(diff_percent);
    auto max_diff = *max_element(begin(diff), end(diff));
    auto min_diff = *min_element(begin(diff), end(diff));
    auto mean_diff = mean(diff);
    
    cout << "   Min Error %:" << min_diff_percent << endl;
    cout << "   Max Error %:" << max_diff_percent << endl;
    cout << "   Average Error %: " << mean_diff_percent << endl;
    return mean_diff_percent;
}

int reportAccuracyCSV(vector<float> output, vector<float> ref, vector<bool> nan_mask, int subband_index, float freq, const std::string& filepath) {
    // Getting accuracy results
    auto [diff, diff_percent, output_new, ref_new] = getDiffVector(output, ref, nan_mask);

    auto max_diff_percent = *max_element(begin(diff_percent), end(diff_percent));
    auto min_diff_percent = *min_element(begin(diff_percent), end(diff_percent));
    auto mean_diff_percent = mean(diff_percent);

    auto max_diff = *max_element(begin(diff), end(diff));
    auto min_diff = *min_element(begin(diff), end(diff));
    auto mean_diff = mean(diff);

    auto max_out = *max_element(begin(output_new), end(output_new));
    auto min_out = *min_element(begin(output_new), end(output_new));

    auto max_ref = *max_element(begin(ref_new), end(ref_new));
    auto min_ref = *min_element(begin(ref_new), end(ref_new));

    // Writing out to file
    std::ofstream file(filepath, std::ios::app);
    if (!file.is_open()) {
        std::cerr << "Failed to open file.\n";
        return 1;
    }
    // Write data
    file << subband_index << ";" << freq << ";"
            << mean_diff_percent << ";" << min_diff_percent << ";" << max_diff_percent << ";"
            << mean_diff << ";" << min_diff << ";" << max_diff << ";"
            << min_out << ";" << max_out << ";"
            << min_ref << ";" << max_ref << "\n";

    file.close();
    return 0;
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