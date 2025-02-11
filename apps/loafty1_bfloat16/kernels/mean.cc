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
void mean(bfloat16 *a,  bfloat16 *c, uint32_t N, uint32_t op) {
    switch(op) {
        case 0: {// initialize
            c[0] = 0.0;
            c[1] = 0.0;
            break;
        }
        case 1: {// accumulate
            // bfloat16 sum = 0.0f;
            auto sum_v = aie::zeros<bfloat16, VEC_SIZE>();
            aie::accum<accfloat, VEC_SIZE> acc;
            acc.from_vector(sum_v, 0);
            // auto acc = aie::from_vector<accfloat, VEC_SIZE>(init, 0);
            for (int i = 0; i < N; i += VEC_SIZE) {
                auto input = aie::load_v<VEC_SIZE>(a + i);
                acc = aie::add(acc, input);
                // sum_v = input;
                // sum += a[i];
            }
            // c[0] += sum;
            // float s = aie::reduce_add(sum_v);
            aie::vector<float, VEC_SIZE> sum = acc.to_vector<float>(0);
            c[0] += aie::reduce_add(sum);
            // c[0] = sum[0];
            break;
        }
        case 2: {// divide
            c[0] /= N;
            break;
        }
        default:
            break;
    }
}

// void mean(bfloat16 *a, bfloat16 *c, int32_t N) {
//     bfloat16 sum = 0.0f;
//     for (int i = 0; i < N; i++) {
//         sum += a[i];
//     }
//     *c = sum / N;
// }

} // extern "C"
