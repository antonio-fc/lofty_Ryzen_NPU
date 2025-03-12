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
void mean(float *a,  float *c, int32_t N, int32_t op) {
    switch(op) {
        case 0: {// initialize
            c[0] = 0.0;
            break;
        }
        case 1: {// accumulate
            // float sum = 0.0f;
            auto sum_v = aie::zeros<float, VEC_SIZE>();
            for (int i = 0; i < N; i += VEC_SIZE) {
                auto input = aie::load_v<VEC_SIZE>(a + i);
                sum_v = aie::add(sum_v, input);
                // sum += a[i];
            }
            // c[0] += sum;
            c[0] += aie::reduce_add(sum_v);
            break;
        }
        case 2: {// divide
            c[0] /= (float) N;
            break;
        }
        default:
            break;
    }
}

// void mean(float *a, float *c, int32_t N) {
//     float sum = 0.0f;
//     for (int i = 0; i < N; i++) {
//         sum += a[i];
//     }
//     *c = sum / N;
// }

} // extern "C"
