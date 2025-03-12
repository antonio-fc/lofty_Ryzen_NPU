; ModuleID = '/notebooks/my_mlir-aie/apps/loafty0_float/build/aie.mlir.prj/input.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

@in0_cons_buff_1 = external global [1 x float]
@in0_cons_buff_0 = external global [1 x float]
@visR_cons_buff_1 = external global [1024 x float]
@visR_cons_buff_0 = external global [1024 x float]
@visC_cons_buff_1 = external global [1024 x float]
@visC_cons_buff_0 = external global [1024 x float]
@u_cons_buff_1 = external global [1024 x float]
@u_cons_buff_0 = external global [1024 x float]
@v_cons_buff_1 = external global [1024 x float]
@v_cons_buff_0 = external global [1024 x float]
@w_cons_buff_1 = external global [1024 x float]
@w_cons_buff_0 = external global [1024 x float]
@l_cons_buff_1 = external global [1 x float]
@l_cons_buff_0 = external global [1 x float]
@m_cons_buff_1 = external global [1 x float]
@m_cons_buff_0 = external global [1 x float]
@n_cons_buff_1 = external global [1 x float]
@n_cons_buff_0 = external global [1 x float]
@addA0_buff_1 = external global [1024 x float]
@addA0_buff_0 = external global [1024 x float]
@addA0_cons_buff_1 = external global [1024 x float]
@addA0_cons_buff_0 = external global [1024 x float]
@addA1_buff_1 = external global [1024 x float]
@addA1_buff_0 = external global [1024 x float]
@addB0_buff_1 = external global [1024 x float]
@addB0_buff_0 = external global [1024 x float]
@addB0_cons_buff_1 = external global [1024 x float]
@addB0_cons_buff_0 = external global [1024 x float]
@addB1_buff_1 = external global [1024 x float]
@addB1_buff_0 = external global [1024 x float]
@of_scaleC_buff_1 = external global [1024 x float]
@of_scaleC_buff_0 = external global [1024 x float]
@of_sincosD_buff_1 = external global [1024 x float]
@of_sincosD_buff_0 = external global [1024 x float]
@of_sincosD_1_cons_buff_1 = external global [1024 x float]
@of_sincosD_1_cons_buff_0 = external global [1024 x float]
@of_sincosD_0_cons_buff_1 = external global [1024 x float]
@of_sincosD_0_cons_buff_0 = external global [1024 x float]
@of_multEr_buff_1 = external global [1024 x float]
@of_multEr_buff_0 = external global [1024 x float]
@of_multEc_buff_1 = external global [1024 x float]
@of_multEc_buff_0 = external global [1024 x float]
@of_subFr_buff_1 = external global [1024 x float]
@of_subFr_buff_0 = external global [1024 x float]
@of_subFc_buff_1 = external global [1024 x float]
@of_subFc_buff_0 = external global [1024 x float]
@of_subFc_cons_buff_1 = external global [1024 x float]
@of_subFc_cons_buff_0 = external global [1024 x float]
@of_mean_buff_1 = external global [1024 x float]
@of_mean_buff_0 = external global [1024 x float]
@out_buff_1 = external global [1 x float]
@out_buff_0 = external global [1 x float]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @vector_scale(ptr, ptr, ptr, i32) local_unnamed_addr

declare void @vector_add(ptr, ptr, ptr, i32) local_unnamed_addr

declare void @vector_mult(ptr, ptr, ptr, i32) local_unnamed_addr

declare void @mean(ptr, ptr, i32, i32) local_unnamed_addr

declare void @sin_float_1024(ptr, ptr, i32) local_unnamed_addr

declare void @cos_float_1024(ptr, ptr, i32) local_unnamed_addr

declare void @vector_sub(ptr, ptr, ptr, i32) local_unnamed_addr

define void @core_3_2() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_0, ptr nonnull @out_buff_0, i32 0, i32 0)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_0, ptr nonnull @out_buff_0, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_1, ptr nonnull @out_buff_0, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_0, ptr nonnull @out_buff_0, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_1, ptr nonnull @out_buff_0, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_0, ptr nonnull @out_buff_0, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_1, ptr nonnull @out_buff_0, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_0, ptr nonnull @out_buff_0, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_1, ptr nonnull @out_buff_0, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_0, ptr nonnull @out_buff_0, i32 1024, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_0, ptr nonnull @out_buff_0, i32 9216, i32 2)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_1, ptr nonnull @out_buff_1, i32 0, i32 0)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_1, ptr nonnull @out_buff_1, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_0, ptr nonnull @out_buff_1, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_1, ptr nonnull @out_buff_1, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_0, ptr nonnull @out_buff_1, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_1, ptr nonnull @out_buff_1, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_0, ptr nonnull @out_buff_1, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_1, ptr nonnull @out_buff_1, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_0, ptr nonnull @out_buff_1, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_1, ptr nonnull @out_buff_1, i32 1024, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_1, ptr nonnull @out_buff_1, i32 9216, i32 2)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %3 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %3, 9223372036854775806
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_0, ptr nonnull @out_buff_0, i32 0, i32 0)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_0, ptr nonnull @out_buff_0, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_1, ptr nonnull @out_buff_0, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_0, ptr nonnull @out_buff_0, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_1, ptr nonnull @out_buff_0, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_0, ptr nonnull @out_buff_0, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_1, ptr nonnull @out_buff_0, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_0, ptr nonnull @out_buff_0, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_1, ptr nonnull @out_buff_0, i32 1024, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_0, ptr nonnull @out_buff_0, i32 1024, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_mean_buff_0, ptr nonnull @out_buff_0, i32 9216, i32 2)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  ret void
}

define void @core_3_3() local_unnamed_addr {
  br label %.preheader3

.preheader3:                                      ; preds = %0, %.preheader3
  %1 = phi i64 [ 0, %0 ], [ %2, %.preheader3 ]
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_0, ptr nonnull @of_subFc_cons_buff_0, ptr nonnull @of_mean_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_1, ptr nonnull @of_subFc_cons_buff_1, ptr nonnull @of_mean_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_0, ptr nonnull @of_subFc_cons_buff_0, ptr nonnull @of_mean_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_1, ptr nonnull @of_subFc_cons_buff_1, ptr nonnull @of_mean_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_0, ptr nonnull @of_subFc_cons_buff_0, ptr nonnull @of_mean_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_1, ptr nonnull @of_subFc_cons_buff_1, ptr nonnull @of_mean_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_0, ptr nonnull @of_subFc_cons_buff_0, ptr nonnull @of_mean_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_1, ptr nonnull @of_subFc_cons_buff_1, ptr nonnull @of_mean_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_0, ptr nonnull @of_subFc_cons_buff_0, ptr nonnull @of_mean_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_1, ptr nonnull @of_subFc_cons_buff_1, ptr nonnull @of_mean_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_0, ptr nonnull @of_subFc_cons_buff_0, ptr nonnull @of_mean_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_1, ptr nonnull @of_subFc_cons_buff_1, ptr nonnull @of_mean_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_0, ptr nonnull @of_subFc_cons_buff_0, ptr nonnull @of_mean_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_1, ptr nonnull @of_subFc_cons_buff_1, ptr nonnull @of_mean_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_0, ptr nonnull @of_subFc_cons_buff_0, ptr nonnull @of_mean_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_1, ptr nonnull @of_subFc_cons_buff_1, ptr nonnull @of_mean_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_0, ptr nonnull @of_subFc_cons_buff_0, ptr nonnull @of_mean_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_1, ptr nonnull @of_subFc_cons_buff_1, ptr nonnull @of_mean_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %2 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %2, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader3

.preheader.preheader:                             ; preds = %.preheader3
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_0, ptr nonnull @of_subFc_cons_buff_0, ptr nonnull @of_mean_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_1, ptr nonnull @of_subFc_cons_buff_1, ptr nonnull @of_mean_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_0, ptr nonnull @of_subFc_cons_buff_0, ptr nonnull @of_mean_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_1, ptr nonnull @of_subFc_cons_buff_1, ptr nonnull @of_mean_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_0, ptr nonnull @of_subFc_cons_buff_0, ptr nonnull @of_mean_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_1, ptr nonnull @of_subFc_cons_buff_1, ptr nonnull @of_mean_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_0, ptr nonnull @of_subFc_cons_buff_0, ptr nonnull @of_mean_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_1, ptr nonnull @of_subFc_cons_buff_1, ptr nonnull @of_mean_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  tail call void @vector_sub(ptr nonnull @of_subFr_buff_0, ptr nonnull @of_subFc_cons_buff_0, ptr nonnull @of_mean_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_3_4() local_unnamed_addr {
  br label %.preheader3

.preheader3:                                      ; preds = %0, %.preheader3
  %1 = phi i64 [ 0, %0 ], [ %2, %.preheader3 ]
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_0, ptr nonnull @visR_cons_buff_0, ptr nonnull @of_subFr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_1, ptr nonnull @visR_cons_buff_1, ptr nonnull @of_subFr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_0, ptr nonnull @visR_cons_buff_0, ptr nonnull @of_subFr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_1, ptr nonnull @visR_cons_buff_1, ptr nonnull @of_subFr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_0, ptr nonnull @visR_cons_buff_0, ptr nonnull @of_subFr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_1, ptr nonnull @visR_cons_buff_1, ptr nonnull @of_subFr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_0, ptr nonnull @visR_cons_buff_0, ptr nonnull @of_subFr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_1, ptr nonnull @visR_cons_buff_1, ptr nonnull @of_subFr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_0, ptr nonnull @visR_cons_buff_0, ptr nonnull @of_subFr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_1, ptr nonnull @visR_cons_buff_1, ptr nonnull @of_subFr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_0, ptr nonnull @visR_cons_buff_0, ptr nonnull @of_subFr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_1, ptr nonnull @visR_cons_buff_1, ptr nonnull @of_subFr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_0, ptr nonnull @visR_cons_buff_0, ptr nonnull @of_subFr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_1, ptr nonnull @visR_cons_buff_1, ptr nonnull @of_subFr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_0, ptr nonnull @visR_cons_buff_0, ptr nonnull @of_subFr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_1, ptr nonnull @visR_cons_buff_1, ptr nonnull @of_subFr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_0, ptr nonnull @visR_cons_buff_0, ptr nonnull @of_subFr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_1, ptr nonnull @visR_cons_buff_1, ptr nonnull @of_subFr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %2 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %2, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader3

.preheader.preheader:                             ; preds = %.preheader3
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_0, ptr nonnull @visR_cons_buff_0, ptr nonnull @of_subFr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_1, ptr nonnull @visR_cons_buff_1, ptr nonnull @of_subFr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_0, ptr nonnull @visR_cons_buff_0, ptr nonnull @of_subFr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_1, ptr nonnull @visR_cons_buff_1, ptr nonnull @of_subFr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_0, ptr nonnull @visR_cons_buff_0, ptr nonnull @of_subFr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_1, ptr nonnull @visR_cons_buff_1, ptr nonnull @of_subFr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_0, ptr nonnull @visR_cons_buff_0, ptr nonnull @of_subFr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_1, ptr nonnull @visR_cons_buff_1, ptr nonnull @of_subFr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visR_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEr_buff_0, ptr nonnull @visR_cons_buff_0, ptr nonnull @of_subFr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_3_5() local_unnamed_addr {
  br label %.preheader3

.preheader3:                                      ; preds = %0, %.preheader3
  %1 = phi i64 [ 0, %0 ], [ %2, %.preheader3 ]
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_0, ptr nonnull @visC_cons_buff_0, ptr nonnull @of_subFc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_1, ptr nonnull @visC_cons_buff_1, ptr nonnull @of_subFc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_0, ptr nonnull @visC_cons_buff_0, ptr nonnull @of_subFc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_1, ptr nonnull @visC_cons_buff_1, ptr nonnull @of_subFc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_0, ptr nonnull @visC_cons_buff_0, ptr nonnull @of_subFc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_1, ptr nonnull @visC_cons_buff_1, ptr nonnull @of_subFc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_0, ptr nonnull @visC_cons_buff_0, ptr nonnull @of_subFc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_1, ptr nonnull @visC_cons_buff_1, ptr nonnull @of_subFc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_0, ptr nonnull @visC_cons_buff_0, ptr nonnull @of_subFc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_1, ptr nonnull @visC_cons_buff_1, ptr nonnull @of_subFc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_0, ptr nonnull @visC_cons_buff_0, ptr nonnull @of_subFc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_1, ptr nonnull @visC_cons_buff_1, ptr nonnull @of_subFc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_0, ptr nonnull @visC_cons_buff_0, ptr nonnull @of_subFc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_1, ptr nonnull @visC_cons_buff_1, ptr nonnull @of_subFc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_0, ptr nonnull @visC_cons_buff_0, ptr nonnull @of_subFc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_1, ptr nonnull @visC_cons_buff_1, ptr nonnull @of_subFc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_0, ptr nonnull @visC_cons_buff_0, ptr nonnull @of_subFc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_1, ptr nonnull @visC_cons_buff_1, ptr nonnull @of_subFc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %2 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %2, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader3

.preheader.preheader:                             ; preds = %.preheader3
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_0, ptr nonnull @visC_cons_buff_0, ptr nonnull @of_subFc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_1, ptr nonnull @visC_cons_buff_1, ptr nonnull @of_subFc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_0, ptr nonnull @visC_cons_buff_0, ptr nonnull @of_subFc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_1, ptr nonnull @visC_cons_buff_1, ptr nonnull @of_subFc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_0, ptr nonnull @visC_cons_buff_0, ptr nonnull @of_subFc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_1, ptr nonnull @visC_cons_buff_1, ptr nonnull @of_subFc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_0, ptr nonnull @visC_cons_buff_0, ptr nonnull @of_subFc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_1, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_1, ptr nonnull @visC_cons_buff_1, ptr nonnull @of_subFc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_subFc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @visC_cons_buff_0, i64 32) ]
  tail call void @vector_mult(ptr nonnull @of_multEc_buff_0, ptr nonnull @visC_cons_buff_0, ptr nonnull @of_subFc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_2_4() local_unnamed_addr {
  br label %.preheader3

.preheader3:                                      ; preds = %0, %.preheader3
  %1 = phi i64 [ 0, %0 ], [ %2, %.preheader3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_0, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_0, ptr nonnull @of_multEr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_1, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_1, ptr nonnull @of_multEr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_0, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_0, ptr nonnull @of_multEr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_1, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_1, ptr nonnull @of_multEr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_0, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_0, ptr nonnull @of_multEr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_1, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_1, ptr nonnull @of_multEr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_0, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_0, ptr nonnull @of_multEr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_1, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_1, ptr nonnull @of_multEr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_0, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_0, ptr nonnull @of_multEr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_1, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_1, ptr nonnull @of_multEr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_0, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_0, ptr nonnull @of_multEr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_1, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_1, ptr nonnull @of_multEr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_0, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_0, ptr nonnull @of_multEr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_1, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_1, ptr nonnull @of_multEr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_0, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_0, ptr nonnull @of_multEr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_1, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_1, ptr nonnull @of_multEr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_0, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_0, ptr nonnull @of_multEr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_1, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_1, ptr nonnull @of_multEr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %2 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %2, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader3

.preheader.preheader:                             ; preds = %.preheader3
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_0, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_0, ptr nonnull @of_multEr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_1, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_1, ptr nonnull @of_multEr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_0, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_0, ptr nonnull @of_multEr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_1, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_1, ptr nonnull @of_multEr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_0, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_0, ptr nonnull @of_multEr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_1, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_1, ptr nonnull @of_multEr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_0, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_0, ptr nonnull @of_multEr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_1, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_1, ptr nonnull @of_multEr_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEr_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_0_cons_buff_0, i64 32) ]
  tail call void @cos_float_1024(ptr nonnull @of_sincosD_0_cons_buff_0, ptr nonnull @of_multEr_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_2_5() local_unnamed_addr {
  br label %.preheader3

.preheader3:                                      ; preds = %0, %.preheader3
  %1 = phi i64 [ 0, %0 ], [ %2, %.preheader3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_0, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_0, ptr nonnull @of_multEc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_1, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_1, ptr nonnull @of_multEc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_0, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_0, ptr nonnull @of_multEc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_1, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_1, ptr nonnull @of_multEc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_0, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_0, ptr nonnull @of_multEc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_1, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_1, ptr nonnull @of_multEc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_0, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_0, ptr nonnull @of_multEc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_1, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_1, ptr nonnull @of_multEc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_0, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_0, ptr nonnull @of_multEc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_1, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_1, ptr nonnull @of_multEc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_0, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_0, ptr nonnull @of_multEc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_1, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_1, ptr nonnull @of_multEc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_0, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_0, ptr nonnull @of_multEc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_1, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_1, ptr nonnull @of_multEc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_0, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_0, ptr nonnull @of_multEc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_1, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_1, ptr nonnull @of_multEc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_0, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_0, ptr nonnull @of_multEc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_1, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_1, ptr nonnull @of_multEc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %2 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %2, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader3

.preheader.preheader:                             ; preds = %.preheader3
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_0, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_0, ptr nonnull @of_multEc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_1, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_1, ptr nonnull @of_multEc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_0, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_0, ptr nonnull @of_multEc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_1, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_1, ptr nonnull @of_multEc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_0, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_0, ptr nonnull @of_multEc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_1, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_1, ptr nonnull @of_multEc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_0, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_0, ptr nonnull @of_multEc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_1, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_1, ptr nonnull @of_multEc_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multEc_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_1_cons_buff_0, i64 32) ]
  tail call void @sin_float_1024(ptr nonnull @of_sincosD_1_cons_buff_0, ptr nonnull @of_multEc_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_0_3() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_sincosD_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_sincosD_buff_1, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_sincosD_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_sincosD_buff_1, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_sincosD_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_sincosD_buff_1, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_sincosD_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_sincosD_buff_1, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_sincosD_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_sincosD_buff_1, ptr nonnull @in0_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_sincosD_buff_0, ptr nonnull @in0_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_sincosD_buff_1, ptr nonnull @in0_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_sincosD_buff_0, ptr nonnull @in0_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_sincosD_buff_1, ptr nonnull @in0_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_sincosD_buff_0, ptr nonnull @in0_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_sincosD_buff_1, ptr nonnull @in0_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_sincosD_buff_0, ptr nonnull @in0_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_sincosD_buff_1, ptr nonnull @in0_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %3 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %3, 9223372036854775806
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_sincosD_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_sincosD_buff_1, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_sincosD_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_sincosD_buff_1, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_sincosD_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_sincosD_buff_1, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_sincosD_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_sincosD_buff_1, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sincosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_sincosD_buff_0, ptr nonnull @in0_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_1_3() local_unnamed_addr {
  br label %.preheader3

.preheader3:                                      ; preds = %0, %.preheader3
  %1 = phi i64 [ 0, %0 ], [ %2, %.preheader3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %2 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %2, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader3

.preheader.preheader:                             ; preds = %.preheader3
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addB0_cons_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_2_3() local_unnamed_addr {
  br label %.preheader3

.preheader3:                                      ; preds = %0, %.preheader3
  %1 = phi i64 [ 0, %0 ], [ %2, %.preheader3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @addB1_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @addB1_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @addB1_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @addB1_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @addB1_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @addB1_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @addB1_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @addB1_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @addB1_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @addB1_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @addB1_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @addB1_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @addB1_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @addB1_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @addB1_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @addB1_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @addB1_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @addB1_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  %2 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %2, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader3

.preheader.preheader:                             ; preds = %.preheader3
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @addB1_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @addB1_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @addB1_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @addB1_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @addB1_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @addB1_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @addB1_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_1, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @addB1_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_cons_buff_0, i64 32) ]
  tail call void @vector_add(ptr nonnull @addA0_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @addB1_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  ret void
}

define void @core_2_2() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %3 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %3, 9223372036854775806
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_1_2() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %3 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %3, 9223372036854775806
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_0_2() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %3 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %3, 9223372036854775806
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scale(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nounwind }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
