#include "lut_ops.h"
#include <cmath>

const bfloat16 LUT_TRUE_SIZE = LUT_SIZE/2.0; // This is for a 512 lut, where half of the values are repeated for parallel access
const bfloat16 INPUT_MAX = M_PI * 2; // for accepted input values in range [0, 2pi]
const bfloat16 FACTOR = LUT_TRUE_SIZE/INPUT_MAX;   // index = x * LUT_TRUE_SIZE / INPUT_MAX (depends on type of lut)
const bfloat16 NANCONST = std::numeric_limits<bfloat16>::quiet_NaN();

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

extern "C" {

void main_kernel(bfloat16 *in, bfloat16 *visIn, bfloat16 *out, uint32_t N, uint32_t trig) { // N = 4608
    uint32_t FREQ_SIZE = 2; // How many indeces of visIn is used by the frequency value
    uint32_t HALF_SIZE = N/2; // new size when folding the output for further joining of the data streams
    bfloat16 *visInput = visIn + FREQ_SIZE;
    bfloat16 freq = visIn[0];
    chess_prepare_for_pipelining chess_loop_range(64, 64) {
        // Intermediate operations
        for (int i = 0; i < HALF_SIZE; i += VEC_SIZE) {
            // Getting baselines vectors
            auto input0 = aie::load_v<VEC_SIZE>(in + i);
            auto vis0 = aie::load_v<VEC_SIZE>(visInput + i);
            auto input1 = aie::load_v<VEC_SIZE>(in + HALF_SIZE + i);
            auto vis1 = aie::load_v<VEC_SIZE>(visInput + HALF_SIZE + i);

            // Scale
            auto scaleInput0 = aie::mul(input0, freq).to_vector<bfloat16>();
            auto scaleInput1 = aie::mul(input1, freq).to_vector<bfloat16>();

            // Apply the trig op
            aie::vector<bfloat16, VEC_SIZE> trig0;
            aie::vector<bfloat16, VEC_SIZE> trig1;

            if (trig == 0) { // applying cosine
                auto trig0A = cos_bfloat16(scaleInput0.extract<32>(0));
                auto trig0B = cos_bfloat16(scaleInput0.extract<32>(1));
                auto trig1A = cos_bfloat16(scaleInput1.extract<32>(0));
                auto trig1B = cos_bfloat16(scaleInput1.extract<32>(1));
                trig0 = aie::concat(trig0A, trig0B);
                trig1 = aie::concat(trig1A, trig1B);
                // trig0 = cos_bfloat16(scaleInput0);
                // trig1 = cos_bfloat16(scaleInput1);
            } else { // applying sine
                auto trig0A = sin_bfloat16(scaleInput0.extract<32>(0));
                auto trig0B = sin_bfloat16(scaleInput0.extract<32>(1));
                auto trig1A = sin_bfloat16(scaleInput1.extract<32>(0));
                auto trig1B = sin_bfloat16(scaleInput1.extract<32>(1));
                trig0 = aie::concat(trig0A, trig0B);
                trig1 = aie::concat(trig1A, trig1B);
                // trig0 = sin_bfloat16(scaleInput0);
                // trig1 = sin_bfloat16(scaleInput1);
            }

            // Multiplying by vis
            auto prod0 = aie::mul(trig0, vis0);
            auto prod1 = aie::mul(trig1, vis1);

            // Adding to acc
            auto result = aie::add(prod0, prod1);

            // Writing result to output
            aie::store_v(out + i, result.to_vector<bfloat16>());
        }
    }
}
// void sin_float_1024(bfloat16 *a_in, bfloat16 *c_out) {
//     sin_bfloat16<1024>(a_in, c_out);
// }
// void cos_float_1024(bfloat16 *a_in, bfloat16 *c_out) {
//     cos_bfloat16<1024>(a_in, c_out);
// }
}
