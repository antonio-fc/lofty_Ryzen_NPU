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

extern "C" {

void mean_w(bfloat16 *a,  bfloat16 *c, int32_t N, int32_t op) { // This is done for 2 indexes becasue of the minimum data movement size requirement (32-bits)
    switch(op) {
        case 0: {// initialize
            c[0] = 0.0;
            c[1] = 0.0;
            break;
        }
        case 1: {// accumulate
            float sum = 0.0f; // This needs to be float to not loose accuracy
            for (int i = 0; i < N; i++) {
                sum += a[i];
            }
            c[0] += sum;
            c[1] += sum;
            break;
        }
        case 2: {// divide
            c[0] /= (bfloat16) N;
            c[1] /= (bfloat16) N;
            break;
        }
        default:
            break;
    }
}

} // extern "C"
