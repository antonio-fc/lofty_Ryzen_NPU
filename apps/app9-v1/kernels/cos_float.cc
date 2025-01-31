#include "lut_ops.h"

template <const int N>
void cos_float(float *restrict in, float *restrict out) {
    const int vec_size = 16;
    const float lut_size = 256.0;
    const float input_max = M_PI * 2; // for accepted input values in range [0, 2pi]
    const float factor = lut_size / input_max;   // index = x * lut_size / input_max (depends on type of lut)
    for (int i = 0; i < N; i += vec_size)
    chess_prepare_for_pipelining chess_loop_range(64, 64) {
        auto input_vec = aie::load_v<vec_size>(in + i); // loading input vector
        auto inputs = aie::abs(input_vec); // to remove negative, cause cos(-x) = cos(x)
        auto scaled_vec = aie::mul(inputs, factor);
        aie::vector<float, vec_size> resultCos = getCosFloat(scaled_vec); // calling function for cos (calling the lut)
        aie::store_v(out + i, resultCos); // storing the result in the output
    }
    return;
}

extern "C" {
void cos_float_1024(float *a_in, float *c_out) {
    cos_float<1024>(a_in, c_out);
}
}
