#include "lut_ops.h"
#include <cmath>

const bfloat16 LUT_TRUE_SIZE = LUT_SIZE/2.0; // This is for a 512 lut, where half of the values are repeated for parallel access
const bfloat16 INPUT_MAX = M_PI * 2; // for accepted input values in range [0, 2pi]
const bfloat16 FACTOR = LUT_TRUE_SIZE/INPUT_MAX;   // index = x * LUT_TRUE_SIZE / INPUT_MAX (depends on type of lut)
const bfloat16 NANCONST = std::numeric_limits<bfloat16>::quiet_NaN();

const int CV = 32; // consecutive lmn values

aie::vector<bfloat16, VEC_SIZE> sin_bfloat16(aie::vector<bfloat16, VEC_SIZE> input_vec) {
        auto inputs = aie::abs(input_vec); // to remove negative, cause sin(-x) = -sin(x), need to save vector with signs to negate at the end
        auto bitmap0 = aie::broadcast<uint16, VEC_SIZE>(0x8000);
        auto final_sign = aie::bit_and(input_vec.cast_to<uint16>(), bitmap0); // Obtaining the sign bit, inputs must be uint32 for some reason
        auto scaled_vec = aie::mul(inputs, FACTOR);
        auto resultSin = getSinbFloat16(scaled_vec); // calling function for cos (calling the lut)
        return aie::bit_xor(resultSin.cast_to<uint16>(), final_sign).cast_to<bfloat16>(); // Negating the result for negative angles
}

aie::vector<bfloat16, VEC_SIZE> cos_bfloat16(aie::vector<bfloat16, VEC_SIZE> input_vec) {
    auto inputs = aie::abs(input_vec); // to remove negative, cause cos(-x) = cos(x)
    auto scaled_vec = aie::mul(inputs, FACTOR);
    return getCosbFloat16(scaled_vec); // calling function for cos (calling the lut)
}

extern "C" {

void cosine(bfloat16 *in, bfloat16 *out, uint32_t N) {
    chess_prepare_for_pipelining chess_loop_range(64, 64) {
        for (int i = 0; i < N; i += VEC_SIZE) {
            auto input = aie::load_v<VEC_SIZE>(in + i);
            auto result = cos_bfloat16(input);
            aie::store_v(out + i, result);
        }
    }
}

void sine(bfloat16 *in, bfloat16 *out, uint32_t N) {
    chess_prepare_for_pipelining chess_loop_range(64, 64) {
        for (int i = 0; i < N; i += VEC_SIZE) {
            auto input = aie::load_v<VEC_SIZE>(in + i);
            auto result = sin_bfloat16(input);
            aie::store_v(out + i, result);
        }
    }
}
}
