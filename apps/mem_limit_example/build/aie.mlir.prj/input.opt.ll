; ModuleID = '/notebooks/my_mlir-aie/apps/mem_limit_example/build/aie.mlir.prj/input.llpeanohack.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

; Function Attrs: nounwind
define void @core_3_2() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %3 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %3, 9223372036854775806
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_3_4() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  %3 = add nuw nsw i64 %2, 4
  %.not = icmp eq i64 %3, 9223372036854775804
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  ret void
}

; Function Attrs: nounwind
define void @core_3_5() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  %3 = add nuw nsw i64 %2, 4
  %.not = icmp eq i64 %3, 9223372036854775804
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  ret void
}

; Function Attrs: nounwind
define void @core_2_2() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %3 = add nuw nsw i64 %2, 4
  %.not = icmp eq i64 %3, 9223372036854775804
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_1_2() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %3 = add nuw nsw i64 %2, 4
  %.not = icmp eq i64 %3, 9223372036854775804
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_0_2() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %3 = add nuw nsw i64 %2, 4
  %.not = icmp eq i64 %3, 9223372036854775804
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -4)
  tail call void @llvm.aie2.release(i32 48, i32 4)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

attributes #0 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
