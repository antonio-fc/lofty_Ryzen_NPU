#include <lut_based_ops.h>
#include <math.h>
#include "aie_api/aie.hpp"

alignas(aie::vector_decl_align) extern float cos_ilut_ab[512];
alignas(aie::vector_decl_align) extern float cos_ilut_cd[512];

__attribute__((always_inline))  aie::vector<float, 16> getCosFloat(aie::vector<float, 16> x) {
    float __aie_dm_resource_a *ilut_ab = (float __aie_dm_resource_a *)cos_ilut_ab;
    float __aie_dm_resource_b *ilut_cd = (float __aie_dm_resource_b *)cos_ilut_cd;
    
    using lut_type = aie::lut<4, float, float>;
    const int LUT_elems = 512;
    const int step_i = 8;
    
    lut_type lut_i(LUT_elems, ilut_ab, ilut_cd);
    aie::parallel_lookup<uint16, lut_type, aie::lut_oor_policy::truncate> // index
    lookup_i(lut_i, step_i);
    
    aie::vector<float, 16> cos_result;
    
    // todo: convert to range 0 - 90 and save in 'index'

    auto index = x.cast_to<uint16>();
    
    cos_result = lookup_i.fetch(index);
    
    return cos_result;
}

template <const int N>
void cos_float(float *restrict in, float *restrict out) {

  int vec_size = 16;
  for (int i = 0; i < N; i += vec_size)
    chess_prepare_for_pipelining chess_loop_range(64, 64) {
      // index = x*pi / 1024
      const float factor = M_PI / 1024.0;
      auto input_vec = aie::load_v(in, vec_size);
      in += vec_size;
      auto scaled_vec = aie::mul(input_vec, factor);
      // v16bfloat16 vec_in = *(v16bfloat16 *)(in + i); // getting 16 vectors and cast
      v16accfloat result_cos = getExpBf16(scaled_vec); // calling function for exp (calling the lut)
      // v16bfloat16 bf16_exp = to_v16bfloat16(acc_exp);
      // *(v16bfloat16 *)(out + i) = bf16_exp;
      aie::store_v(result_cos, out);
      out += vec_size;
    }
  return;
}

extern "C" {

void cos_float_1024(float *a_in, float *c_out) {
  cos_float<1024>(a_in, c_out);
}

alignas(aie::vector_decl_align) float cos_ilut_ab[512] = {// popullate lut}
alignas(aie::vector_decl_align) float cos_ilut_cd[512] = {// popullate lut}

} // extern "C"