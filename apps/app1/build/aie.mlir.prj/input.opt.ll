; ModuleID = '/notebooks/my_mlir-aie/apps/app1/build/aie.mlir.prj/input.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

@in_cons_buff_1 = external global [1024 x float]
@in_cons_buff_0 = external global [1024 x float]
@in_factor_cons_buff_1 = external global [1 x float]
@in_factor_cons_buff_0 = external global [1 x float]
@out_buff_1 = external global [1024 x float]
@out_buff_0 = external global [1024 x float]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @vector_scalar_mul_aie_scalar(ptr, ptr, ptr, i32) local_unnamed_addr

define void @core_0_2() local_unnamed_addr {
  %1 = and i64 ptrtoint (ptr @out_buff_0 to i64), 28
  %2 = icmp eq i64 %1, 0
  %3 = and i64 ptrtoint (ptr @in_factor_cons_buff_0 to i64), 28
  %4 = icmp eq i64 %3, 0
  %5 = and i64 ptrtoint (ptr @in_cons_buff_0 to i64), 28
  %6 = icmp eq i64 %5, 0
  %7 = and i64 ptrtoint (ptr @out_buff_1 to i64), 28
  %8 = icmp eq i64 %7, 0
  %9 = and i64 ptrtoint (ptr @in_cons_buff_1 to i64), 28
  %10 = icmp eq i64 %9, 0
  %11 = and i64 ptrtoint (ptr @in_factor_cons_buff_1 to i64), 28
  %12 = icmp eq i64 %11, 0
  br label %13

13:                                               ; preds = %0, %13
  %14 = phi i64 [ 0, %0 ], [ %15, %13 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.assume(i1 %2)
  tail call void @llvm.assume(i1 %4)
  tail call void @llvm.assume(i1 %6)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @in_factor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.assume(i1 %8)
  tail call void @llvm.assume(i1 %10)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_1, ptr nonnull @out_buff_1, ptr nonnull @in_factor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @in_factor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_1, ptr nonnull @out_buff_1, ptr nonnull @in_factor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.assume(i1 %12)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @in_factor_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_1, ptr nonnull @out_buff_1, ptr nonnull @in_factor_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @in_factor_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_1, ptr nonnull @out_buff_1, ptr nonnull @in_factor_cons_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %15 = add nuw nsw i64 %14, 2
  %.not = icmp eq i64 %15, 9223372036854775806
  br i1 %.not, label %16, label %13

16:                                               ; preds = %13
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @in_factor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_1, ptr nonnull @out_buff_1, ptr nonnull @in_factor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_0, ptr nonnull @out_buff_0, ptr nonnull @in_factor_cons_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @in_cons_buff_1, ptr nonnull @out_buff_1, ptr nonnull @in_factor_cons_buff_0, i32 1024)
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
