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

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_9, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %3 = add nuw nsw i64 %2, 20
  %4 = icmp ult i64 %2, 9223372036854775780
  br i1 %4, label %1, label %.preheader.preheader

.preheader.preheader:                             ; preds = %1
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
  tail call void @llvm.aie2.release(i32 34, i32 9)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -9)
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @ofc02toc01_buff_8, i64 32) ]
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
