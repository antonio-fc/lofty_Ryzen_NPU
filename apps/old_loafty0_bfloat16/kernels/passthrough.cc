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

const int VEC_SIZE = 32; // Size of the working vectors

extern "C" {

void passthrough(bfloat16 *a, bfloat16 *c, uint32_t N) {
    for (int i = 0; i < N; i += VEC_SIZE) {
        // c[i] = a[i];
        auto input = aie::load_v<VEC_SIZE>(a + i);
        aie::store_v(c + i, input);
    }
}

} // extern "C"

// extern "C" {

// void passthrough(bfloat16 *a, bfloat16 *c, int32_t N) {
//   for (int i = 0; i < N; i++) {
//     c[i] = a[i];
//   }
// }

// } // extern "C"
