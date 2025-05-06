#include <vector>
#include <iostream>
#include "vector_utils.hpp"
using namespace std;

int reportAccuracy(vector<float> output, vector<float> ref, vector<bool> nan_mask, const std::string& filename) {
    auto filtered_output = filter_vector<float>(output, nan_mask);
    auto filtered_ref = filter_vector<float>(ref, nan_mask);
    auto max_value = *max_element(begin(filtered_ref), end(filtered_ref));
    auto min_value = *min_element(begin(filtered_ref), end(filtered_ref));
    auto range_size = max_value - min_value;
    auto diff_sum = 0.0;
    for(auto i=0; i<filtered_ref.size(); i++) {
        auto diff = abs(filtered_output[i] - filtered_ref[i]);
        diff_sum+=diff;
    }
    auto mean_diff = diff_sum/filtered_ref.size();
    auto mean_diff_percent = mean_diff*100.0f/range_size;
    cout << "   Range: [" << min_value << ", " << max_value << "]" << endl;
    cout << "   Range Size: " << range_size << endl;
    cout << "   Average Error: " << mean_diff << endl;
    cout << "   Average Error Percentage: " << mean_diff_percent << endl;
    return mean_diff_percent;
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