; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2"

@in0_cons_buff_1 = external global [1 x float]
@in0_cons_buff_0 = external global [1 x float]
@in1_cons_buff_1 = external global [1024 x float]
@in1_cons_buff_0 = external global [1024 x float]
@in2_cons_buff_1 = external global [1024 x float]
@in2_cons_buff_0 = external global [1024 x float]
@in3_cons_buff_1 = external global [1 x float]
@in3_cons_buff_0 = external global [1 x float]
@of_c20toc21_buff_1 = external global [1024 x float]
@of_c20toc21_buff_0 = external global [1024 x float]
@of_c20toc21_cons_buff_1 = external global [1024 x float]
@of_c20toc21_cons_buff_0 = external global [1024 x float]
@of_c30toc21_buff_1 = external global [1024 x float]
@of_c30toc21_buff_0 = external global [1024 x float]
@of_c10toc11_buff_1 = external global [1024 x float]
@of_c10toc11_buff_0 = external global [1024 x float]
@of_c10toc11_cons_buff_1 = external global [1024 x float]
@of_c10toc11_cons_buff_0 = external global [1024 x float]
@of_c21toc11_buff_1 = external global [1024 x float]
@of_c21toc11_buff_0 = external global [1024 x float]
@of_c21toc22_buff_1 = external global [1024 x float]
@of_c21toc22_buff_0 = external global [1024 x float]
@of_c22toc12_buff_1 = external global [1024 x float]
@of_c22toc12_buff_0 = external global [1024 x float]
@of_c12toc11_buff_1 = external global [1024 x float]
@of_c12toc11_buff_0 = external global [1024 x float]
@ofc11toc02_buff_1 = external global [1024 x float]
@ofc11toc02_buff_0 = external global [1024 x float]
@ofc11toc02_cons_buff_1 = external global [1024 x float]
@ofc11toc02_cons_buff_0 = external global [1024 x float]
@ofc02toc01_buff_9 = external global [1 x float]
@ofc02toc01_buff_8 = external global [1 x float]
@ofc02toc01_buff_7 = external global [1 x float]
@ofc02toc01_buff_6 = external global [1 x float]
@ofc02toc01_buff_5 = external global [1 x float]
@ofc02toc01_buff_4 = external global [1 x float]
@ofc02toc01_buff_3 = external global [1 x float]
@ofc02toc01_buff_2 = external global [1 x float]
@ofc02toc01_buff_1 = external global [1 x float]
@ofc02toc01_buff_0 = external global [1 x float]
@out_buff_1 = external global [1 x float]
@out_buff_0 = external global [1 x float]
@out_cons = external global [1 x float]
@out = external global [1 x float]
@ofc02toc01 = external global [1 x float]
@ofc11toc02_cons = external global [1024 x float]
@ofc11toc02 = external global [1024 x float]
@of_c12toc11 = external global [1024 x float]
@of_c22toc12 = external global [1024 x float]
@of_c21toc22 = external global [1024 x float]
@of_c21toc11 = external global [1024 x float]
@of_c10toc11_cons = external global [1024 x float]
@of_c10toc11 = external global [1024 x float]
@of_c30toc21 = external global [1024 x float]
@of_c20toc21_cons = external global [1024 x float]
@of_c20toc21 = external global [1024 x float]
@in3_cons = external global [1 x float]
@in3 = external global [1 x float]
@in2_cons = external global [1024 x float]
@in2 = external global [1024 x float]
@in1_cons = external global [1024 x float]
@in1 = external global [1024 x float]
@in0_cons = external global [1 x float]
@in0 = external global [1 x float]

declare void @debug_i32(i32)

declare void @llvm.aie2.put.ms(i32, i32)

declare { i32, i32 } @llvm.aie2.get.ss()

declare void @llvm.aie2.mcd.write.vec(<16 x i32>, i32)

declare <16 x i32> @llvm.aie2.scd.read.vec(i32)

declare void @llvm.aie2.acquire(i32, i32)

declare void @llvm.aie2.release(i32, i32)

declare void @vector_scalar_mul_aie_scalar(ptr, ptr, ptr, i32)

declare void @passthrough(ptr, ptr, i32)

declare void @vector_add_aie_scalar(ptr, ptr, ptr, i32)

declare void @vector_mult_aie_scalar(ptr, ptr, ptr, i32)

declare void @mean(ptr, ptr, i32)

define void @core_0_3() {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %185, %4 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775800
  br i1 %3, label %4, label %186

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %5 = load float, ptr @ofc02toc01_buff_0, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %6 = load float, ptr @ofc02toc01_buff_1, align 4
  %7 = fadd float %5, %6
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %8 = load float, ptr @ofc02toc01_buff_2, align 4
  %9 = fadd float %7, %8
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %10 = load float, ptr @ofc02toc01_buff_3, align 4
  %11 = fadd float %9, %10
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %12 = load float, ptr @ofc02toc01_buff_4, align 4
  %13 = fadd float %11, %12
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %14 = load float, ptr @ofc02toc01_buff_5, align 4
  %15 = fadd float %13, %14
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %16 = load float, ptr @ofc02toc01_buff_6, align 4
  %17 = fadd float %15, %16
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %18 = load float, ptr @ofc02toc01_buff_7, align 4
  %19 = fadd float %17, %18
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %20 = load float, ptr @ofc02toc01_buff_8, align 4
  %21 = fadd float %19, %20
  %22 = fdiv float %21, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store float %22, ptr @out_buff_0, align 4
  call void @llvm.aie2.release(i32 34, i32 9)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  %23 = load float, ptr @ofc02toc01_buff_9, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %24 = load float, ptr @ofc02toc01_buff_0, align 4
  %25 = fadd float %23, %24
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %26 = load float, ptr @ofc02toc01_buff_1, align 4
  %27 = fadd float %25, %26
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %28 = load float, ptr @ofc02toc01_buff_2, align 4
  %29 = fadd float %27, %28
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %30 = load float, ptr @ofc02toc01_buff_3, align 4
  %31 = fadd float %29, %30
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %32 = load float, ptr @ofc02toc01_buff_4, align 4
  %33 = fadd float %31, %32
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %34 = load float, ptr @ofc02toc01_buff_5, align 4
  %35 = fadd float %33, %34
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %36 = load float, ptr @ofc02toc01_buff_6, align 4
  %37 = fadd float %35, %36
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %38 = load float, ptr @ofc02toc01_buff_7, align 4
  %39 = fadd float %37, %38
  %40 = fdiv float %39, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store float %40, ptr @out_buff_1, align 4
  call void @llvm.aie2.release(i32 34, i32 9)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %41 = load float, ptr @ofc02toc01_buff_8, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  %42 = load float, ptr @ofc02toc01_buff_9, align 4
  %43 = fadd float %41, %42
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %44 = load float, ptr @ofc02toc01_buff_0, align 4
  %45 = fadd float %43, %44
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %46 = load float, ptr @ofc02toc01_buff_1, align 4
  %47 = fadd float %45, %46
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %48 = load float, ptr @ofc02toc01_buff_2, align 4
  %49 = fadd float %47, %48
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %50 = load float, ptr @ofc02toc01_buff_3, align 4
  %51 = fadd float %49, %50
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %52 = load float, ptr @ofc02toc01_buff_4, align 4
  %53 = fadd float %51, %52
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %54 = load float, ptr @ofc02toc01_buff_5, align 4
  %55 = fadd float %53, %54
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %56 = load float, ptr @ofc02toc01_buff_6, align 4
  %57 = fadd float %55, %56
  %58 = fdiv float %57, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store float %58, ptr @out_buff_0, align 4
  call void @llvm.aie2.release(i32 34, i32 9)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %59 = load float, ptr @ofc02toc01_buff_7, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %60 = load float, ptr @ofc02toc01_buff_8, align 4
  %61 = fadd float %59, %60
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  %62 = load float, ptr @ofc02toc01_buff_9, align 4
  %63 = fadd float %61, %62
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %64 = load float, ptr @ofc02toc01_buff_0, align 4
  %65 = fadd float %63, %64
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %66 = load float, ptr @ofc02toc01_buff_1, align 4
  %67 = fadd float %65, %66
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %68 = load float, ptr @ofc02toc01_buff_2, align 4
  %69 = fadd float %67, %68
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %70 = load float, ptr @ofc02toc01_buff_3, align 4
  %71 = fadd float %69, %70
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %72 = load float, ptr @ofc02toc01_buff_4, align 4
  %73 = fadd float %71, %72
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %74 = load float, ptr @ofc02toc01_buff_5, align 4
  %75 = fadd float %73, %74
  %76 = fdiv float %75, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store float %76, ptr @out_buff_1, align 4
  call void @llvm.aie2.release(i32 34, i32 9)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %77 = load float, ptr @ofc02toc01_buff_6, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %78 = load float, ptr @ofc02toc01_buff_7, align 4
  %79 = fadd float %77, %78
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %80 = load float, ptr @ofc02toc01_buff_8, align 4
  %81 = fadd float %79, %80
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  %82 = load float, ptr @ofc02toc01_buff_9, align 4
  %83 = fadd float %81, %82
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %84 = load float, ptr @ofc02toc01_buff_0, align 4
  %85 = fadd float %83, %84
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %86 = load float, ptr @ofc02toc01_buff_1, align 4
  %87 = fadd float %85, %86
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %88 = load float, ptr @ofc02toc01_buff_2, align 4
  %89 = fadd float %87, %88
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %90 = load float, ptr @ofc02toc01_buff_3, align 4
  %91 = fadd float %89, %90
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %92 = load float, ptr @ofc02toc01_buff_4, align 4
  %93 = fadd float %91, %92
  %94 = fdiv float %93, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store float %94, ptr @out_buff_0, align 4
  call void @llvm.aie2.release(i32 34, i32 9)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %95 = load float, ptr @ofc02toc01_buff_5, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %96 = load float, ptr @ofc02toc01_buff_6, align 4
  %97 = fadd float %95, %96
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %98 = load float, ptr @ofc02toc01_buff_7, align 4
  %99 = fadd float %97, %98
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %100 = load float, ptr @ofc02toc01_buff_8, align 4
  %101 = fadd float %99, %100
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  %102 = load float, ptr @ofc02toc01_buff_9, align 4
  %103 = fadd float %101, %102
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %104 = load float, ptr @ofc02toc01_buff_0, align 4
  %105 = fadd float %103, %104
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %106 = load float, ptr @ofc02toc01_buff_1, align 4
  %107 = fadd float %105, %106
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %108 = load float, ptr @ofc02toc01_buff_2, align 4
  %109 = fadd float %107, %108
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %110 = load float, ptr @ofc02toc01_buff_3, align 4
  %111 = fadd float %109, %110
  %112 = fdiv float %111, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store float %112, ptr @out_buff_1, align 4
  call void @llvm.aie2.release(i32 34, i32 9)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %113 = load float, ptr @ofc02toc01_buff_4, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %114 = load float, ptr @ofc02toc01_buff_5, align 4
  %115 = fadd float %113, %114
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %116 = load float, ptr @ofc02toc01_buff_6, align 4
  %117 = fadd float %115, %116
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %118 = load float, ptr @ofc02toc01_buff_7, align 4
  %119 = fadd float %117, %118
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %120 = load float, ptr @ofc02toc01_buff_8, align 4
  %121 = fadd float %119, %120
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  %122 = load float, ptr @ofc02toc01_buff_9, align 4
  %123 = fadd float %121, %122
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %124 = load float, ptr @ofc02toc01_buff_0, align 4
  %125 = fadd float %123, %124
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %126 = load float, ptr @ofc02toc01_buff_1, align 4
  %127 = fadd float %125, %126
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %128 = load float, ptr @ofc02toc01_buff_2, align 4
  %129 = fadd float %127, %128
  %130 = fdiv float %129, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store float %130, ptr @out_buff_0, align 4
  call void @llvm.aie2.release(i32 34, i32 9)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %131 = load float, ptr @ofc02toc01_buff_3, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %132 = load float, ptr @ofc02toc01_buff_4, align 4
  %133 = fadd float %131, %132
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %134 = load float, ptr @ofc02toc01_buff_5, align 4
  %135 = fadd float %133, %134
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %136 = load float, ptr @ofc02toc01_buff_6, align 4
  %137 = fadd float %135, %136
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %138 = load float, ptr @ofc02toc01_buff_7, align 4
  %139 = fadd float %137, %138
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %140 = load float, ptr @ofc02toc01_buff_8, align 4
  %141 = fadd float %139, %140
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  %142 = load float, ptr @ofc02toc01_buff_9, align 4
  %143 = fadd float %141, %142
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %144 = load float, ptr @ofc02toc01_buff_0, align 4
  %145 = fadd float %143, %144
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %146 = load float, ptr @ofc02toc01_buff_1, align 4
  %147 = fadd float %145, %146
  %148 = fdiv float %147, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store float %148, ptr @out_buff_1, align 4
  call void @llvm.aie2.release(i32 34, i32 9)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %149 = load float, ptr @ofc02toc01_buff_2, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %150 = load float, ptr @ofc02toc01_buff_3, align 4
  %151 = fadd float %149, %150
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %152 = load float, ptr @ofc02toc01_buff_4, align 4
  %153 = fadd float %151, %152
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %154 = load float, ptr @ofc02toc01_buff_5, align 4
  %155 = fadd float %153, %154
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %156 = load float, ptr @ofc02toc01_buff_6, align 4
  %157 = fadd float %155, %156
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %158 = load float, ptr @ofc02toc01_buff_7, align 4
  %159 = fadd float %157, %158
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %160 = load float, ptr @ofc02toc01_buff_8, align 4
  %161 = fadd float %159, %160
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  %162 = load float, ptr @ofc02toc01_buff_9, align 4
  %163 = fadd float %161, %162
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %164 = load float, ptr @ofc02toc01_buff_0, align 4
  %165 = fadd float %163, %164
  %166 = fdiv float %165, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store float %166, ptr @out_buff_0, align 4
  call void @llvm.aie2.release(i32 34, i32 9)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %167 = load float, ptr @ofc02toc01_buff_1, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %168 = load float, ptr @ofc02toc01_buff_2, align 4
  %169 = fadd float %167, %168
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %170 = load float, ptr @ofc02toc01_buff_3, align 4
  %171 = fadd float %169, %170
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %172 = load float, ptr @ofc02toc01_buff_4, align 4
  %173 = fadd float %171, %172
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %174 = load float, ptr @ofc02toc01_buff_5, align 4
  %175 = fadd float %173, %174
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %176 = load float, ptr @ofc02toc01_buff_6, align 4
  %177 = fadd float %175, %176
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %178 = load float, ptr @ofc02toc01_buff_7, align 4
  %179 = fadd float %177, %178
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %180 = load float, ptr @ofc02toc01_buff_8, align 4
  %181 = fadd float %179, %180
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  %182 = load float, ptr @ofc02toc01_buff_9, align 4
  %183 = fadd float %181, %182
  %184 = fdiv float %183, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store float %184, ptr @out_buff_1, align 4
  call void @llvm.aie2.release(i32 34, i32 9)
  call void @llvm.aie2.release(i32 49, i32 1)
  %185 = add i64 %2, 10
  br label %1

186:                                              ; preds = %189, %1
  %187 = phi i64 [ %208, %189 ], [ 9223372036854775800, %1 ]
  %188 = icmp slt i64 %187, 9223372036854775807
  br i1 %188, label %189, label %209

189:                                              ; preds = %186
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %190 = load float, ptr @ofc02toc01_buff_0, align 4
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %191 = load float, ptr @ofc02toc01_buff_1, align 4
  %192 = fadd float %190, %191
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %193 = load float, ptr @ofc02toc01_buff_2, align 4
  %194 = fadd float %192, %193
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %195 = load float, ptr @ofc02toc01_buff_3, align 4
  %196 = fadd float %194, %195
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %197 = load float, ptr @ofc02toc01_buff_4, align 4
  %198 = fadd float %196, %197
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %199 = load float, ptr @ofc02toc01_buff_5, align 4
  %200 = fadd float %198, %199
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %201 = load float, ptr @ofc02toc01_buff_6, align 4
  %202 = fadd float %200, %201
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %203 = load float, ptr @ofc02toc01_buff_7, align 4
  %204 = fadd float %202, %203
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %205 = load float, ptr @ofc02toc01_buff_8, align 4
  %206 = fadd float %204, %205
  %207 = fdiv float %206, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store float %207, ptr @out_buff_0, align 4
  call void @llvm.aie2.release(i32 34, i32 9)
  call void @llvm.aie2.release(i32 49, i32 1)
  %208 = add i64 %187, 1
  br label %186

209:                                              ; preds = %186
  ret void
}

define void @core_0_4() {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775800
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_2, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_3, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_4, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_5, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_6, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_7, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_8, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_9, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_2, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_3, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_4, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_5, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_6, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_7, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_8, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_9, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_2, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_3, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_4, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_5, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_6, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_7, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_8, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_9, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_2, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_3, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_4, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_5, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_6, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_7, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_8, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_9, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_2, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_3, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_4, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_5, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_6, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_7, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_8, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_9, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_2, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_3, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_4, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_5, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_6, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_7, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_8, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_9, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_2, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_3, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_4, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_5, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_6, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_7, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_8, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_9, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_2, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_3, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_4, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_5, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_6, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_7, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_8, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_9, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_2, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_3, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_4, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_5, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_6, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_7, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_8, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_9, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %5 = add i64 %2, 10
  br label %1

6:                                                ; preds = %9, %1
  %7 = phi i64 [ %10, %9 ], [ 9223372036854775800, %1 ]
  %8 = icmp slt i64 %7, 9223372036854775807
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_2, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_3, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_4, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_5, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_6, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_1, ptr @ofc02toc01_buff_7, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  call void @mean(ptr @ofc11toc02_cons_buff_0, ptr @ofc02toc01_buff_8, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %10 = add i64 %7, 1
  br label %6

11:                                               ; preds = %6
  ret void
}

define void @core_1_3() {
  br label %1

1:                                                ; preds = %15, %0
  %2 = phi i64 [ %16, %15 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %17

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @in1_cons_buff_0, ptr @of_c12toc11_buff_0, ptr @ofc11toc02_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @in1_cons_buff_1, ptr @of_c12toc11_buff_1, ptr @ofc11toc02_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @in1_cons_buff_0, ptr @of_c12toc11_buff_0, ptr @ofc11toc02_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi i64 [ %14, %13 ], [ 0, %9 ]
  %12 = icmp slt i64 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @in1_cons_buff_1, ptr @of_c12toc11_buff_1, ptr @ofc11toc02_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @in1_cons_buff_0, ptr @of_c12toc11_buff_0, ptr @ofc11toc02_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %14 = add i64 %11, 2
  br label %10

15:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @in1_cons_buff_1, ptr @of_c12toc11_buff_1, ptr @ofc11toc02_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %16 = add i64 %2, 2
  br label %1

17:                                               ; preds = %20, %1
  %18 = phi i64 [ %21, %20 ], [ 0, %1 ]
  %19 = icmp slt i64 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @in1_cons_buff_0, ptr @of_c12toc11_buff_0, ptr @ofc11toc02_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @in1_cons_buff_1, ptr @of_c12toc11_buff_1, ptr @ofc11toc02_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %21 = add i64 %18, 2
  br label %17

22:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @in1_cons_buff_0, ptr @of_c12toc11_buff_0, ptr @ofc11toc02_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

define void @core_1_4() {
  br label %1

1:                                                ; preds = %15, %0
  %2 = phi i64 [ %16, %15 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %17

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @passthrough(ptr @of_c22toc12_buff_0, ptr @of_c12toc11_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @passthrough(ptr @of_c22toc12_buff_1, ptr @of_c12toc11_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @passthrough(ptr @of_c22toc12_buff_0, ptr @of_c12toc11_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi i64 [ %14, %13 ], [ 0, %9 ]
  %12 = icmp slt i64 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @passthrough(ptr @of_c22toc12_buff_1, ptr @of_c12toc11_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @passthrough(ptr @of_c22toc12_buff_0, ptr @of_c12toc11_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %14 = add i64 %11, 2
  br label %10

15:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @passthrough(ptr @of_c22toc12_buff_1, ptr @of_c12toc11_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %16 = add i64 %2, 2
  br label %1

17:                                               ; preds = %20, %1
  %18 = phi i64 [ %21, %20 ], [ 0, %1 ]
  %19 = icmp slt i64 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @passthrough(ptr @of_c22toc12_buff_0, ptr @of_c12toc11_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @passthrough(ptr @of_c22toc12_buff_1, ptr @of_c12toc11_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %21 = add i64 %18, 2
  br label %17

22:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @passthrough(ptr @of_c22toc12_buff_0, ptr @of_c12toc11_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

define void @core_2_4() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_c21toc22_buff_0, ptr @of_c22toc12_buff_0, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_c21toc22_buff_1, ptr @of_c22toc12_buff_1, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 17, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_c21toc22_buff_0, ptr @of_c22toc12_buff_0, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_c21toc22_buff_1, ptr @of_c22toc12_buff_1, ptr @in0_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_c21toc22_buff_0, ptr @of_c22toc12_buff_0, ptr @in0_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 17, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_c21toc22_buff_1, ptr @of_c22toc12_buff_1, ptr @in0_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 0, %18 ]
  %21 = icmp slt i64 %20, 8
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_c21toc22_buff_0, ptr @of_c22toc12_buff_0, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_c21toc22_buff_1, ptr @of_c22toc12_buff_1, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 17, i32 1)
  %23 = add i64 %20, 2
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_c21toc22_buff_0, ptr @of_c22toc12_buff_0, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_2_3() {
  br label %1

1:                                                ; preds = %15, %0
  %2 = phi i64 [ %16, %15 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %17

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_c10toc11_cons_buff_0, ptr @of_c21toc22_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_1, i64 32) ]
  call void @passthrough(ptr @of_c10toc11_cons_buff_1, ptr @of_c21toc22_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_c10toc11_cons_buff_0, ptr @of_c21toc22_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi i64 [ %14, %13 ], [ 0, %9 ]
  %12 = icmp slt i64 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_1, i64 32) ]
  call void @passthrough(ptr @of_c10toc11_cons_buff_1, ptr @of_c21toc22_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_c10toc11_cons_buff_0, ptr @of_c21toc22_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %14 = add i64 %11, 2
  br label %10

15:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_1, i64 32) ]
  call void @passthrough(ptr @of_c10toc11_cons_buff_1, ptr @of_c21toc22_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %16 = add i64 %2, 2
  br label %1

17:                                               ; preds = %20, %1
  %18 = phi i64 [ %21, %20 ], [ 0, %1 ]
  %19 = icmp slt i64 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_c10toc11_cons_buff_0, ptr @of_c21toc22_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_1, i64 32) ]
  call void @passthrough(ptr @of_c10toc11_cons_buff_1, ptr @of_c21toc22_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %21 = add i64 %18, 2
  br label %17

22:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_c10toc11_cons_buff_0, ptr @of_c21toc22_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_1_2() {
  br label %1

1:                                                ; preds = %28, %0
  %2 = phi i64 [ %29, %28 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %30

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_0, ptr @of_c10toc11_buff_0, ptr @in3_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_1, ptr @of_c10toc11_buff_1, ptr @in3_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_0, ptr @of_c10toc11_buff_0, ptr @in3_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_1, ptr @of_c10toc11_buff_1, ptr @in3_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_0, ptr @of_c10toc11_buff_0, ptr @in3_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_1, ptr @of_c10toc11_buff_1, ptr @in3_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %17

17:                                               ; preds = %20, %16
  %18 = phi i64 [ %21, %20 ], [ 0, %16 ]
  %19 = icmp slt i64 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_0, ptr @of_c10toc11_buff_0, ptr @in3_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_1, ptr @of_c10toc11_buff_1, ptr @in3_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %21 = add i64 %18, 2
  br label %17

22:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_0, ptr @of_c10toc11_buff_0, ptr @in3_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %23

23:                                               ; preds = %26, %22
  %24 = phi i64 [ %27, %26 ], [ 0, %22 ]
  %25 = icmp slt i64 %24, 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_1, ptr @of_c10toc11_buff_1, ptr @in3_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_0, ptr @of_c10toc11_buff_0, ptr @in3_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %27 = add i64 %24, 2
  br label %23

28:                                               ; preds = %23
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_1, ptr @of_c10toc11_buff_1, ptr @in3_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %29 = add i64 %2, 2
  br label %1

30:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %31

31:                                               ; preds = %34, %30
  %32 = phi i64 [ %35, %34 ], [ 0, %30 ]
  %33 = icmp slt i64 %32, 8
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_0, ptr @of_c10toc11_buff_0, ptr @in3_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_1, ptr @of_c10toc11_buff_1, ptr @in3_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %35 = add i64 %32, 2
  br label %31

36:                                               ; preds = %31
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_0, ptr @of_c10toc11_buff_0, ptr @in3_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %37

37:                                               ; preds = %40, %36
  %38 = phi i64 [ %41, %40 ], [ 0, %36 ]
  %39 = icmp slt i64 %38, 8
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_1, ptr @of_c10toc11_buff_1, ptr @in3_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_0, ptr @of_c10toc11_buff_0, ptr @in3_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  %41 = add i64 %38, 2
  br label %37

42:                                               ; preds = %37
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @in2_cons_buff_1, ptr @of_c10toc11_buff_1, ptr @in3_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
