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

void baseline_scale(bfloat16 *in, bfloat16 *lmn, bfloat16 *out,
                                                        uint32_t N, // number of elements to scale
                                                        uint32_t CHUNK_SIZE,  // chunk size is how many lmn values are moved every ITER
                                                        uint32_t lmnIndex, // index of the lmn pointer, goes from 0 to CHUNK_SIZE-1
                                                        uint32_t lmnChoice) // index to choose l, m or n
{
    uint32_t FREQ_SIZE = 2;
    bfloat16 lmn_value = lmn[CHUNK_SIZE*lmnChoice + lmnIndex];
    bfloat16 *baseline = in + FREQ_SIZE;
    for (int i = 0; i < N; i += VEC_SIZE) {
        auto input = aie::load_v<VEC_SIZE>(baseline + i);
        auto result = aie::mul(input, lmn_value).to_vector<bfloat16>();
        aie::store_v(out + i, result);
    }
}
} // extern "C"