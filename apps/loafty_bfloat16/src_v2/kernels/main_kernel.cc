#include "lut_ops.h"
#include <cmath>

const bfloat16 LUT_TRUE_SIZE = LUT_SIZE/2.0; // This is for a 512 lut, where half of the values are repeated for parallel access
const bfloat16 INPUT_MAX = M_PI * 2; // for accepted input values in range [0, 2pi]
const bfloat16 FACTOR = LUT_TRUE_SIZE/INPUT_MAX;   // index = x * LUT_TRUE_SIZE / INPUT_MAX (depends on type of lut)
const bfloat16 NANCONST = std::numeric_limits<bfloat16>::quiet_NaN();
const int VEC_SIZE = 128;

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

void main_kernel_cos(bfloat16 *in, bfloat16 *visIn, bfloat16 *out, uint32_t N) { // N = 4608
    uint32_t FREQ_SIZE = 2; // How many indeces of visIn is used by the frequency value
    uint32_t HALF_SIZE = N/2; // new size when folding the output for further joining of the data streams
    bfloat16 *visInput = visIn + FREQ_SIZE;
    bfloat16 freq = visIn[0];
    chess_prepare_for_pipelining chess_loop_range(64, 64) {
        // Intermediate operations
        for (int i = 0; i < HALF_SIZE; i += VEC_SIZE) {
            // Getting baselines vectors
            auto inputA = aie::load_v<VEC_SIZE>(in + i);
            auto visA = aie::load_v<VEC_SIZE>(visInput + i);
            auto inputB = aie::load_v<VEC_SIZE>(in + HALF_SIZE + i);
            auto visB = aie::load_v<VEC_SIZE>(visInput + HALF_SIZE + i);

            // Scale
            auto scaleInputA = aie::mul(inputA, freq).to_vector<bfloat16>();
            auto scaleInputB = aie::mul(inputB, freq).to_vector<bfloat16>();

            // Getting cosine
            // v32
            // auto trigA = cos_bfloat16(scaleInputA);
            // auto trigB = cos_bfloat16(scaleInputA);

            // v64
            // auto trigA0 = cos_bfloat16(scaleInputA.extract<32>(0));
            // auto trigA1 = cos_bfloat16(scaleInputA.extract<32>(1));
            // auto trigB0 = cos_bfloat16(scaleInputB.extract<32>(0));
            // auto trigB1 = cos_bfloat16(scaleInputB.extract<32>(1));
            // auto trigA = aie::concat(trigA0, trigA1);
            // auto trigB = aie::concat(trigB0, trigB1);

            // v128
            auto trigA0 = cos_bfloat16(scaleInputA.extract<32>(0));
            auto trigA1 = cos_bfloat16(scaleInputA.extract<32>(1));
            auto trigA2 = cos_bfloat16(scaleInputA.extract<32>(2));
            auto trigA3 = cos_bfloat16(scaleInputA.extract<32>(3));
            auto trigB0 = cos_bfloat16(scaleInputB.extract<32>(0));
            auto trigB1 = cos_bfloat16(scaleInputB.extract<32>(1));
            auto trigB2 = cos_bfloat16(scaleInputB.extract<32>(2));
            auto trigB3 = cos_bfloat16(scaleInputB.extract<32>(3));
            auto trigA = aie::concat(aie::concat(trigA0, trigA1), aie::concat(trigA2, trigA3));
            auto trigB = aie::concat(aie::concat(trigB0, trigB1), aie::concat(trigB2, trigB3));

            // v256
            // auto trigA0 = cos_bfloat16(scaleInputA.extract<32>(0));
            // auto trigA1 = cos_bfloat16(scaleInputA.extract<32>(1));
            // auto trigA2 = cos_bfloat16(scaleInputA.extract<32>(2));
            // auto trigA3 = cos_bfloat16(scaleInputA.extract<32>(3));
            // auto trigA4 = cos_bfloat16(scaleInputA.extract<32>(4));
            // auto trigA5 = cos_bfloat16(scaleInputA.extract<32>(5));
            // auto trigA6 = cos_bfloat16(scaleInputA.extract<32>(6));
            // auto trigA7 = cos_bfloat16(scaleInputA.extract<32>(7));
            // auto trigB0 = cos_bfloat16(scaleInputB.extract<32>(0));
            // auto trigB1 = cos_bfloat16(scaleInputB.extract<32>(1));
            // auto trigB2 = cos_bfloat16(scaleInputB.extract<32>(2));
            // auto trigB3 = cos_bfloat16(scaleInputB.extract<32>(3));
            // auto trigB4 = cos_bfloat16(scaleInputB.extract<32>(4));
            // auto trigB5 = cos_bfloat16(scaleInputB.extract<32>(5));
            // auto trigB6 = cos_bfloat16(scaleInputB.extract<32>(6));
            // auto trigB7 = cos_bfloat16(scaleInputB.extract<32>(7));
            // auto trigA = aie::concat(aie::concat(aie::concat(trigA0, trigA1), aie::concat(trigA2, trigA3)), aie::concat(aie::concat(trigA4, trigA5), aie::concat(trigA6, trigA7)));
            // auto trigB = aie::concat(aie::concat(aie::concat(trigB0, trigB1), aie::concat(trigB2, trigB3)), aie::concat(aie::concat(trigB4, trigB5), aie::concat(trigB6, trigB7)));
            

            // Multiplying by vis
            auto prodA = aie::mul(trigA, visA);
            auto prodB = aie::mul(trigB, visB);

            // Adding to acc
            auto result = aie::add(prodA, prodB);

            // Writing result to output
            aie::store_v(out + i, result.to_vector<bfloat16>());
        }
    }
}

void main_kernel_sin(bfloat16 *in, bfloat16 *visIn, bfloat16 *out, uint32_t N) { // N = 4608
    uint32_t FREQ_SIZE = 2; // How many indeces of visIn is used by the frequency value
    uint32_t HALF_SIZE = N/2; // new size when folding the output for further joining of the data streams
    bfloat16 *visInput = visIn + FREQ_SIZE;
    bfloat16 freq = visIn[0];
    chess_prepare_for_pipelining chess_loop_range(64, 64) {
        // Intermediate operations
        for (int i = 0; i < HALF_SIZE; i += VEC_SIZE) {
            // Getting baselines vectors
            auto inputA = aie::load_v<VEC_SIZE>(in + i);
            auto visA = aie::load_v<VEC_SIZE>(visInput + i);
            auto inputB = aie::load_v<VEC_SIZE>(in + HALF_SIZE + i);
            auto visB = aie::load_v<VEC_SIZE>(visInput + HALF_SIZE + i);

            // Scale
            auto scaleInputA = aie::mul(inputA, freq).to_vector<bfloat16>();
            auto scaleInputB = aie::mul(inputB, freq).to_vector<bfloat16>();

            // Getting sine
            // v32
            // auto trigA = sin_bfloat16(scaleInputA);
            // auto trigB = sin_bfloat16(scaleInputA);

            // v64
            // auto trigA0 = sin_bfloat16(scaleInputA.extract<32>(0));
            // auto trigA1 = sin_bfloat16(scaleInputA.extract<32>(1));
            // auto trigB0 = sin_bfloat16(scaleInputB.extract<32>(0));
            // auto trigB1 = sin_bfloat16(scaleInputB.extract<32>(1));
            // auto trigA = aie::concat(trigA0, trigA1);
            // auto trigB = aie::concat(trigB0, trigB1);

            // v128
            auto trigA0 = sin_bfloat16(scaleInputA.extract<32>(0));
            auto trigA1 = sin_bfloat16(scaleInputA.extract<32>(1));
            auto trigA2 = sin_bfloat16(scaleInputA.extract<32>(2));
            auto trigA3 = sin_bfloat16(scaleInputA.extract<32>(3));
            auto trigB0 = sin_bfloat16(scaleInputB.extract<32>(0));
            auto trigB1 = sin_bfloat16(scaleInputB.extract<32>(1));
            auto trigB2 = sin_bfloat16(scaleInputB.extract<32>(2));
            auto trigB3 = sin_bfloat16(scaleInputB.extract<32>(3));
            auto trigA = aie::concat(aie::concat(trigA0, trigA1), aie::concat(trigA2, trigA3));
            auto trigB = aie::concat(aie::concat(trigB0, trigB1), aie::concat(trigB2, trigB3));

            // v256
            // auto trigA0 = sin_bfloat16(scaleInputA.extract<32>(0));
            // auto trigA1 = sin_bfloat16(scaleInputA.extract<32>(1));
            // auto trigA2 = sin_bfloat16(scaleInputA.extract<32>(2));
            // auto trigA3 = sin_bfloat16(scaleInputA.extract<32>(3));
            // auto trigA4 = sin_bfloat16(scaleInputA.extract<32>(4));
            // auto trigA5 = sin_bfloat16(scaleInputA.extract<32>(5));
            // auto trigA6 = sin_bfloat16(scaleInputA.extract<32>(6));
            // auto trigA7 = sin_bfloat16(scaleInputA.extract<32>(7));
            // auto trigB0 = sin_bfloat16(scaleInputB.extract<32>(0));
            // auto trigB1 = sin_bfloat16(scaleInputB.extract<32>(1));
            // auto trigB2 = sin_bfloat16(scaleInputB.extract<32>(2));
            // auto trigB3 = sin_bfloat16(scaleInputB.extract<32>(3));
            // auto trigB4 = sin_bfloat16(scaleInputB.extract<32>(4));
            // auto trigB5 = sin_bfloat16(scaleInputB.extract<32>(5));
            // auto trigB6 = sin_bfloat16(scaleInputB.extract<32>(6));
            // auto trigB7 = sin_bfloat16(scaleInputB.extract<32>(7));
            // auto trigA = aie::concat(aie::concat(aie::concat(trigA0, trigA1), aie::concat(trigA2, trigA3)), aie::concat(aie::concat(trigA4, trigA5), aie::concat(trigA6, trigA7)));
            // auto trigB = aie::concat(aie::concat(aie::concat(trigB0, trigB1), aie::concat(trigB2, trigB3)), aie::concat(aie::concat(trigB4, trigB5), aie::concat(trigB6, trigB7)));
            

            // Multiplying by vis
            auto prodA = aie::mul(trigA, visA);
            auto prodB = aie::mul(trigB, visB);

            // Adding to acc
            auto result = aie::add(prodA, prodB);

            // Writing result to output
            aie::store_v(out + i, result.to_vector<bfloat16>());
        }
    }
}

}
