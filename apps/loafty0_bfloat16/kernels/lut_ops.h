#include <math.h>
#ifndef M_PI
    #define M_PI 3.14159265358979323846
#endif
#include "aie_api/aie.hpp"

using lut_type = aie::lut<4, bfloat16, bfloat16>;
const int LUT_elems = 512;
const int step_i = 0; // Optional lower bits that will be ignored for indexing the lut
const int VEC_SIZE = 32;

alignas(aie::vector_decl_align) extern bfloat16 sin_ilut_ab[512];
alignas(aie::vector_decl_align) extern bfloat16 sin_ilut_cd[512];
alignas(aie::vector_decl_align) extern bfloat16 cos_ilut_ab[512];
alignas(aie::vector_decl_align) extern bfloat16 cos_ilut_cd[512];

aie::vector<uint16, VEC_SIZE> v16bfloat16_to_v16uint(aie::vector<bfloat16, VEC_SIZE> input) {
    const int mantissa_size = 7;
    const int exp_bias = 127;
    // Convert float32 to uint32
    // 0. Make sure there isn't an already implemented conversion function like bfloat16_to_int
    // 1. Extract mantissa bits using bit and with a broadcast  (put the 23 mantissa bits into a uint32 array starting at the LSB)
    aie::vector<uint16, VEC_SIZE> bitmap0 = aie::broadcast<uint16, VEC_SIZE>(0x007f);
    aie::vector<uint16, VEC_SIZE> mantissa = aie::bit_and(input.cast_to<uint16>(), bitmap0);
    mantissa = aie::add(mantissa, (uint16) 0x0080); // putting the implicit 1 in bit 24
    // 2. Extract exponent bits (put the 8 mantissa bits into a int32 array starting at the LSB)
    aie::vector<uint16, VEC_SIZE> bitmap1 = aie::broadcast<uint16, VEC_SIZE>(0x7f80);
    aie::vector<uint16, VEC_SIZE> exponent_unshifted = aie::bit_and(input.cast_to<uint16>(), bitmap1);
    aie::vector<uint16, VEC_SIZE> exponent_biased = aie::downshift(exponent_unshifted, mantissa_size);
    // 3. Substract the bias in the exponent (bias = 127) using a broadcast vector
    aie::vector<int16, VEC_SIZE> bias = aie::broadcast<int16, VEC_SIZE>(exp_bias);
    aie::vector<int16, VEC_SIZE> exponent_signed = aie::sub(exponent_biased.cast_to<int16>(), bias);
    // 4. Save the absolute value of the exponent in an uint32 vector
    aie::vector<int16, VEC_SIZE> exponent_abs = aie::abs(exponent_signed);
    // 5. Save the number of left and right shift for each element 
    aie::vector<uint16, VEC_SIZE> left = aie::downshift(aie::add(exponent_signed, exponent_abs), 1).cast_to<uint16>();
    aie::vector<uint16, VEC_SIZE> right = aie::downshift(aie::add(aie::neg(exponent_signed), exponent_abs), 1).cast_to<uint16>();
    // 6. Shift the mantissa vector according to the sign of the exponent (bitmap) and the exponent (vector)
    aie::vector<uint16, VEC_SIZE> index = mantissa;
    for (int i = 0; i < VEC_SIZE; i++) {
        index[i] = (index[i] << left[i]) >> right[i];
    }
    index = aie::downshift(index, mantissa_size);
    // 7. The resulting vector should contain the correct indexes
    return index;
}

__attribute__((always_inline))  aie::vector<bfloat16, VEC_SIZE> getSinbFloat16(aie::vector<bfloat16, VEC_SIZE> x) {
    bfloat16 __aie_dm_resource_a *ilut_ab = (bfloat16 __aie_dm_resource_a *)sin_ilut_ab;
    bfloat16 __aie_dm_resource_b *ilut_cd = (bfloat16 __aie_dm_resource_b *)sin_ilut_cd;
    
    lut_type lut_i(LUT_elems, ilut_ab, ilut_cd);
    aie::parallel_lookup<int16, lut_type, aie::lut_oor_policy::truncate> // index
    lookup_i(lut_i, step_i);
    
    auto index = v16bfloat16_to_v16uint(x);
    // aie::vector<int16, 32> index0 = v32int16(bfloat16_to_int(x, 8));
    // aie::vector<int16, VEC_SIZE> index = aie::filter_even(index0);
    
    auto sin_result = lookup_i.fetch(index);
    
    return sin_result;
}

__attribute__((always_inline))  aie::vector<bfloat16, VEC_SIZE> getCosbFloat16(aie::vector<bfloat16, VEC_SIZE> x) {
    bfloat16 __aie_dm_resource_a *ilut_ab = (bfloat16 __aie_dm_resource_a *)cos_ilut_ab;
    bfloat16 __aie_dm_resource_b *ilut_cd = (bfloat16 __aie_dm_resource_b *)cos_ilut_cd;
    
    lut_type lut_i(LUT_elems, ilut_ab, ilut_cd);
    aie::parallel_lookup<int16, lut_type, aie::lut_oor_policy::truncate> // index
    lookup_i(lut_i, step_i);
    
    auto index = v16bfloat16_to_v16uint(x);
    // aie::vector<int16, 32> index0 = v32int16(bfloat16_to_int(x, 8));
    // aie::vector<int16, VEC_SIZE> index = aie::filter_even(index0);
    
    auto cos_result = lookup_i.fetch(index.cast_to<int16>());
    
    return cos_result;
}