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

void mean(bfloat16 *a,  bfloat16 *c, int32_t N) {
    float sum = 0.0f; // This needs to be float to not loose accuracy
    for (int i = 0; i < N; i++) {
        sum += a[i];
    }
    *c = sum / N;
}

} // extern "C"
