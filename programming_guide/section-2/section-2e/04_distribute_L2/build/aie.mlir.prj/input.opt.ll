; ModuleID = '/notebooks/my_mlir-aie/programming_guide/section-2/section-2e/04_distribute_L2/build/aie.mlir.prj/input.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

@in0_cons_buff_1 = external global [8 x i32]
@in0_cons_buff_0 = external global [8 x i32]
@in1_cons_buff_1 = external global [8 x i32]
@in1_cons_buff_0 = external global [8 x i32]
@in2_cons_buff_1 = external global [8 x i32]
@in2_cons_buff_0 = external global [8 x i32]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

; Function Attrs: nounwind
define void @core_0_4() local_unnamed_addr #0 {
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  %1 = load i32, ptr @in2_cons_buff_0, align 32
  %2 = add i32 %1, 1
  store i32 %2, ptr @in2_cons_buff_0, align 32
  %3 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 1), align 4
  %4 = add i32 %3, 1
  store i32 %4, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 1), align 4
  %5 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 2), align 8
  %6 = add i32 %5, 1
  store i32 %6, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 2), align 8
  %7 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 3), align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 3), align 4
  %9 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 4), align 16
  %10 = add i32 %9, 1
  store i32 %10, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 4), align 16
  %11 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 5), align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 5), align 4
  %13 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 6), align 8
  %14 = add i32 %13, 1
  store i32 %14, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 6), align 8
  %15 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 7), align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  %17 = load i32, ptr @in2_cons_buff_1, align 32
  %18 = add i32 %17, 1
  store i32 %18, ptr @in2_cons_buff_1, align 32
  %19 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 1), align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 1), align 4
  %21 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 2), align 8
  %22 = add i32 %21, 1
  store i32 %22, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 2), align 8
  %23 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 3), align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 3), align 4
  %25 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 4), align 16
  %26 = add i32 %25, 1
  store i32 %26, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 4), align 16
  %27 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 5), align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 5), align 4
  %29 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 6), align 8
  %30 = add i32 %29, 1
  store i32 %30, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 6), align 8
  %31 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 7), align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  %33 = load i32, ptr @in2_cons_buff_0, align 32
  %34 = add i32 %33, 1
  store i32 %34, ptr @in2_cons_buff_0, align 32
  %35 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 1), align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 1), align 4
  %37 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 2), align 8
  %38 = add i32 %37, 1
  store i32 %38, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 2), align 8
  %39 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 3), align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 3), align 4
  %41 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 4), align 16
  %42 = add i32 %41, 1
  store i32 %42, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 4), align 16
  %43 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 5), align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 5), align 4
  %45 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 6), align 8
  %46 = add i32 %45, 1
  store i32 %46, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 6), align 8
  %47 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 7), align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  %49 = load i32, ptr @in2_cons_buff_1, align 32
  %50 = add i32 %49, 1
  store i32 %50, ptr @in2_cons_buff_1, align 32
  %51 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 1), align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 1), align 4
  %53 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 2), align 8
  %54 = add i32 %53, 1
  store i32 %54, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 2), align 8
  %55 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 3), align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 3), align 4
  %57 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 4), align 16
  %58 = add i32 %57, 1
  store i32 %58, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 4), align 16
  %59 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 5), align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 5), align 4
  %61 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 6), align 8
  %62 = add i32 %61, 1
  store i32 %62, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 6), align 8
  %63 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 7), align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  %65 = load i32, ptr @in2_cons_buff_0, align 32
  %66 = add i32 %65, 1
  store i32 %66, ptr @in2_cons_buff_0, align 32
  %67 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 1), align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 1), align 4
  %69 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 2), align 8
  %70 = add i32 %69, 1
  store i32 %70, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 2), align 8
  %71 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 3), align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 3), align 4
  %73 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 4), align 16
  %74 = add i32 %73, 1
  store i32 %74, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 4), align 16
  %75 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 5), align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 5), align 4
  %77 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 6), align 8
  %78 = add i32 %77, 1
  store i32 %78, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 6), align 8
  %79 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 7), align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  %81 = load i32, ptr @in2_cons_buff_1, align 32
  %82 = add i32 %81, 1
  store i32 %82, ptr @in2_cons_buff_1, align 32
  %83 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 1), align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 1), align 4
  %85 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 2), align 8
  %86 = add i32 %85, 1
  store i32 %86, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 2), align 8
  %87 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 3), align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 3), align 4
  %89 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 4), align 16
  %90 = add i32 %89, 1
  store i32 %90, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 4), align 16
  %91 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 5), align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 5), align 4
  %93 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 6), align 8
  %94 = add i32 %93, 1
  store i32 %94, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 6), align 8
  %95 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 7), align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  %97 = load i32, ptr @in2_cons_buff_0, align 32
  %98 = add i32 %97, 1
  store i32 %98, ptr @in2_cons_buff_0, align 32
  %99 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 1), align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 1), align 4
  %101 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 2), align 8
  %102 = add i32 %101, 1
  store i32 %102, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 2), align 8
  %103 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 3), align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 3), align 4
  %105 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 4), align 16
  %106 = add i32 %105, 1
  store i32 %106, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 4), align 16
  %107 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 5), align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 5), align 4
  %109 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 6), align 8
  %110 = add i32 %109, 1
  store i32 %110, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 6), align 8
  %111 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 7), align 4
  %112 = add i32 %111, 1
  store i32 %112, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_0, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  %113 = load i32, ptr @in2_cons_buff_1, align 32
  %114 = add i32 %113, 1
  store i32 %114, ptr @in2_cons_buff_1, align 32
  %115 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 1), align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 1), align 4
  %117 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 2), align 8
  %118 = add i32 %117, 1
  store i32 %118, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 2), align 8
  %119 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 3), align 4
  %120 = add i32 %119, 1
  store i32 %120, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 3), align 4
  %121 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 4), align 16
  %122 = add i32 %121, 1
  store i32 %122, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 4), align 16
  %123 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 5), align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 5), align 4
  %125 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 6), align 8
  %126 = add i32 %125, 1
  store i32 %126, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 6), align 8
  %127 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 7), align 4
  %128 = add i32 %127, 1
  store i32 %128, ptr getelementptr inbounds ([8 x i32], ptr @in2_cons_buff_1, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_0_3() local_unnamed_addr #0 {
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  %1 = load i32, ptr @in1_cons_buff_0, align 32
  %2 = add i32 %1, 1
  store i32 %2, ptr @in1_cons_buff_0, align 32
  %3 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 1), align 4
  %4 = add i32 %3, 1
  store i32 %4, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 1), align 4
  %5 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 2), align 8
  %6 = add i32 %5, 1
  store i32 %6, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 2), align 8
  %7 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 3), align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 3), align 4
  %9 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 4), align 16
  %10 = add i32 %9, 1
  store i32 %10, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 4), align 16
  %11 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 5), align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 5), align 4
  %13 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 6), align 8
  %14 = add i32 %13, 1
  store i32 %14, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 6), align 8
  %15 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 7), align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  %17 = load i32, ptr @in1_cons_buff_1, align 32
  %18 = add i32 %17, 1
  store i32 %18, ptr @in1_cons_buff_1, align 32
  %19 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 1), align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 1), align 4
  %21 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 2), align 8
  %22 = add i32 %21, 1
  store i32 %22, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 2), align 8
  %23 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 3), align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 3), align 4
  %25 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 4), align 16
  %26 = add i32 %25, 1
  store i32 %26, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 4), align 16
  %27 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 5), align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 5), align 4
  %29 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 6), align 8
  %30 = add i32 %29, 1
  store i32 %30, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 6), align 8
  %31 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 7), align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  %33 = load i32, ptr @in1_cons_buff_0, align 32
  %34 = add i32 %33, 1
  store i32 %34, ptr @in1_cons_buff_0, align 32
  %35 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 1), align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 1), align 4
  %37 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 2), align 8
  %38 = add i32 %37, 1
  store i32 %38, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 2), align 8
  %39 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 3), align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 3), align 4
  %41 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 4), align 16
  %42 = add i32 %41, 1
  store i32 %42, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 4), align 16
  %43 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 5), align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 5), align 4
  %45 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 6), align 8
  %46 = add i32 %45, 1
  store i32 %46, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 6), align 8
  %47 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 7), align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  %49 = load i32, ptr @in1_cons_buff_1, align 32
  %50 = add i32 %49, 1
  store i32 %50, ptr @in1_cons_buff_1, align 32
  %51 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 1), align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 1), align 4
  %53 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 2), align 8
  %54 = add i32 %53, 1
  store i32 %54, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 2), align 8
  %55 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 3), align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 3), align 4
  %57 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 4), align 16
  %58 = add i32 %57, 1
  store i32 %58, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 4), align 16
  %59 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 5), align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 5), align 4
  %61 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 6), align 8
  %62 = add i32 %61, 1
  store i32 %62, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 6), align 8
  %63 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 7), align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  %65 = load i32, ptr @in1_cons_buff_0, align 32
  %66 = add i32 %65, 1
  store i32 %66, ptr @in1_cons_buff_0, align 32
  %67 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 1), align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 1), align 4
  %69 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 2), align 8
  %70 = add i32 %69, 1
  store i32 %70, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 2), align 8
  %71 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 3), align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 3), align 4
  %73 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 4), align 16
  %74 = add i32 %73, 1
  store i32 %74, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 4), align 16
  %75 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 5), align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 5), align 4
  %77 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 6), align 8
  %78 = add i32 %77, 1
  store i32 %78, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 6), align 8
  %79 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 7), align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  %81 = load i32, ptr @in1_cons_buff_1, align 32
  %82 = add i32 %81, 1
  store i32 %82, ptr @in1_cons_buff_1, align 32
  %83 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 1), align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 1), align 4
  %85 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 2), align 8
  %86 = add i32 %85, 1
  store i32 %86, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 2), align 8
  %87 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 3), align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 3), align 4
  %89 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 4), align 16
  %90 = add i32 %89, 1
  store i32 %90, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 4), align 16
  %91 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 5), align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 5), align 4
  %93 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 6), align 8
  %94 = add i32 %93, 1
  store i32 %94, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 6), align 8
  %95 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 7), align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  %97 = load i32, ptr @in1_cons_buff_0, align 32
  %98 = add i32 %97, 1
  store i32 %98, ptr @in1_cons_buff_0, align 32
  %99 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 1), align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 1), align 4
  %101 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 2), align 8
  %102 = add i32 %101, 1
  store i32 %102, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 2), align 8
  %103 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 3), align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 3), align 4
  %105 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 4), align 16
  %106 = add i32 %105, 1
  store i32 %106, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 4), align 16
  %107 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 5), align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 5), align 4
  %109 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 6), align 8
  %110 = add i32 %109, 1
  store i32 %110, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 6), align 8
  %111 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 7), align 4
  %112 = add i32 %111, 1
  store i32 %112, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_0, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  %113 = load i32, ptr @in1_cons_buff_1, align 32
  %114 = add i32 %113, 1
  store i32 %114, ptr @in1_cons_buff_1, align 32
  %115 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 1), align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 1), align 4
  %117 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 2), align 8
  %118 = add i32 %117, 1
  store i32 %118, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 2), align 8
  %119 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 3), align 4
  %120 = add i32 %119, 1
  store i32 %120, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 3), align 4
  %121 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 4), align 16
  %122 = add i32 %121, 1
  store i32 %122, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 4), align 16
  %123 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 5), align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 5), align 4
  %125 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 6), align 8
  %126 = add i32 %125, 1
  store i32 %126, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 6), align 8
  %127 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 7), align 4
  %128 = add i32 %127, 1
  store i32 %128, ptr getelementptr inbounds ([8 x i32], ptr @in1_cons_buff_1, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_0_2() local_unnamed_addr #0 {
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  %1 = load i32, ptr @in0_cons_buff_0, align 32
  %2 = add i32 %1, 1
  store i32 %2, ptr @in0_cons_buff_0, align 32
  %3 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 1), align 4
  %4 = add i32 %3, 1
  store i32 %4, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 1), align 4
  %5 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 2), align 8
  %6 = add i32 %5, 1
  store i32 %6, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 2), align 8
  %7 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 3), align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 3), align 4
  %9 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 4), align 16
  %10 = add i32 %9, 1
  store i32 %10, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 4), align 16
  %11 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 5), align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 5), align 4
  %13 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 6), align 8
  %14 = add i32 %13, 1
  store i32 %14, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 6), align 8
  %15 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 7), align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  %17 = load i32, ptr @in0_cons_buff_1, align 32
  %18 = add i32 %17, 1
  store i32 %18, ptr @in0_cons_buff_1, align 32
  %19 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 1), align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 1), align 4
  %21 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 2), align 8
  %22 = add i32 %21, 1
  store i32 %22, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 2), align 8
  %23 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 3), align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 3), align 4
  %25 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 4), align 16
  %26 = add i32 %25, 1
  store i32 %26, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 4), align 16
  %27 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 5), align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 5), align 4
  %29 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 6), align 8
  %30 = add i32 %29, 1
  store i32 %30, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 6), align 8
  %31 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 7), align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  %33 = load i32, ptr @in0_cons_buff_0, align 32
  %34 = add i32 %33, 1
  store i32 %34, ptr @in0_cons_buff_0, align 32
  %35 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 1), align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 1), align 4
  %37 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 2), align 8
  %38 = add i32 %37, 1
  store i32 %38, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 2), align 8
  %39 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 3), align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 3), align 4
  %41 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 4), align 16
  %42 = add i32 %41, 1
  store i32 %42, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 4), align 16
  %43 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 5), align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 5), align 4
  %45 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 6), align 8
  %46 = add i32 %45, 1
  store i32 %46, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 6), align 8
  %47 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 7), align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  %49 = load i32, ptr @in0_cons_buff_1, align 32
  %50 = add i32 %49, 1
  store i32 %50, ptr @in0_cons_buff_1, align 32
  %51 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 1), align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 1), align 4
  %53 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 2), align 8
  %54 = add i32 %53, 1
  store i32 %54, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 2), align 8
  %55 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 3), align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 3), align 4
  %57 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 4), align 16
  %58 = add i32 %57, 1
  store i32 %58, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 4), align 16
  %59 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 5), align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 5), align 4
  %61 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 6), align 8
  %62 = add i32 %61, 1
  store i32 %62, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 6), align 8
  %63 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 7), align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  %65 = load i32, ptr @in0_cons_buff_0, align 32
  %66 = add i32 %65, 1
  store i32 %66, ptr @in0_cons_buff_0, align 32
  %67 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 1), align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 1), align 4
  %69 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 2), align 8
  %70 = add i32 %69, 1
  store i32 %70, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 2), align 8
  %71 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 3), align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 3), align 4
  %73 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 4), align 16
  %74 = add i32 %73, 1
  store i32 %74, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 4), align 16
  %75 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 5), align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 5), align 4
  %77 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 6), align 8
  %78 = add i32 %77, 1
  store i32 %78, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 6), align 8
  %79 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 7), align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  %81 = load i32, ptr @in0_cons_buff_1, align 32
  %82 = add i32 %81, 1
  store i32 %82, ptr @in0_cons_buff_1, align 32
  %83 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 1), align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 1), align 4
  %85 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 2), align 8
  %86 = add i32 %85, 1
  store i32 %86, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 2), align 8
  %87 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 3), align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 3), align 4
  %89 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 4), align 16
  %90 = add i32 %89, 1
  store i32 %90, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 4), align 16
  %91 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 5), align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 5), align 4
  %93 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 6), align 8
  %94 = add i32 %93, 1
  store i32 %94, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 6), align 8
  %95 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 7), align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  %97 = load i32, ptr @in0_cons_buff_0, align 32
  %98 = add i32 %97, 1
  store i32 %98, ptr @in0_cons_buff_0, align 32
  %99 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 1), align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 1), align 4
  %101 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 2), align 8
  %102 = add i32 %101, 1
  store i32 %102, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 2), align 8
  %103 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 3), align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 3), align 4
  %105 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 4), align 16
  %106 = add i32 %105, 1
  store i32 %106, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 4), align 16
  %107 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 5), align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 5), align 4
  %109 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 6), align 8
  %110 = add i32 %109, 1
  store i32 %110, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 6), align 8
  %111 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 7), align 4
  %112 = add i32 %111, 1
  store i32 %112, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_0, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  %113 = load i32, ptr @in0_cons_buff_1, align 32
  %114 = add i32 %113, 1
  store i32 %114, ptr @in0_cons_buff_1, align 32
  %115 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 1), align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 1), align 4
  %117 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 2), align 8
  %118 = add i32 %117, 1
  store i32 %118, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 2), align 8
  %119 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 3), align 4
  %120 = add i32 %119, 1
  store i32 %120, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 3), align 4
  %121 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 4), align 16
  %122 = add i32 %121, 1
  store i32 %122, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 4), align 16
  %123 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 5), align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 5), align 4
  %125 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 6), align 8
  %126 = add i32 %125, 1
  store i32 %126, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 6), align 8
  %127 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 7), align 4
  %128 = add i32 %127, 1
  store i32 %128, ptr getelementptr inbounds ([8 x i32], ptr @in0_cons_buff_1, i20 0, i20 7), align 4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nounwind }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
