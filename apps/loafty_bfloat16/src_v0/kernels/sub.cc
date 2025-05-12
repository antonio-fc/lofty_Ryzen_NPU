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

const int VEC_SIZE = 128; // Size of the working vectors

extern "C" {

void sub_kernel(bfloat16 *a, bfloat16 *b, bfloat16 *c, uint32_t N) {
    for (int i = 0; i < N; i += VEC_SIZE) {
        auto input0 = aie::load_v<VEC_SIZE>(a + i);
        auto input1 = aie::load_v<VEC_SIZE>(b + i);
        auto result = aie::sub(input0, input1);
        aie::store_v(c + i, result);
    }
}

} // extern "C"