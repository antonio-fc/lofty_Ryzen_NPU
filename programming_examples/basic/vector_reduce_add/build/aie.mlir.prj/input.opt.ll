; ModuleID = '/notebooks/mlir-aie/programming_examples/basic/vector_reduce_add/build/aie.mlir.prj/input.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

@in_cons_buff_1 = external global [1024 x i32]
@in_cons_buff_0 = external global [1024 x i32]
@out_buff_1 = external global [1 x i32]
@out_buff_0 = external global [1 x i32]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @reduce_add_vector(ptr, ptr, i32) local_unnamed_addr

define void @core_0_2() local_unnamed_addr {
  %1 = and i64 ptrtoint (ptr @out_buff_0 to i64), 28
  %2 = icmp eq i64 %1, 0
  %3 = and i64 ptrtoint (ptr @in_cons_buff_0 to i64), 28
  %4 = icmp eq i64 %3, 0
  %5 = and i64 ptrtoint (ptr @out_buff_1 to i64), 28
  %6 = icmp eq i64 %5, 0
  %7 = and i64 ptrtoint (ptr @in_cons_buff_1 to i64), 28
  %8 = icmp eq i64 %7, 0
  br label %9

9:                                                ; preds = %13, %0
  %10 = phi i64 [ 0, %0 ], [ %14, %13 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.assume(i1 %2)
  tail call void @llvm.assume(i1 %4)
  tail call void @reduce_add_vector(ptr nonnull @in_cons_buff_0, ptr nonnull @out_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.assume(i1 %6)
  tail call void @llvm.assume(i1 %8)
  tail call void @reduce_add_vector(ptr nonnull @in_cons_buff_1, ptr nonnull @out_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @reduce_add_vector(ptr nonnull @in_cons_buff_0, ptr nonnull @out_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @reduce_add_vector(ptr nonnull @in_cons_buff_1, ptr nonnull @out_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %11 = or disjoint i64 %10, 4
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @reduce_add_vector(ptr nonnull @in_cons_buff_0, ptr nonnull @out_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @reduce_add_vector(ptr nonnull @in_cons_buff_1, ptr nonnull @out_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %12 = icmp ult i64 %11, 4294967292
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @reduce_add_vector(ptr nonnull @in_cons_buff_0, ptr nonnull @out_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @reduce_add_vector(ptr nonnull @in_cons_buff_1, ptr nonnull @out_buff_1, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %14 = add nuw nsw i64 %10, 8
  br label %9

15:                                               ; preds = %9
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @reduce_add_vector(ptr nonnull @in_cons_buff_0, ptr nonnull @out_buff_0, i32 1024)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nounwind }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
