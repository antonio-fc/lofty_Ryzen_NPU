//===- vector_scaler_mul.cc -------------------------------------*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// Copyright (C) 2024, Advanced Micro Devices, Inc.
//
//===----------------------------------------------------------------------===//

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <type_traits>

#include "aie_api/aie.hpp"

const int VEC_SIZE = 64; // Size of the working vectors

extern "C" {

void scale(bfloat16 *in, bfloat16 *lmn, bfloat16 *out, uint32_t N, uint32_t lmnIndex)
{
    bfloat16 lmn_value = lmn[lmnIndex];
    for (int i = 0; i < N; i += VEC_SIZE) {
        auto input = aie::load_v<VEC_SIZE>(in + i);
        auto result = aie::mul(input, lmn_value).to_vector<bfloat16>();
        aie::store_v(out + i, result);
    }
}


void scale_single(bfloat16 *in, bfloat16 *f, bfloat16 *out, uint32_t N)
{
    for (int i = 0; i < N; i += VEC_SIZE) {
        auto input = aie::load_v<VEC_SIZE>(in + i);
        auto result = aie::mul(input, f[0]).to_vector<bfloat16>();
        aie::store_v(out + i, result);
    }
}
} // extern "C"