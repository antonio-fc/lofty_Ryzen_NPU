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

void vector_mult(bfloat16 *a, bfloat16 *b, bfloat16 *c, uint32_t N) {
    for (int i = 0; i < N; i += VEC_SIZE) {
        // c[i] = a[i] * b[i];
        auto inputA = aie::load_v<VEC_SIZE>(a + i);
        auto inputB = aie::load_v<VEC_SIZE>(b + i);
        aie::vector<bfloat16, VEC_SIZE> mult = aie::mul(inputA, inputB);
        aie::store_v(c + i, mult);
    }
}

} // extern "C"
