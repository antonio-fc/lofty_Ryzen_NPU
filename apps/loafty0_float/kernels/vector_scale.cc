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

const int VEC_SIZE = 16; // Size of the working vectors

extern "C" {

void vector_scale(float *a, float *c, float *factor, int32_t N) {
    for (int i = 0; i < N; i += VEC_SIZE) {
        // c[i] = a[i] * b[i];
        auto inputA = aie::load_v<VEC_SIZE>(a + i);
        aie::vector<float, VEC_SIZE> mult = aie::mul(inputA, factor[0]);
        aie::store_v(c + i, mult);
    }
}

} // extern "C"

// extern "C" {

// void vector_scalar_mul_aie_scalar(float *a, float *c, float *factor,
//                                   int32_t N) {
//   for (int i = 0; i < N; i++) {
//     c[i] = *factor * a[i];
//   }
// }

// } // extern "C"
