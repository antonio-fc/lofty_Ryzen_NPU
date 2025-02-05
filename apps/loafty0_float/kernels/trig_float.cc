#include "lut_ops.h"

const float LUT_TRUE_SIZE = 256.0; // This is for a 512 lut, where half of the values are repeated for parallel access
const float INPUT_MAX = M_PI * 2; // for accepted input values in range [0, 2pi]
const float FACTOR = LUT_TRUE_SIZE / INPUT_MAX;   // index = x * LUT_TRUE_SIZE / INPUT_MAX (depends on type of lut)

template <const int N>
void sin_float(float *restrict in, float *restrict out) {
    for (int i = 0; i < N; i += VEC_SIZE)
    chess_prepare_for_pipelining chess_loop_range(64, 64) {
        auto input_vec = aie::load_v<VEC_SIZE>(in + i); // loading input vector
        auto inputs = aie::abs(input_vec); // to remove negative, cause sin(-x) = -sin(x), need to save vector with signs to negate at the end
        auto bitmap0 = aie::broadcast<uint32, VEC_SIZE>(0x80000000);
        auto final_sign = aie::bit_and(input_vec.cast_to<uint32>(), bitmap0); // Obtaining the sign bit, inputs must be uint32 for some reason
        auto scaled_vec = aie::mul(inputs, FACTOR);
        auto resultSin = getSinFloat(scaled_vec); // calling function for cos (calling the lut)
        auto singedResultSin = aie::bit_xor(resultSin.cast_to<uint32>(), final_sign).cast_to<float>(); // Negating the result for negative angles
        aie::store_v(out + i, singedResultSin); // storing the result in the output
    }
    return;
}

template <const int N>
void cos_float(float *restrict in, float *restrict out) {
    for (int i = 0; i < N; i += VEC_SIZE)
    chess_prepare_for_pipelining chess_loop_range(64, 64) {
        auto input_vec = aie::load_v<VEC_SIZE>(in + i); // loading input vector
        auto inputs = aie::abs(input_vec); // to remove negative, cause cos(-x) = cos(x)
        auto scaled_vec = aie::mul(inputs, FACTOR);
        auto resultCos = getCosFloat(scaled_vec); // calling function for cos (calling the lut)
        aie::store_v(out + i, resultCos); // storing the result in the output
    }
    return;
}

extern "C" {
void sin_float_1024(float *a_in, float *c_out) {
    sin_float<1024>(a_in, c_out);
}
void cos_float_1024(float *a_in, float *c_out) {
    cos_float<1024>(a_in, c_out);
}
}
