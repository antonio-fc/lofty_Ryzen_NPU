#include <math.h>
#ifndef M_PI
    #define M_PI 3.14159265358979323846
#endif
#include "aie_api/aie.hpp"
#include <cmath>

using lut_type = aie::lut<4, bfloat16, bfloat16>;
const int LUT_SIZE = 1024;
const int step_i = 0; // Optional lower bits that will be ignored for indexing the lut

alignas(aie::vector_decl_align) extern bfloat16 sin_ilut_ab[LUT_SIZE];
alignas(aie::vector_decl_align) extern bfloat16 sin_ilut_cd[LUT_SIZE];
alignas(aie::vector_decl_align) extern bfloat16 cos_ilut_ab[LUT_SIZE];
alignas(aie::vector_decl_align) extern bfloat16 cos_ilut_cd[LUT_SIZE];

aie::vector<int16, 32> v32bfloat16_to_v32uint(aie::vector<bfloat16, 32> input) {
    aie::vector<int32, 16> index0 = bfloat16_to_int(input.extract<16>(0), 0);
    aie::vector<int16, 16> index0f = aie::filter_even(index0.cast_to<int16>());
    aie::vector<int32, 16> index1 = bfloat16_to_int(input.extract<16>(1), 0);
    aie::vector<int16, 16> index1f = aie::filter_even(index1.cast_to<int16>());
    auto index = aie::concat(index0f, index1f);
    return index;
}

__attribute__((always_inline))  aie::vector<bfloat16, 32> getSinbFloat16(aie::vector<bfloat16, 32> x) {
    bfloat16 __aie_dm_resource_a *ilut_ab = (bfloat16 __aie_dm_resource_a *)sin_ilut_ab;
    bfloat16 __aie_dm_resource_b *ilut_cd = (bfloat16 __aie_dm_resource_b *)sin_ilut_cd;
    
    lut_type lut_i(LUT_SIZE, ilut_ab, ilut_cd);
    aie::parallel_lookup<uint16, lut_type, aie::lut_oor_policy::truncate> // index
    lookup_i(lut_i, step_i);
    
    auto index = v32bfloat16_to_v32uint(x);
    auto sin_result = lookup_i.fetch(index);
    
    return sin_result;
}

__attribute__((always_inline))  aie::vector<bfloat16, 32> getCosbFloat16(aie::vector<bfloat16, 32> x) {
    bfloat16 __aie_dm_resource_a *ilut_ab = (bfloat16 __aie_dm_resource_a *)cos_ilut_ab;
    bfloat16 __aie_dm_resource_b *ilut_cd = (bfloat16 __aie_dm_resource_b *)cos_ilut_cd;
    
    lut_type lut_i(LUT_SIZE, ilut_ab, ilut_cd);
    aie::parallel_lookup<uint16, lut_type, aie::lut_oor_policy::truncate> // index
    lookup_i(lut_i, step_i);
    
    auto index = v32bfloat16_to_v32uint(x);    
    auto cos_result = lookup_i.fetch(index);
    
    return cos_result;
}