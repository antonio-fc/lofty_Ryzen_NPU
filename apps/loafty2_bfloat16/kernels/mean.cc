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

const int VEC_SIZE = 32; // Size of the working vectors and OUT_SIZE (only works as it is becasue of that)
const float DIV = 9216.0;

extern "C" {
void mean(bfloat16 *in,  bfloat16 *out, uint32_t N, uint32_t index) { // Input Value Sizes: OUT_SIZE * 6, Output Size
    // Declare the accumulator
    auto sum_v = aie::zeros<bfloat16, VEC_SIZE>();
    aie::accum<accfloat, VEC_SIZE> acc;
    acc.from_vector(sum_v, 0);
    
    // Adding the results from each core
    for(int i = 0; i < N; i += VEC_SIZE) {
        auto input = aie::load_v<VEC_SIZE>(in + i);
        acc = aie::add(acc, input);
    }

    // Writing results to output
    aie::vector<float, VEC_SIZE> sum = aie::to_vector<float>(acc, 0);
    bfloat16 res = aie::reduce_add(sum);
    out[index] = res/DIV;
}
} // extern "C"
