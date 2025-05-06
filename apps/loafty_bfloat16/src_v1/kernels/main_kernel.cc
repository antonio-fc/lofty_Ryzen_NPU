#include "lut_ops.h"
#include <cmath>

const bfloat16 LUT_TRUE_SIZE = LUT_SIZE/2.0; // This is for a 512 lut, where half of the values are repeated for parallel access
const bfloat16 INPUT_MAX = M_PI * 2; // for accepted input values in range [0, 2pi]
const bfloat16 FACTOR = LUT_TRUE_SIZE/INPUT_MAX;   // index = x * LUT_TRUE_SIZE / INPUT_MAX (depends on type of lut)
const bfloat16 NANCONST = std::numeric_limits<bfloat16>::quiet_NaN();

const int CV = 32; // consecutive lmn values
const int VEC_SIZE = 32;

aie::vector<bfloat16, 32> sin_bfloat16(aie::vector<bfloat16, 32> input_vec) {
        auto inputs = aie::abs(input_vec); // to remove negative, cause sin(-x) = -sin(x), need to save vector with signs to negate at the end
        auto bitmap0 = aie::broadcast<uint16, 32>(0x8000);
        auto final_sign = aie::bit_and(input_vec.cast_to<uint16>(), bitmap0); // Obtaining the sign bit, inputs must be uint32 for some reason
        auto scaled_vec = aie::mul(inputs, FACTOR);
        auto resultSin = getSinbFloat16(scaled_vec); // calling function for cos (calling the lut)
        return aie::bit_xor(resultSin.cast_to<uint16>(), final_sign).cast_to<bfloat16>(); // Negating the result for negative angles
}

aie::vector<bfloat16, 32> cos_bfloat16(aie::vector<bfloat16, 32> input_vec) {
    auto inputs = aie::abs(input_vec); // to remove negative, cause cos(-x) = cos(x)
    auto scaled_vec = aie::mul(inputs, FACTOR);
    return getCosbFloat16(scaled_vec); // calling function for cos (calling the lut)
}

aie::vector<bfloat16, 64> exp_bfloat16(aie::vector<bfloat16, 32> input_vec) {
    auto inputs = aie::abs(input_vec);
    auto bitmap0 = aie::broadcast<uint16, 32>(0x8000);
    auto final_sign = aie::bit_and(input_vec.cast_to<uint16>(), bitmap0);
    auto scaled_vec = aie::mul(inputs, FACTOR);
    auto resultExp = getExpUINT32(scaled_vec).cast_to<bfloat16>();
    aie::vector<bfloat16, 32> sin = aie::filter_even(resultExp);
    aie::vector<bfloat16, 32> cos = aie::filter_odd(resultExp);
    sin = aie::bit_xor(sin.cast_to<uint16>(), final_sign).cast_to<bfloat16>();
    return aie::concat(sin, cos);
}

extern "C" {

void main_kernel(bfloat16 freq, bfloat16 *lmn, bfloat16 *visR, bfloat16 *visC, bfloat16 *u, bfloat16 *v, bfloat16 *w, bfloat16 *out, uint32_t N) {
    // Output size is CV
    bfloat16 *l = lmn;
    bfloat16 *m = lmn + CV;
    bfloat16 *n = lmn + CV*2;
    for(int t = 0; t < CV; t++) // for each pixel/lmn
    chess_prepare_for_pipelining chess_loop_range(64, 64) { 
        // Check if calculations can be skipped
        if ((l[t]*l[t] + m[t]*m[t]) > 1.0) {
            continue; // out[t] = n[t]; // hex for NaN
        }
        
        // Initialize the accum for the reduction
        aie::vector<bfloat16, VEC_SIZE> sum_v = aie::zeros<bfloat16, VEC_SIZE>();
        aie::accum<accfloat, VEC_SIZE> acc;
        acc.from_vector(sum_v, 0);

        // Intermediate operations
        for (int i = 0; i < N; i += VEC_SIZE) { // 24 times
            // Getting baselines vectors
            auto vecU = aie::load_v<VEC_SIZE>(u + i);
            auto vecV = aie::load_v<VEC_SIZE>(v + i);
            auto vecW = aie::load_v<VEC_SIZE>(w + i);

            // Scale, Add and Scale
            auto scaleU = aie::mul(vecU, l[t]);
            auto scaleV = aie::mul(vecV, m[t]);
            auto scaleW = aie::mul(vecW, n[t]);
            auto baseAdd = aie::add(scaleU, aie::add(scaleV, scaleW));
            auto A = aie::mul(baseAdd.to_vector<bfloat16>(0), freq);

            // Trig<bfloat16>()

            // Method0 (doesnt work)
            // auto cos0 = cos_bfloat16(A.extract<32>(0));
            // auto sin0 = sin_bfloat16(A.extract<32>(0));
            // auto cos1 = cos_bfloat16(A.extract<32>(1));
            // auto sin1 = sin_bfloat16(A.extract<32>(1));
            // auto cos = aie::concat(cos0, cos1);
            // auto sin = aie::concat(sin0, sin1);

            // Method1 (works)
            auto cos = cos_bfloat16(A); // Need to try reduce to one LUT operation
            auto sin = sin_bfloat16(A);

            // Method2 (???)
            // auto exp = exp_bfloat16(A);
            // auto sin = exp.extract<32>(0);
            // auto cos = exp.extract<32>(1);

            // Mult with visibilities and subtract
            auto vecR = aie::load_v<VEC_SIZE>(visR + i);
            auto vecC = aie::load_v<VEC_SIZE>(visC + i);
            auto R = aie::mul(cos, vecR);
            auto C = aie::mul(sin, vecC);
            auto result = aie::sub(R, C);

            // Adding to acc
            acc = aie::add(acc, result);
        }

        // Final reduction
        aie::vector<float, VEC_SIZE> sum = acc.to_vector<float>(0);
        bfloat16 res = aie::reduce_add(sum);
        out[t] = res;
    }
}
}
