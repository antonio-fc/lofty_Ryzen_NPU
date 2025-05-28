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

void add_kernel(bfloat16 *a, bfloat16 *b, bfloat16 *c, uint32_t N) {
    auto sum_v = aie::zeros<bfloat16, VEC_SIZE>();
    aie::accum<accfloat, VEC_SIZE> acc;
    acc.from_vector(sum_v, 0);
    auto input0 = aie::broadcast<bfloat16, VEC_SIZE>(1.00001f);
    for (int i = 0; i < N; i += 1) {
        acc = aie::add(acc, input0);
    }
    aie::store_v(c, acc.to_vector<bfloat16>(0));
}

} // extern "C"