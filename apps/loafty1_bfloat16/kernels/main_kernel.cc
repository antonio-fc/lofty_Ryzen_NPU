#include "lut_ops.h"
#include <cmath>

const bfloat16 LUT_TRUE_SIZE = 256.0; // This is for a 512 lut, where half of the values are repeated for parallel access
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

void main_kernel(bfloat16 freq, bfloat16 *lmn, bfloat16 *visR, bfloat16 *visC, bfloat16 *u, bfloat16 *v, bfloat16 *w, bfloat16 *out, uint32_t N) {
    // Output size is CV
    bfloat16 *l = lmn;
    bfloat16 *m = lmn + CV;
    bfloat16 *n = lmn + CV*2;
    for(int t = 0; t < CV; t++) // for each pixel/lmn
    chess_prepare_for_pipelining chess_loop_range(64, 64) { 
        // Check if calculations can be skipped
        if ((l[t]*l[t] + m[t]*m[t]) > 1.0) { // This is crashing program when not using ITER_KERNEL
            continue; // out[t] = n[t]; // hex for NaN
        }
        
        // Initialize the accum for the reduction
        aie::vector<bfloat16, VEC_SIZE> sum_v = aie::zeros<bfloat16, VEC_SIZE>();
        aie::accum<accfloat, VEC_SIZE> acc;
        acc.from_vector(sum_v, 0);

        // Intermediate operations
        for (int i = 0; i < N; i += VEC_SIZE) { // 24 times
            // Getting baselines vectors
            aie::vector<bfloat16, VEC_SIZE> vecU = aie::load_v<VEC_SIZE>(u + i);
            aie::vector<bfloat16, VEC_SIZE> vecV = aie::load_v<VEC_SIZE>(v + i);
            aie::vector<bfloat16, VEC_SIZE> vecW = aie::load_v<VEC_SIZE>(w + i);

            // Scale, Add and Scale
            aie::vector<bfloat16, VEC_SIZE> scaleU = aie::mul(vecU, l[t]);
            aie::vector<bfloat16, VEC_SIZE> scaleV = aie::mul(vecV, m[t]);
            aie::vector<bfloat16, VEC_SIZE> scaleW = aie::mul(vecW, n[t]);
            aie::vector<bfloat16, VEC_SIZE> baseAdd = aie::add(scaleU, aie::add(scaleV, scaleW));
            aie::vector<bfloat16, VEC_SIZE> A = aie::mul(baseAdd, freq);

            // Trig
            aie::vector<bfloat16, VEC_SIZE> cos = cos_bfloat16(A); // Need to try reduce to one LUT operation
            aie::vector<bfloat16, VEC_SIZE> sin = sin_bfloat16(A);

            // Mult with visibilities and subtract
            aie::vector<bfloat16, VEC_SIZE> vecR = aie::load_v<VEC_SIZE>(visR + i);
            aie::vector<bfloat16, VEC_SIZE> vecC = aie::load_v<VEC_SIZE>(visC + i);
            aie::vector<bfloat16, VEC_SIZE> R = aie::mul(cos, vecR);
            aie::vector<bfloat16, VEC_SIZE> C = aie::mul(sin, vecC);
            aie::vector<bfloat16, VEC_SIZE> result = aie::sub(R, C);

            // Adding to acc
            acc = aie::add(acc, result);
        }

        // Final reduction
        aie::vector<float, VEC_SIZE> sum = acc.to_vector<float>(0);
        bfloat16 res = aie::reduce_add(sum);
        out[t] = res; //-9.84556/100000000000000000.0;
    }
}
// void sin_float_1024(bfloat16 *a_in, bfloat16 *c_out) {
//     sin_bfloat16<1024>(a_in, c_out);
// }
// void cos_float_1024(bfloat16 *a_in, bfloat16 *c_out) {
//     cos_bfloat16<1024>(a_in, c_out);
// }
}
