#include <math.h>
#ifndef M_PI
    #define M_PI 3.14159265358979323846
#endif
#include "aie_api/aie.hpp"

alignas(aie::vector_decl_align) extern float cos_ilut_ab[512];
alignas(aie::vector_decl_align) extern float cos_ilut_cd[512];

aie::vector<uint32, 16> v16float_to_v16uint(aie::vector<float, 16> input) {
    // Convert float32 to uint32
    // 0. Make sure there isn't an already implemented conversion function like bfloat16_to_int
    // 1. Extract mantissa bits using bit and with a broadcast  (put the 23 mantissa bits into a uint32 array starting at the LSB)
    aie::vector<uint32, 16> bitmap0 = aie::broadcast<uint32, 16>(0x007fffff);
    aie::vector<uint32, 16> mantissa = aie::bit_and(input.cast_to<uint32>(), bitmap0);
    mantissa = aie::add(mantissa, (uint32) 0x00800000); // putting the implicit 1 in bit 24
    // 2. Extract exponent bits (put the 8 mantissa bits into a int32 array starting at the LSB)
    aie::vector<uint32, 16> bitmap1 = aie::broadcast<uint32, 16>(0x7f800000);
    aie::vector<uint32, 16> exponent_unshifted = aie::bit_and(input.cast_to<uint32>(), bitmap1);
    aie::vector<uint32, 16> exponent_biased = aie::downshift(exponent_unshifted, 23);
    // 3. Substract the bias in the exponent (bias = 127) using a broadcast vector
    aie::vector<int32, 16> exponent_signed = aie::sub(exponent_biased.cast_to<int32>(), 127);
    // 4. Save the absolute value of the exponent in an uint32 vector
    aie::vector<int32, 16> exponent_abs = aie::abs(exponent_signed);
    // 5. Save the number of left and right shift for each element 
    aie::vector<uint32, 16> left = aie::downshift(aie::add(exponent_signed, exponent_abs), 1).cast_to<uint32>();
    aie::vector<uint32, 16> right = aie::downshift(aie::add(aie::neg(exponent_signed), exponent_abs), 1).cast_to<uint32>();
    // 6. Shift the mantissa vector according to the sign of the exponent (bitmap) and the exponent (vector)
    aie::vector<uint32, 16> index = mantissa;
    for (int i = 0; i < 16; i++) {
        index[i] = (index[i] << left[i]) >> right[i];
    }
    index = aie::downshift(index, 23);
    // 7. The resulting vector should contain the correct indexes
    return index;
}

__attribute__((always_inline))  aie::vector<float, 16> getCosFloat(aie::vector<float, 16> x) {
    float __aie_dm_resource_a *ilut_ab = (float __aie_dm_resource_a *)cos_ilut_ab;
    float __aie_dm_resource_b *ilut_cd = (float __aie_dm_resource_b *)cos_ilut_cd;
    
    using lut_type = aie::lut<4, float, float>;
    const int LUT_elems = 512;
    const int step_i = 0; // Optional lower bits that will be ignored for indexing the lut
    
    lut_type lut_i(LUT_elems, ilut_ab, ilut_cd);
    aie::parallel_lookup<uint16, lut_type, aie::lut_oor_policy::truncate> // index
    lookup_i(lut_i, step_i);
    
    auto index = v16float_to_v16uint(x);
    
    auto cos_result = lookup_i.fetch(index);
    
    return cos_result;
}