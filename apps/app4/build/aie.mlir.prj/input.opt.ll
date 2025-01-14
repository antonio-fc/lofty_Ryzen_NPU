; ModuleID = '/notebooks/my_mlir-aie/apps/app4/build/aie.mlir.prj/input.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

@in0_cons_buff_1 = external global [1 x float]
@in0_cons_buff_0 = external global [1 x float]
@in1_cons_buff_1 = external global [1024 x float]
@in1_cons_buff_0 = external global [1024 x float]
@in2_cons_buff_1 = external global [1024 x float]
@in2_cons_buff_0 = external global [1024 x float]
@in3_cons_buff_1 = external global [1 x float]
@in3_cons_buff_0 = external global [1 x float]
@of_c10toc11_buff_1 = external global [1024 x float]
@of_c10toc11_buff_0 = external global [1024 x float]
@of_c10toc11_cons_buff_1 = external global [1024 x float]
@of_c10toc11_cons_buff_0 = external global [1024 x float]
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

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @vector_scalar_mul_aie_scalar(ptr, ptr, ptr, i32) local_unnamed_addr

declare void @passthrough(ptr, ptr, i32) local_unnamed_addr

declare void @vector_mult_aie_scalar(ptr, ptr, ptr, i32) local_unnamed_addr

declare void @mean(ptr, ptr, i32) local_unnamed_addr

; Function Attrs: nounwind
define void @core_0_3() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %183, %1 ]
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %3 = load float, ptr @ofc02toc01_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %4 = load float, ptr @ofc02toc01_buff_1, align 32
  %5 = fadd float %3, %4
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %6 = load float, ptr @ofc02toc01_buff_2, align 32
  %7 = fadd float %5, %6
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %8 = load float, ptr @ofc02toc01_buff_3, align 32
  %9 = fadd float %7, %8
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %10 = load float, ptr @ofc02toc01_buff_4, align 32
  %11 = fadd float %9, %10
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %12 = load float, ptr @ofc02toc01_buff_5, align 32
  %13 = fadd float %11, %12
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %14 = load float, ptr @ofc02toc01_buff_6, align 32
  %15 = fadd float %13, %14
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %16 = load float, ptr @ofc02toc01_buff_7, align 32
  %17 = fadd float %15, %16
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %18 = load float, ptr @ofc02toc01_buff_8, align 32
  %19 = fadd float %17, %18
  %20 = fdiv float %19, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store float %20, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  %21 = load float, ptr @ofc02toc01_buff_9, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %22 = load float, ptr @ofc02toc01_buff_0, align 32
  %23 = fadd float %21, %22
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %24 = load float, ptr @ofc02toc01_buff_1, align 32
  %25 = fadd float %23, %24
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %26 = load float, ptr @ofc02toc01_buff_2, align 32
  %27 = fadd float %25, %26
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %28 = load float, ptr @ofc02toc01_buff_3, align 32
  %29 = fadd float %27, %28
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %30 = load float, ptr @ofc02toc01_buff_4, align 32
  %31 = fadd float %29, %30
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %32 = load float, ptr @ofc02toc01_buff_5, align 32
  %33 = fadd float %31, %32
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %34 = load float, ptr @ofc02toc01_buff_6, align 32
  %35 = fadd float %33, %34
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %36 = load float, ptr @ofc02toc01_buff_7, align 32
  %37 = fadd float %35, %36
  %38 = fdiv float %37, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store float %38, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %39 = load float, ptr @ofc02toc01_buff_8, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  %40 = load float, ptr @ofc02toc01_buff_9, align 32
  %41 = fadd float %39, %40
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %42 = load float, ptr @ofc02toc01_buff_0, align 32
  %43 = fadd float %41, %42
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %44 = load float, ptr @ofc02toc01_buff_1, align 32
  %45 = fadd float %43, %44
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %46 = load float, ptr @ofc02toc01_buff_2, align 32
  %47 = fadd float %45, %46
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %48 = load float, ptr @ofc02toc01_buff_3, align 32
  %49 = fadd float %47, %48
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %50 = load float, ptr @ofc02toc01_buff_4, align 32
  %51 = fadd float %49, %50
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %52 = load float, ptr @ofc02toc01_buff_5, align 32
  %53 = fadd float %51, %52
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %54 = load float, ptr @ofc02toc01_buff_6, align 32
  %55 = fadd float %53, %54
  %56 = fdiv float %55, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store float %56, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %57 = load float, ptr @ofc02toc01_buff_7, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %58 = load float, ptr @ofc02toc01_buff_8, align 32
  %59 = fadd float %57, %58
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  %60 = load float, ptr @ofc02toc01_buff_9, align 32
  %61 = fadd float %59, %60
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %62 = load float, ptr @ofc02toc01_buff_0, align 32
  %63 = fadd float %61, %62
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %64 = load float, ptr @ofc02toc01_buff_1, align 32
  %65 = fadd float %63, %64
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %66 = load float, ptr @ofc02toc01_buff_2, align 32
  %67 = fadd float %65, %66
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %68 = load float, ptr @ofc02toc01_buff_3, align 32
  %69 = fadd float %67, %68
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %70 = load float, ptr @ofc02toc01_buff_4, align 32
  %71 = fadd float %69, %70
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %72 = load float, ptr @ofc02toc01_buff_5, align 32
  %73 = fadd float %71, %72
  %74 = fdiv float %73, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store float %74, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %75 = load float, ptr @ofc02toc01_buff_6, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %76 = load float, ptr @ofc02toc01_buff_7, align 32
  %77 = fadd float %75, %76
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %78 = load float, ptr @ofc02toc01_buff_8, align 32
  %79 = fadd float %77, %78
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  %80 = load float, ptr @ofc02toc01_buff_9, align 32
  %81 = fadd float %79, %80
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %82 = load float, ptr @ofc02toc01_buff_0, align 32
  %83 = fadd float %81, %82
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %84 = load float, ptr @ofc02toc01_buff_1, align 32
  %85 = fadd float %83, %84
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %86 = load float, ptr @ofc02toc01_buff_2, align 32
  %87 = fadd float %85, %86
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %88 = load float, ptr @ofc02toc01_buff_3, align 32
  %89 = fadd float %87, %88
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %90 = load float, ptr @ofc02toc01_buff_4, align 32
  %91 = fadd float %89, %90
  %92 = fdiv float %91, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store float %92, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %93 = load float, ptr @ofc02toc01_buff_5, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %94 = load float, ptr @ofc02toc01_buff_6, align 32
  %95 = fadd float %93, %94
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %96 = load float, ptr @ofc02toc01_buff_7, align 32
  %97 = fadd float %95, %96
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %98 = load float, ptr @ofc02toc01_buff_8, align 32
  %99 = fadd float %97, %98
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  %100 = load float, ptr @ofc02toc01_buff_9, align 32
  %101 = fadd float %99, %100
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %102 = load float, ptr @ofc02toc01_buff_0, align 32
  %103 = fadd float %101, %102
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %104 = load float, ptr @ofc02toc01_buff_1, align 32
  %105 = fadd float %103, %104
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %106 = load float, ptr @ofc02toc01_buff_2, align 32
  %107 = fadd float %105, %106
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %108 = load float, ptr @ofc02toc01_buff_3, align 32
  %109 = fadd float %107, %108
  %110 = fdiv float %109, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store float %110, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %111 = load float, ptr @ofc02toc01_buff_4, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %112 = load float, ptr @ofc02toc01_buff_5, align 32
  %113 = fadd float %111, %112
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %114 = load float, ptr @ofc02toc01_buff_6, align 32
  %115 = fadd float %113, %114
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %116 = load float, ptr @ofc02toc01_buff_7, align 32
  %117 = fadd float %115, %116
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %118 = load float, ptr @ofc02toc01_buff_8, align 32
  %119 = fadd float %117, %118
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  %120 = load float, ptr @ofc02toc01_buff_9, align 32
  %121 = fadd float %119, %120
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %122 = load float, ptr @ofc02toc01_buff_0, align 32
  %123 = fadd float %121, %122
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %124 = load float, ptr @ofc02toc01_buff_1, align 32
  %125 = fadd float %123, %124
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %126 = load float, ptr @ofc02toc01_buff_2, align 32
  %127 = fadd float %125, %126
  %128 = fdiv float %127, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store float %128, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %129 = load float, ptr @ofc02toc01_buff_3, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %130 = load float, ptr @ofc02toc01_buff_4, align 32
  %131 = fadd float %129, %130
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %132 = load float, ptr @ofc02toc01_buff_5, align 32
  %133 = fadd float %131, %132
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %134 = load float, ptr @ofc02toc01_buff_6, align 32
  %135 = fadd float %133, %134
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %136 = load float, ptr @ofc02toc01_buff_7, align 32
  %137 = fadd float %135, %136
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %138 = load float, ptr @ofc02toc01_buff_8, align 32
  %139 = fadd float %137, %138
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  %140 = load float, ptr @ofc02toc01_buff_9, align 32
  %141 = fadd float %139, %140
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %142 = load float, ptr @ofc02toc01_buff_0, align 32
  %143 = fadd float %141, %142
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %144 = load float, ptr @ofc02toc01_buff_1, align 32
  %145 = fadd float %143, %144
  %146 = fdiv float %145, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store float %146, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %147 = load float, ptr @ofc02toc01_buff_2, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %148 = load float, ptr @ofc02toc01_buff_3, align 32
  %149 = fadd float %147, %148
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %150 = load float, ptr @ofc02toc01_buff_4, align 32
  %151 = fadd float %149, %150
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %152 = load float, ptr @ofc02toc01_buff_5, align 32
  %153 = fadd float %151, %152
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %154 = load float, ptr @ofc02toc01_buff_6, align 32
  %155 = fadd float %153, %154
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %156 = load float, ptr @ofc02toc01_buff_7, align 32
  %157 = fadd float %155, %156
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %158 = load float, ptr @ofc02toc01_buff_8, align 32
  %159 = fadd float %157, %158
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  %160 = load float, ptr @ofc02toc01_buff_9, align 32
  %161 = fadd float %159, %160
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %162 = load float, ptr @ofc02toc01_buff_0, align 32
  %163 = fadd float %161, %162
  %164 = fdiv float %163, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store float %164, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %165 = load float, ptr @ofc02toc01_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %166 = load float, ptr @ofc02toc01_buff_2, align 32
  %167 = fadd float %165, %166
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %168 = load float, ptr @ofc02toc01_buff_3, align 32
  %169 = fadd float %167, %168
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %170 = load float, ptr @ofc02toc01_buff_4, align 32
  %171 = fadd float %169, %170
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %172 = load float, ptr @ofc02toc01_buff_5, align 32
  %173 = fadd float %171, %172
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %174 = load float, ptr @ofc02toc01_buff_6, align 32
  %175 = fadd float %173, %174
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %176 = load float, ptr @ofc02toc01_buff_7, align 32
  %177 = fadd float %175, %176
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %178 = load float, ptr @ofc02toc01_buff_8, align 32
  %179 = fadd float %177, %178
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  %180 = load float, ptr @ofc02toc01_buff_9, align 32
  %181 = fadd float %179, %180
  %182 = fdiv float %181, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store float %182, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %183 = add nuw nsw i64 %2, 10
  %184 = icmp ult i64 %2, 9223372036854775790
  br i1 %184, label %1, label %.preheader.preheader

.preheader.preheader:                             ; preds = %1
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %185 = load float, ptr @ofc02toc01_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %186 = load float, ptr @ofc02toc01_buff_1, align 32
  %187 = fadd float %185, %186
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %188 = load float, ptr @ofc02toc01_buff_2, align 32
  %189 = fadd float %187, %188
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %190 = load float, ptr @ofc02toc01_buff_3, align 32
  %191 = fadd float %189, %190
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %192 = load float, ptr @ofc02toc01_buff_4, align 32
  %193 = fadd float %191, %192
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %194 = load float, ptr @ofc02toc01_buff_5, align 32
  %195 = fadd float %193, %194
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %196 = load float, ptr @ofc02toc01_buff_6, align 32
  %197 = fadd float %195, %196
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %198 = load float, ptr @ofc02toc01_buff_7, align 32
  %199 = fadd float %197, %198
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %200 = load float, ptr @ofc02toc01_buff_8, align 32
  %201 = fadd float %199, %200
  %202 = fdiv float %201, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store float %202, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %203 = load float, ptr @ofc02toc01_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %204 = load float, ptr @ofc02toc01_buff_1, align 32
  %205 = fadd float %203, %204
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %206 = load float, ptr @ofc02toc01_buff_2, align 32
  %207 = fadd float %205, %206
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %208 = load float, ptr @ofc02toc01_buff_3, align 32
  %209 = fadd float %207, %208
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %210 = load float, ptr @ofc02toc01_buff_4, align 32
  %211 = fadd float %209, %210
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %212 = load float, ptr @ofc02toc01_buff_5, align 32
  %213 = fadd float %211, %212
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %214 = load float, ptr @ofc02toc01_buff_6, align 32
  %215 = fadd float %213, %214
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %216 = load float, ptr @ofc02toc01_buff_7, align 32
  %217 = fadd float %215, %216
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %218 = load float, ptr @ofc02toc01_buff_8, align 32
  %219 = fadd float %217, %218
  %220 = fdiv float %219, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store float %220, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %221 = load float, ptr @ofc02toc01_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %222 = load float, ptr @ofc02toc01_buff_1, align 32
  %223 = fadd float %221, %222
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %224 = load float, ptr @ofc02toc01_buff_2, align 32
  %225 = fadd float %223, %224
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %226 = load float, ptr @ofc02toc01_buff_3, align 32
  %227 = fadd float %225, %226
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %228 = load float, ptr @ofc02toc01_buff_4, align 32
  %229 = fadd float %227, %228
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %230 = load float, ptr @ofc02toc01_buff_5, align 32
  %231 = fadd float %229, %230
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %232 = load float, ptr @ofc02toc01_buff_6, align 32
  %233 = fadd float %231, %232
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %234 = load float, ptr @ofc02toc01_buff_7, align 32
  %235 = fadd float %233, %234
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %236 = load float, ptr @ofc02toc01_buff_8, align 32
  %237 = fadd float %235, %236
  %238 = fdiv float %237, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store float %238, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %239 = load float, ptr @ofc02toc01_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %240 = load float, ptr @ofc02toc01_buff_1, align 32
  %241 = fadd float %239, %240
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %242 = load float, ptr @ofc02toc01_buff_2, align 32
  %243 = fadd float %241, %242
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %244 = load float, ptr @ofc02toc01_buff_3, align 32
  %245 = fadd float %243, %244
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %246 = load float, ptr @ofc02toc01_buff_4, align 32
  %247 = fadd float %245, %246
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %248 = load float, ptr @ofc02toc01_buff_5, align 32
  %249 = fadd float %247, %248
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %250 = load float, ptr @ofc02toc01_buff_6, align 32
  %251 = fadd float %249, %250
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %252 = load float, ptr @ofc02toc01_buff_7, align 32
  %253 = fadd float %251, %252
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %254 = load float, ptr @ofc02toc01_buff_8, align 32
  %255 = fadd float %253, %254
  %256 = fdiv float %255, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store float %256, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %257 = load float, ptr @ofc02toc01_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %258 = load float, ptr @ofc02toc01_buff_1, align 32
  %259 = fadd float %257, %258
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %260 = load float, ptr @ofc02toc01_buff_2, align 32
  %261 = fadd float %259, %260
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %262 = load float, ptr @ofc02toc01_buff_3, align 32
  %263 = fadd float %261, %262
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %264 = load float, ptr @ofc02toc01_buff_4, align 32
  %265 = fadd float %263, %264
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %266 = load float, ptr @ofc02toc01_buff_5, align 32
  %267 = fadd float %265, %266
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %268 = load float, ptr @ofc02toc01_buff_6, align 32
  %269 = fadd float %267, %268
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %270 = load float, ptr @ofc02toc01_buff_7, align 32
  %271 = fadd float %269, %270
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %272 = load float, ptr @ofc02toc01_buff_8, align 32
  %273 = fadd float %271, %272
  %274 = fdiv float %273, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store float %274, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %275 = load float, ptr @ofc02toc01_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %276 = load float, ptr @ofc02toc01_buff_1, align 32
  %277 = fadd float %275, %276
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %278 = load float, ptr @ofc02toc01_buff_2, align 32
  %279 = fadd float %277, %278
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %280 = load float, ptr @ofc02toc01_buff_3, align 32
  %281 = fadd float %279, %280
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %282 = load float, ptr @ofc02toc01_buff_4, align 32
  %283 = fadd float %281, %282
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %284 = load float, ptr @ofc02toc01_buff_5, align 32
  %285 = fadd float %283, %284
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %286 = load float, ptr @ofc02toc01_buff_6, align 32
  %287 = fadd float %285, %286
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %288 = load float, ptr @ofc02toc01_buff_7, align 32
  %289 = fadd float %287, %288
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %290 = load float, ptr @ofc02toc01_buff_8, align 32
  %291 = fadd float %289, %290
  %292 = fdiv float %291, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store float %292, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  %293 = load float, ptr @ofc02toc01_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  %294 = load float, ptr @ofc02toc01_buff_1, align 32
  %295 = fadd float %293, %294
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  %296 = load float, ptr @ofc02toc01_buff_2, align 32
  %297 = fadd float %295, %296
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  %298 = load float, ptr @ofc02toc01_buff_3, align 32
  %299 = fadd float %297, %298
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  %300 = load float, ptr @ofc02toc01_buff_4, align 32
  %301 = fadd float %299, %300
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  %302 = load float, ptr @ofc02toc01_buff_5, align 32
  %303 = fadd float %301, %302
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  %304 = load float, ptr @ofc02toc01_buff_6, align 32
  %305 = fadd float %303, %304
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  %306 = load float, ptr @ofc02toc01_buff_7, align 32
  %307 = fadd float %305, %306
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  %308 = load float, ptr @ofc02toc01_buff_8, align 32
  %309 = fadd float %307, %308
  %310 = fdiv float %309, 9.000000e+00
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store float %310, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  ret void
}

define void @core_0_4() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_2, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_3, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_4, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_5, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_6, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_7, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_8, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_9, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_2, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_3, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_4, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_5, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_6, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_7, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_8, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_9, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_2, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_3, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_4, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_5, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_6, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_7, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_8, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_9, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_2, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_3, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_4, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_5, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_6, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_7, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_8, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_9, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_2, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_3, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_4, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_5, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_6, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_7, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_8, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_9, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_2, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_3, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_4, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_5, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_6, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_7, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_8, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_9, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_2, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_3, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_4, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_5, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_6, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_7, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_8, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_9, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_2, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_3, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_4, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_5, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_6, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_7, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_8, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_9, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_2, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_3, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_4, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_5, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_6, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_7, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_8, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_9, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %3 = add nuw nsw i64 %2, 10
  %4 = icmp ult i64 %2, 9223372036854775790
  br i1 %4, label %1, label %.preheader

.preheader:                                       ; preds = %1, %.preheader.1
  %5 = phi i64 [ %6, %.preheader.1 ], [ 9223372036854775800, %1 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_2, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_3, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_4, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_5, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_6, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_7, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_8, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %.not = icmp eq i64 %5, 9223372036854775806
  br i1 %.not, label %7, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_2, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_3, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_4, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_5, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_6, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_1, ptr nonnull @ofc02toc01_buff_7, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @ofc11toc02_cons_buff_0, ptr nonnull @ofc02toc01_buff_8, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %6 = add nuw nsw i64 %5, 2
  br label %.preheader

7:                                                ; preds = %.preheader
  ret void
}

define void @core_1_3() local_unnamed_addr {
  br label %.preheader3

.preheader3:                                      ; preds = %0, %.preheader3
  %1 = phi i64 [ 0, %0 ], [ %2, %.preheader3 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_0, ptr nonnull @of_c12toc11_buff_0, ptr nonnull @ofc11toc02_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_1, ptr nonnull @of_c12toc11_buff_1, ptr nonnull @ofc11toc02_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_0, ptr nonnull @of_c12toc11_buff_0, ptr nonnull @ofc11toc02_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_1, ptr nonnull @of_c12toc11_buff_1, ptr nonnull @ofc11toc02_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_0, ptr nonnull @of_c12toc11_buff_0, ptr nonnull @ofc11toc02_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_1, ptr nonnull @of_c12toc11_buff_1, ptr nonnull @ofc11toc02_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_0, ptr nonnull @of_c12toc11_buff_0, ptr nonnull @ofc11toc02_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_1, ptr nonnull @of_c12toc11_buff_1, ptr nonnull @ofc11toc02_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_0, ptr nonnull @of_c12toc11_buff_0, ptr nonnull @ofc11toc02_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_1, ptr nonnull @of_c12toc11_buff_1, ptr nonnull @ofc11toc02_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_0, ptr nonnull @of_c12toc11_buff_0, ptr nonnull @ofc11toc02_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_1, ptr nonnull @of_c12toc11_buff_1, ptr nonnull @ofc11toc02_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_0, ptr nonnull @of_c12toc11_buff_0, ptr nonnull @ofc11toc02_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_1, ptr nonnull @of_c12toc11_buff_1, ptr nonnull @ofc11toc02_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_0, ptr nonnull @of_c12toc11_buff_0, ptr nonnull @ofc11toc02_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_1, ptr nonnull @of_c12toc11_buff_1, ptr nonnull @ofc11toc02_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_0, ptr nonnull @of_c12toc11_buff_0, ptr nonnull @ofc11toc02_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_1, ptr nonnull @of_c12toc11_buff_1, ptr nonnull @ofc11toc02_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %2 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %2, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader3

.preheader.preheader:                             ; preds = %.preheader3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_0, ptr nonnull @of_c12toc11_buff_0, ptr nonnull @ofc11toc02_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_1, ptr nonnull @of_c12toc11_buff_1, ptr nonnull @ofc11toc02_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_0, ptr nonnull @of_c12toc11_buff_0, ptr nonnull @ofc11toc02_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_1, ptr nonnull @of_c12toc11_buff_1, ptr nonnull @ofc11toc02_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_0, ptr nonnull @of_c12toc11_buff_0, ptr nonnull @ofc11toc02_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_1, ptr nonnull @of_c12toc11_buff_1, ptr nonnull @ofc11toc02_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_0, ptr nonnull @of_c12toc11_buff_0, ptr nonnull @ofc11toc02_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_1, ptr nonnull @of_c12toc11_buff_1, ptr nonnull @ofc11toc02_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc11toc02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @in1_cons_buff_0, ptr nonnull @of_c12toc11_buff_0, ptr nonnull @ofc11toc02_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

define void @core_1_4() local_unnamed_addr {
  br label %.preheader3

.preheader3:                                      ; preds = %0, %.preheader3
  %1 = phi i64 [ 0, %0 ], [ %2, %.preheader3 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_0, ptr nonnull @of_c12toc11_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_1, ptr nonnull @of_c12toc11_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_0, ptr nonnull @of_c12toc11_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_1, ptr nonnull @of_c12toc11_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_0, ptr nonnull @of_c12toc11_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_1, ptr nonnull @of_c12toc11_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_0, ptr nonnull @of_c12toc11_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_1, ptr nonnull @of_c12toc11_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_0, ptr nonnull @of_c12toc11_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_1, ptr nonnull @of_c12toc11_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_0, ptr nonnull @of_c12toc11_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_1, ptr nonnull @of_c12toc11_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_0, ptr nonnull @of_c12toc11_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_1, ptr nonnull @of_c12toc11_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_0, ptr nonnull @of_c12toc11_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_1, ptr nonnull @of_c12toc11_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_0, ptr nonnull @of_c12toc11_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_1, ptr nonnull @of_c12toc11_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %2 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %2, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader3

.preheader.preheader:                             ; preds = %.preheader3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_0, ptr nonnull @of_c12toc11_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_1, ptr nonnull @of_c12toc11_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_0, ptr nonnull @of_c12toc11_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_1, ptr nonnull @of_c12toc11_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_0, ptr nonnull @of_c12toc11_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_1, ptr nonnull @of_c12toc11_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_0, ptr nonnull @of_c12toc11_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_1, ptr nonnull @of_c12toc11_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c12toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c22toc12_buff_0, ptr nonnull @of_c12toc11_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

define void @core_2_4() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_0, ptr nonnull @of_c22toc12_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_1, ptr nonnull @of_c22toc12_buff_1, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_0, ptr nonnull @of_c22toc12_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_1, ptr nonnull @of_c22toc12_buff_1, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_0, ptr nonnull @of_c22toc12_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_1, ptr nonnull @of_c22toc12_buff_1, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_0, ptr nonnull @of_c22toc12_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_1, ptr nonnull @of_c22toc12_buff_1, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_0, ptr nonnull @of_c22toc12_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_1, ptr nonnull @of_c22toc12_buff_1, ptr nonnull @in0_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_0, ptr nonnull @of_c22toc12_buff_0, ptr nonnull @in0_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_1, ptr nonnull @of_c22toc12_buff_1, ptr nonnull @in0_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_0, ptr nonnull @of_c22toc12_buff_0, ptr nonnull @in0_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_1, ptr nonnull @of_c22toc12_buff_1, ptr nonnull @in0_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_0, ptr nonnull @of_c22toc12_buff_0, ptr nonnull @in0_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_1, ptr nonnull @of_c22toc12_buff_1, ptr nonnull @in0_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_0, ptr nonnull @of_c22toc12_buff_0, ptr nonnull @in0_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_1, ptr nonnull @of_c22toc12_buff_1, ptr nonnull @in0_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %3 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %3, 9223372036854775806
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_0, ptr nonnull @of_c22toc12_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_1, ptr nonnull @of_c22toc12_buff_1, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_0, ptr nonnull @of_c22toc12_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_1, ptr nonnull @of_c22toc12_buff_1, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_0, ptr nonnull @of_c22toc12_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_1, ptr nonnull @of_c22toc12_buff_1, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_0, ptr nonnull @of_c22toc12_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_1, ptr nonnull @of_c22toc12_buff_1, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c22toc12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_c21toc22_buff_0, ptr nonnull @of_c22toc12_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_2_3() local_unnamed_addr {
  br label %.preheader3

.preheader3:                                      ; preds = %0, %.preheader3
  %1 = phi i64 [ 0, %0 ], [ %2, %.preheader3 ]
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_0, ptr nonnull @of_c21toc22_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_1, ptr nonnull @of_c21toc22_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_0, ptr nonnull @of_c21toc22_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_1, ptr nonnull @of_c21toc22_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_0, ptr nonnull @of_c21toc22_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_1, ptr nonnull @of_c21toc22_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_0, ptr nonnull @of_c21toc22_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_1, ptr nonnull @of_c21toc22_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_0, ptr nonnull @of_c21toc22_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_1, ptr nonnull @of_c21toc22_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_0, ptr nonnull @of_c21toc22_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_1, ptr nonnull @of_c21toc22_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_0, ptr nonnull @of_c21toc22_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_1, ptr nonnull @of_c21toc22_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_0, ptr nonnull @of_c21toc22_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_1, ptr nonnull @of_c21toc22_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_0, ptr nonnull @of_c21toc22_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_1, ptr nonnull @of_c21toc22_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  %2 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %2, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader3

.preheader.preheader:                             ; preds = %.preheader3
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_0, ptr nonnull @of_c21toc22_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_1, ptr nonnull @of_c21toc22_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_0, ptr nonnull @of_c21toc22_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_1, ptr nonnull @of_c21toc22_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_0, ptr nonnull @of_c21toc22_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_1, ptr nonnull @of_c21toc22_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_0, ptr nonnull @of_c21toc22_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_1, ptr nonnull @of_c21toc22_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c21toc22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_c10toc11_cons_buff_0, ptr nonnull @of_c21toc22_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  ret void
}

define void @core_1_2() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %3 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %3, 9223372036854775806
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_0, ptr nonnull @of_c10toc11_buff_0, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_c10toc11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in2_cons_buff_1, ptr nonnull @of_c10toc11_buff_1, ptr nonnull @in3_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nounwind }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
