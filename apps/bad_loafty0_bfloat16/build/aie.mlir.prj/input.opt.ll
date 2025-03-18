; ModuleID = '/notebooks/my_mlir-aie/apps/bad_loafty0_bfloat16/build/aie.mlir.prj/input.llpeanohack.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

; Function Attrs: nounwind
define void @core_2_2() local_unnamed_addr #0 {
  br label %.preheader

.preheader:                                       ; preds = %13, %0
  %1 = phi i64 [ 0, %0 ], [ %14, %13 ]
  br label %2

2:                                                ; preds = %2, %.preheader
  %3 = phi i64 [ 0, %.preheader ], [ %5, %2 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %4 = or disjoint i64 %3, 6
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %5 = add nuw nsw i64 %3, 8
  %6 = icmp ult i64 %4, 8190
  br i1 %6, label %2, label %.preheader.1

.preheader.1:                                     ; preds = %2
  %7 = or disjoint i64 %1, 1
  br label %8

8:                                                ; preds = %8, %.preheader.1
  %9 = phi i64 [ 0, %.preheader.1 ], [ %11, %8 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %10 = or disjoint i64 %9, 6
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %11 = add nuw nsw i64 %9, 8
  %12 = icmp ult i64 %10, 8190
  br i1 %12, label %8, label %13

13:                                               ; preds = %8
  %14 = add nuw nsw i64 %1, 2
  %15 = icmp ult i64 %7, 13
  br i1 %15, label %.preheader, label %16

16:                                               ; preds = %13
  ret void
}

; Function Attrs: nounwind
define void @core_1_2() local_unnamed_addr #0 {
  br label %.preheader

.preheader:                                       ; preds = %13, %0
  %1 = phi i64 [ 0, %0 ], [ %14, %13 ]
  br label %2

2:                                                ; preds = %2, %.preheader
  %3 = phi i64 [ 0, %.preheader ], [ %5, %2 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %4 = or disjoint i64 %3, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %5 = add nuw nsw i64 %3, 8
  %6 = icmp ult i64 %4, 16382
  br i1 %6, label %2, label %.preheader.1

.preheader.1:                                     ; preds = %2
  %7 = or disjoint i64 %1, 1
  br label %8

8:                                                ; preds = %8, %.preheader.1
  %9 = phi i64 [ 0, %.preheader.1 ], [ %11, %8 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %10 = or disjoint i64 %9, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %11 = add nuw nsw i64 %9, 8
  %12 = icmp ult i64 %10, 16382
  br i1 %12, label %8, label %13

13:                                               ; preds = %8
  %14 = add nuw nsw i64 %1, 2
  %15 = icmp ult i64 %7, 13
  br i1 %15, label %.preheader, label %16

16:                                               ; preds = %13
  ret void
}

; Function Attrs: nounwind
define void @core_3_2() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %14
  %2 = phi i64 [ 0, %0 ], [ %15, %14 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %6, %3 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %5 = or disjoint i64 %4, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = add nuw nsw i64 %4, 8
  %7 = icmp ult i64 %5, 16382
  br i1 %7, label %3, label %8

8:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %9

9:                                                ; preds = %9, %8
  %10 = phi i64 [ 0, %8 ], [ %12, %9 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %11 = or disjoint i64 %10, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add nuw nsw i64 %10, 8
  %13 = icmp ult i64 %11, 16382
  br i1 %13, label %9, label %14

14:                                               ; preds = %9
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %15 = add nuw nsw i64 %2, 2
  %16 = icmp ult i64 %2, 12
  br i1 %16, label %1, label %17

17:                                               ; preds = %14
  ret void
}

; Function Attrs: nounwind
define void @core_2_3() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %14
  %2 = phi i64 [ 0, %0 ], [ %15, %14 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %6, %3 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %5 = or disjoint i64 %4, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = add nuw nsw i64 %4, 8
  %7 = icmp ult i64 %5, 16382
  br i1 %7, label %3, label %8

8:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %9

9:                                                ; preds = %9, %8
  %10 = phi i64 [ 0, %8 ], [ %12, %9 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %11 = or disjoint i64 %10, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add nuw nsw i64 %10, 8
  %13 = icmp ult i64 %11, 16382
  br i1 %13, label %9, label %14

14:                                               ; preds = %9
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %15 = add nuw nsw i64 %2, 2
  %16 = icmp ult i64 %2, 12
  br i1 %16, label %1, label %17

17:                                               ; preds = %14
  ret void
}

; Function Attrs: nounwind
define void @core_2_4() local_unnamed_addr #0 {
  br label %.preheader

.preheader:                                       ; preds = %13, %0
  %1 = phi i64 [ 0, %0 ], [ %14, %13 ]
  br label %2

2:                                                ; preds = %2, %.preheader
  %3 = phi i64 [ 0, %.preheader ], [ %5, %2 ]
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %4 = or disjoint i64 %3, 6
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %5 = add nuw nsw i64 %3, 8
  %6 = icmp ult i64 %4, 16382
  br i1 %6, label %2, label %.preheader.1

.preheader.1:                                     ; preds = %2
  %7 = or disjoint i64 %1, 1
  br label %8

8:                                                ; preds = %8, %.preheader.1
  %9 = phi i64 [ 0, %.preheader.1 ], [ %11, %8 ]
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %10 = or disjoint i64 %9, 6
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %11 = add nuw nsw i64 %9, 8
  %12 = icmp ult i64 %10, 16382
  br i1 %12, label %8, label %13

13:                                               ; preds = %8
  %14 = add nuw nsw i64 %1, 2
  %15 = icmp ult i64 %7, 13
  br i1 %15, label %.preheader, label %16

16:                                               ; preds = %13
  ret void
}

; Function Attrs: nounwind
define void @core_2_5() local_unnamed_addr #0 {
.preheader:
  br label %0

0:                                                ; preds = %0, %.preheader
  %1 = phi i64 [ 0, %.preheader ], [ %3, %0 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %2 = or disjoint i64 %1, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %3 = add nuw nsw i64 %1, 8
  %4 = icmp ult i64 %2, 16382
  br i1 %4, label %0, label %.preheader.1

.preheader.1:                                     ; preds = %0, %.preheader.1
  %5 = phi i64 [ %7, %.preheader.1 ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 16382
  br i1 %8, label %.preheader.1, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1, %.preheader.2
  %9 = phi i64 [ %11, %.preheader.2 ], [ 0, %.preheader.1 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %10 = or disjoint i64 %9, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %11 = add nuw nsw i64 %9, 8
  %12 = icmp ult i64 %10, 16382
  br i1 %12, label %.preheader.2, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2, %.preheader.3
  %13 = phi i64 [ %15, %.preheader.3 ], [ 0, %.preheader.2 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %14 = or disjoint i64 %13, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %15 = add nuw nsw i64 %13, 8
  %16 = icmp ult i64 %14, 16382
  br i1 %16, label %.preheader.3, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3, %.preheader.4
  %17 = phi i64 [ %19, %.preheader.4 ], [ 0, %.preheader.3 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %18 = or disjoint i64 %17, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %19 = add nuw nsw i64 %17, 8
  %20 = icmp ult i64 %18, 16382
  br i1 %20, label %.preheader.4, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4, %.preheader.5
  %21 = phi i64 [ %23, %.preheader.5 ], [ 0, %.preheader.4 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %22 = or disjoint i64 %21, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %23 = add nuw nsw i64 %21, 8
  %24 = icmp ult i64 %22, 16382
  br i1 %24, label %.preheader.5, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5, %.preheader.6
  %25 = phi i64 [ %27, %.preheader.6 ], [ 0, %.preheader.5 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %26 = or disjoint i64 %25, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %27 = add nuw nsw i64 %25, 8
  %28 = icmp ult i64 %26, 16382
  br i1 %28, label %.preheader.6, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6, %.preheader.7
  %29 = phi i64 [ %31, %.preheader.7 ], [ 0, %.preheader.6 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %30 = or disjoint i64 %29, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %31 = add nuw nsw i64 %29, 8
  %32 = icmp ult i64 %30, 16382
  br i1 %32, label %.preheader.7, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7, %.preheader.8
  %33 = phi i64 [ %35, %.preheader.8 ], [ 0, %.preheader.7 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %34 = or disjoint i64 %33, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %35 = add nuw nsw i64 %33, 8
  %36 = icmp ult i64 %34, 16382
  br i1 %36, label %.preheader.8, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8, %.preheader.9
  %37 = phi i64 [ %39, %.preheader.9 ], [ 0, %.preheader.8 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %38 = or disjoint i64 %37, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %39 = add nuw nsw i64 %37, 8
  %40 = icmp ult i64 %38, 16382
  br i1 %40, label %.preheader.9, label %.preheader.10

.preheader.10:                                    ; preds = %.preheader.9, %.preheader.10
  %41 = phi i64 [ %43, %.preheader.10 ], [ 0, %.preheader.9 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %42 = or disjoint i64 %41, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %43 = add nuw nsw i64 %41, 8
  %44 = icmp ult i64 %42, 16382
  br i1 %44, label %.preheader.10, label %.preheader.11

.preheader.11:                                    ; preds = %.preheader.10, %.preheader.11
  %45 = phi i64 [ %47, %.preheader.11 ], [ 0, %.preheader.10 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %46 = or disjoint i64 %45, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %47 = add nuw nsw i64 %45, 8
  %48 = icmp ult i64 %46, 16382
  br i1 %48, label %.preheader.11, label %.preheader.12

.preheader.12:                                    ; preds = %.preheader.11, %.preheader.12
  %49 = phi i64 [ %51, %.preheader.12 ], [ 0, %.preheader.11 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %50 = or disjoint i64 %49, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %51 = add nuw nsw i64 %49, 8
  %52 = icmp ult i64 %50, 16382
  br i1 %52, label %.preheader.12, label %.preheader.13

.preheader.13:                                    ; preds = %.preheader.12, %.preheader.13
  %53 = phi i64 [ %55, %.preheader.13 ], [ 0, %.preheader.12 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %54 = or disjoint i64 %53, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %55 = add nuw nsw i64 %53, 8
  %56 = icmp ult i64 %54, 16382
  br i1 %56, label %.preheader.13, label %57

57:                                               ; preds = %.preheader.13
  ret void
}

; Function Attrs: nounwind
define void @core_3_3() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %14
  %2 = phi i64 [ 0, %0 ], [ %15, %14 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %6, %3 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %5 = or disjoint i64 %4, 6
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %6 = add nuw nsw i64 %4, 8
  %7 = icmp ult i64 %5, 8190
  br i1 %7, label %3, label %8

8:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %9

9:                                                ; preds = %9, %8
  %10 = phi i64 [ 0, %8 ], [ %12, %9 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %11 = or disjoint i64 %10, 6
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %12 = add nuw nsw i64 %10, 8
  %13 = icmp ult i64 %11, 8190
  br i1 %13, label %9, label %14

14:                                               ; preds = %9
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %15 = add nuw nsw i64 %2, 2
  %16 = icmp ult i64 %2, 12
  br i1 %16, label %1, label %17

17:                                               ; preds = %14
  ret void
}

; Function Attrs: nounwind
define void @core_3_4() local_unnamed_addr #0 {
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3, %0
  %1 = phi i64 [ 0, %0 ], [ %3, %.preheader3 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %2 = or disjoint i64 %1, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %3 = add nuw nsw i64 %1, 4
  %4 = icmp ult i64 %2, 8191
  br i1 %4, label %.preheader3, label %5

5:                                                ; preds = %.preheader3
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %5
  %6 = phi i64 [ 0, %5 ], [ %8, %.preheader ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %7 = or disjoint i64 %6, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %8 = add nuw nsw i64 %6, 4
  %9 = icmp ult i64 %7, 8191
  br i1 %9, label %.preheader, label %10

10:                                               ; preds = %.preheader
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.1

.preheader3.1:                                    ; preds = %.preheader3.1, %10
  %11 = phi i64 [ 0, %10 ], [ %13, %.preheader3.1 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %12 = or disjoint i64 %11, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %13 = add nuw nsw i64 %11, 4
  %14 = icmp ult i64 %12, 8191
  br i1 %14, label %.preheader3.1, label %15

15:                                               ; preds = %.preheader3.1
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1, %15
  %16 = phi i64 [ 0, %15 ], [ %18, %.preheader.1 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %17 = or disjoint i64 %16, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %18 = add nuw nsw i64 %16, 4
  %19 = icmp ult i64 %17, 8191
  br i1 %19, label %.preheader.1, label %20

20:                                               ; preds = %.preheader.1
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.2

.preheader3.2:                                    ; preds = %.preheader3.2, %20
  %21 = phi i64 [ 0, %20 ], [ %23, %.preheader3.2 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %22 = or disjoint i64 %21, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %23 = add nuw nsw i64 %21, 4
  %24 = icmp ult i64 %22, 8191
  br i1 %24, label %.preheader3.2, label %25

25:                                               ; preds = %.preheader3.2
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2, %25
  %26 = phi i64 [ 0, %25 ], [ %28, %.preheader.2 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %27 = or disjoint i64 %26, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %28 = add nuw nsw i64 %26, 4
  %29 = icmp ult i64 %27, 8191
  br i1 %29, label %.preheader.2, label %30

30:                                               ; preds = %.preheader.2
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.3

.preheader3.3:                                    ; preds = %.preheader3.3, %30
  %31 = phi i64 [ 0, %30 ], [ %33, %.preheader3.3 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %32 = or disjoint i64 %31, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %33 = add nuw nsw i64 %31, 4
  %34 = icmp ult i64 %32, 8191
  br i1 %34, label %.preheader3.3, label %35

35:                                               ; preds = %.preheader3.3
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.3, %35
  %36 = phi i64 [ 0, %35 ], [ %38, %.preheader.3 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %37 = or disjoint i64 %36, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %38 = add nuw nsw i64 %36, 4
  %39 = icmp ult i64 %37, 8191
  br i1 %39, label %.preheader.3, label %40

40:                                               ; preds = %.preheader.3
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.4

.preheader3.4:                                    ; preds = %.preheader3.4, %40
  %41 = phi i64 [ 0, %40 ], [ %43, %.preheader3.4 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %42 = or disjoint i64 %41, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %43 = add nuw nsw i64 %41, 4
  %44 = icmp ult i64 %42, 8191
  br i1 %44, label %.preheader3.4, label %45

45:                                               ; preds = %.preheader3.4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.4, %45
  %46 = phi i64 [ 0, %45 ], [ %48, %.preheader.4 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %47 = or disjoint i64 %46, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %48 = add nuw nsw i64 %46, 4
  %49 = icmp ult i64 %47, 8191
  br i1 %49, label %.preheader.4, label %50

50:                                               ; preds = %.preheader.4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.5

.preheader3.5:                                    ; preds = %.preheader3.5, %50
  %51 = phi i64 [ 0, %50 ], [ %53, %.preheader3.5 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %52 = or disjoint i64 %51, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %53 = add nuw nsw i64 %51, 4
  %54 = icmp ult i64 %52, 8191
  br i1 %54, label %.preheader3.5, label %55

55:                                               ; preds = %.preheader3.5
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.5, %55
  %56 = phi i64 [ 0, %55 ], [ %58, %.preheader.5 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %57 = or disjoint i64 %56, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %58 = add nuw nsw i64 %56, 4
  %59 = icmp ult i64 %57, 8191
  br i1 %59, label %.preheader.5, label %60

60:                                               ; preds = %.preheader.5
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.6

.preheader3.6:                                    ; preds = %.preheader3.6, %60
  %61 = phi i64 [ 0, %60 ], [ %63, %.preheader3.6 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %62 = or disjoint i64 %61, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %63 = add nuw nsw i64 %61, 4
  %64 = icmp ult i64 %62, 8191
  br i1 %64, label %.preheader3.6, label %65

65:                                               ; preds = %.preheader3.6
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.6, %65
  %66 = phi i64 [ 0, %65 ], [ %68, %.preheader.6 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %67 = or disjoint i64 %66, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %68 = add nuw nsw i64 %66, 4
  %69 = icmp ult i64 %67, 8191
  br i1 %69, label %.preheader.6, label %70

70:                                               ; preds = %.preheader.6
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_3_5() local_unnamed_addr #0 {
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3, %0
  %1 = phi i64 [ 0, %0 ], [ %3, %.preheader3 ]
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %2 = or disjoint i64 %1, 3
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %3 = add nuw nsw i64 %1, 4
  %4 = icmp ult i64 %2, 8191
  br i1 %4, label %.preheader3, label %5

5:                                                ; preds = %.preheader3
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %5
  %6 = phi i64 [ 0, %5 ], [ %8, %.preheader ]
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %7 = or disjoint i64 %6, 3
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %8 = add nuw nsw i64 %6, 4
  %9 = icmp ult i64 %7, 8191
  br i1 %9, label %.preheader, label %10

10:                                               ; preds = %.preheader
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.1

.preheader3.1:                                    ; preds = %.preheader3.1, %10
  %11 = phi i64 [ 0, %10 ], [ %13, %.preheader3.1 ]
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %12 = or disjoint i64 %11, 3
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %13 = add nuw nsw i64 %11, 4
  %14 = icmp ult i64 %12, 8191
  br i1 %14, label %.preheader3.1, label %15

15:                                               ; preds = %.preheader3.1
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1, %15
  %16 = phi i64 [ 0, %15 ], [ %18, %.preheader.1 ]
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %17 = or disjoint i64 %16, 3
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %18 = add nuw nsw i64 %16, 4
  %19 = icmp ult i64 %17, 8191
  br i1 %19, label %.preheader.1, label %20

20:                                               ; preds = %.preheader.1
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.2

.preheader3.2:                                    ; preds = %.preheader3.2, %20
  %21 = phi i64 [ 0, %20 ], [ %23, %.preheader3.2 ]
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %22 = or disjoint i64 %21, 3
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %23 = add nuw nsw i64 %21, 4
  %24 = icmp ult i64 %22, 8191
  br i1 %24, label %.preheader3.2, label %25

25:                                               ; preds = %.preheader3.2
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2, %25
  %26 = phi i64 [ 0, %25 ], [ %28, %.preheader.2 ]
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %27 = or disjoint i64 %26, 3
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %28 = add nuw nsw i64 %26, 4
  %29 = icmp ult i64 %27, 8191
  br i1 %29, label %.preheader.2, label %30

30:                                               ; preds = %.preheader.2
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.3

.preheader3.3:                                    ; preds = %.preheader3.3, %30
  %31 = phi i64 [ 0, %30 ], [ %33, %.preheader3.3 ]
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %32 = or disjoint i64 %31, 3
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %33 = add nuw nsw i64 %31, 4
  %34 = icmp ult i64 %32, 8191
  br i1 %34, label %.preheader3.3, label %35

35:                                               ; preds = %.preheader3.3
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.3, %35
  %36 = phi i64 [ 0, %35 ], [ %38, %.preheader.3 ]
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %37 = or disjoint i64 %36, 3
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %38 = add nuw nsw i64 %36, 4
  %39 = icmp ult i64 %37, 8191
  br i1 %39, label %.preheader.3, label %40

40:                                               ; preds = %.preheader.3
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.4

.preheader3.4:                                    ; preds = %.preheader3.4, %40
  %41 = phi i64 [ 0, %40 ], [ %43, %.preheader3.4 ]
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %42 = or disjoint i64 %41, 3
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %43 = add nuw nsw i64 %41, 4
  %44 = icmp ult i64 %42, 8191
  br i1 %44, label %.preheader3.4, label %45

45:                                               ; preds = %.preheader3.4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.4, %45
  %46 = phi i64 [ 0, %45 ], [ %48, %.preheader.4 ]
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %47 = or disjoint i64 %46, 3
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %48 = add nuw nsw i64 %46, 4
  %49 = icmp ult i64 %47, 8191
  br i1 %49, label %.preheader.4, label %50

50:                                               ; preds = %.preheader.4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.5

.preheader3.5:                                    ; preds = %.preheader3.5, %50
  %51 = phi i64 [ 0, %50 ], [ %53, %.preheader3.5 ]
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %52 = or disjoint i64 %51, 3
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %53 = add nuw nsw i64 %51, 4
  %54 = icmp ult i64 %52, 8191
  br i1 %54, label %.preheader3.5, label %55

55:                                               ; preds = %.preheader3.5
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.5, %55
  %56 = phi i64 [ 0, %55 ], [ %58, %.preheader.5 ]
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %57 = or disjoint i64 %56, 3
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %58 = add nuw nsw i64 %56, 4
  %59 = icmp ult i64 %57, 8191
  br i1 %59, label %.preheader.5, label %60

60:                                               ; preds = %.preheader.5
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.6

.preheader3.6:                                    ; preds = %.preheader3.6, %60
  %61 = phi i64 [ 0, %60 ], [ %63, %.preheader3.6 ]
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %62 = or disjoint i64 %61, 3
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %63 = add nuw nsw i64 %61, 4
  %64 = icmp ult i64 %62, 8191
  br i1 %64, label %.preheader3.6, label %65

65:                                               ; preds = %.preheader3.6
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.6, %65
  %66 = phi i64 [ 0, %65 ], [ %68, %.preheader.6 ]
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %67 = or disjoint i64 %66, 3
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  %68 = add nuw nsw i64 %66, 4
  %69 = icmp ult i64 %67, 8191
  br i1 %69, label %.preheader.6, label %70

70:                                               ; preds = %.preheader.6
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_0_2() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %14
  %2 = phi i64 [ 0, %0 ], [ %15, %14 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %6, %3 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %5 = or disjoint i64 %4, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = add nuw nsw i64 %4, 8
  %7 = icmp ult i64 %5, 16382
  br i1 %7, label %3, label %8

8:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %9

9:                                                ; preds = %9, %8
  %10 = phi i64 [ 0, %8 ], [ %12, %9 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %11 = or disjoint i64 %10, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add nuw nsw i64 %10, 8
  %13 = icmp ult i64 %11, 16382
  br i1 %13, label %9, label %14

14:                                               ; preds = %9
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %15 = add nuw nsw i64 %2, 2
  %16 = icmp ult i64 %2, 12
  br i1 %16, label %1, label %17

17:                                               ; preds = %14
  ret void
}

; Function Attrs: nounwind
define void @core_1_3() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %14
  %2 = phi i64 [ 0, %0 ], [ %15, %14 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %6, %3 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %5 = or disjoint i64 %4, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = add nuw nsw i64 %4, 8
  %7 = icmp ult i64 %5, 16382
  br i1 %7, label %3, label %8

8:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %9

9:                                                ; preds = %9, %8
  %10 = phi i64 [ 0, %8 ], [ %12, %9 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %11 = or disjoint i64 %10, 6
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add nuw nsw i64 %10, 8
  %13 = icmp ult i64 %11, 16382
  br i1 %13, label %9, label %14

14:                                               ; preds = %9
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %15 = add nuw nsw i64 %2, 2
  %16 = icmp ult i64 %2, 12
  br i1 %16, label %1, label %17

17:                                               ; preds = %14
  ret void
}

; Function Attrs: nounwind
define void @core_1_4() local_unnamed_addr #0 {
  br label %.preheader

.preheader:                                       ; preds = %13, %0
  %1 = phi i64 [ 0, %0 ], [ %14, %13 ]
  br label %2

2:                                                ; preds = %2, %.preheader
  %3 = phi i64 [ 0, %.preheader ], [ %5, %2 ]
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %4 = or disjoint i64 %3, 6
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %5 = add nuw nsw i64 %3, 8
  %6 = icmp ult i64 %4, 16382
  br i1 %6, label %2, label %.preheader.1

.preheader.1:                                     ; preds = %2
  %7 = or disjoint i64 %1, 1
  br label %8

8:                                                ; preds = %8, %.preheader.1
  %9 = phi i64 [ 0, %.preheader.1 ], [ %11, %8 ]
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %10 = or disjoint i64 %9, 6
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %11 = add nuw nsw i64 %9, 8
  %12 = icmp ult i64 %10, 16382
  br i1 %12, label %8, label %13

13:                                               ; preds = %8
  %14 = add nuw nsw i64 %1, 2
  %15 = icmp ult i64 %7, 13
  br i1 %15, label %.preheader, label %16

16:                                               ; preds = %13
  ret void
}

; Function Attrs: nounwind
define void @core_1_5() local_unnamed_addr #0 {
.preheader:
  br label %0

0:                                                ; preds = %0, %.preheader
  %1 = phi i64 [ 0, %.preheader ], [ %3, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %2 = or disjoint i64 %1, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %3 = add nuw nsw i64 %1, 8
  %4 = icmp ult i64 %2, 16382
  br i1 %4, label %0, label %.preheader.1

.preheader.1:                                     ; preds = %0, %.preheader.1
  %5 = phi i64 [ %7, %.preheader.1 ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 16382
  br i1 %8, label %.preheader.1, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1, %.preheader.2
  %9 = phi i64 [ %11, %.preheader.2 ], [ 0, %.preheader.1 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %10 = or disjoint i64 %9, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %11 = add nuw nsw i64 %9, 8
  %12 = icmp ult i64 %10, 16382
  br i1 %12, label %.preheader.2, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2, %.preheader.3
  %13 = phi i64 [ %15, %.preheader.3 ], [ 0, %.preheader.2 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %14 = or disjoint i64 %13, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %15 = add nuw nsw i64 %13, 8
  %16 = icmp ult i64 %14, 16382
  br i1 %16, label %.preheader.3, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3, %.preheader.4
  %17 = phi i64 [ %19, %.preheader.4 ], [ 0, %.preheader.3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %18 = or disjoint i64 %17, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %19 = add nuw nsw i64 %17, 8
  %20 = icmp ult i64 %18, 16382
  br i1 %20, label %.preheader.4, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4, %.preheader.5
  %21 = phi i64 [ %23, %.preheader.5 ], [ 0, %.preheader.4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %22 = or disjoint i64 %21, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %23 = add nuw nsw i64 %21, 8
  %24 = icmp ult i64 %22, 16382
  br i1 %24, label %.preheader.5, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5, %.preheader.6
  %25 = phi i64 [ %27, %.preheader.6 ], [ 0, %.preheader.5 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %26 = or disjoint i64 %25, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %27 = add nuw nsw i64 %25, 8
  %28 = icmp ult i64 %26, 16382
  br i1 %28, label %.preheader.6, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6, %.preheader.7
  %29 = phi i64 [ %31, %.preheader.7 ], [ 0, %.preheader.6 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %30 = or disjoint i64 %29, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %31 = add nuw nsw i64 %29, 8
  %32 = icmp ult i64 %30, 16382
  br i1 %32, label %.preheader.7, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7, %.preheader.8
  %33 = phi i64 [ %35, %.preheader.8 ], [ 0, %.preheader.7 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %34 = or disjoint i64 %33, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %35 = add nuw nsw i64 %33, 8
  %36 = icmp ult i64 %34, 16382
  br i1 %36, label %.preheader.8, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8, %.preheader.9
  %37 = phi i64 [ %39, %.preheader.9 ], [ 0, %.preheader.8 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %38 = or disjoint i64 %37, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %39 = add nuw nsw i64 %37, 8
  %40 = icmp ult i64 %38, 16382
  br i1 %40, label %.preheader.9, label %.preheader.10

.preheader.10:                                    ; preds = %.preheader.9, %.preheader.10
  %41 = phi i64 [ %43, %.preheader.10 ], [ 0, %.preheader.9 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %42 = or disjoint i64 %41, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %43 = add nuw nsw i64 %41, 8
  %44 = icmp ult i64 %42, 16382
  br i1 %44, label %.preheader.10, label %.preheader.11

.preheader.11:                                    ; preds = %.preheader.10, %.preheader.11
  %45 = phi i64 [ %47, %.preheader.11 ], [ 0, %.preheader.10 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %46 = or disjoint i64 %45, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %47 = add nuw nsw i64 %45, 8
  %48 = icmp ult i64 %46, 16382
  br i1 %48, label %.preheader.11, label %.preheader.12

.preheader.12:                                    ; preds = %.preheader.11, %.preheader.12
  %49 = phi i64 [ %51, %.preheader.12 ], [ 0, %.preheader.11 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %50 = or disjoint i64 %49, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %51 = add nuw nsw i64 %49, 8
  %52 = icmp ult i64 %50, 16382
  br i1 %52, label %.preheader.12, label %.preheader.13

.preheader.13:                                    ; preds = %.preheader.12, %.preheader.13
  %53 = phi i64 [ %55, %.preheader.13 ], [ 0, %.preheader.12 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %54 = or disjoint i64 %53, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %55 = add nuw nsw i64 %53, 8
  %56 = icmp ult i64 %54, 16382
  br i1 %56, label %.preheader.13, label %57

57:                                               ; preds = %.preheader.13
  ret void
}

; Function Attrs: nounwind
define void @core_0_3() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %14
  %2 = phi i64 [ 0, %0 ], [ %15, %14 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %6, %3 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %5 = or disjoint i64 %4, 6
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %6 = add nuw nsw i64 %4, 8
  %7 = icmp ult i64 %5, 8190
  br i1 %7, label %3, label %8

8:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %9

9:                                                ; preds = %9, %8
  %10 = phi i64 [ 0, %8 ], [ %12, %9 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %11 = or disjoint i64 %10, 6
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %12 = add nuw nsw i64 %10, 8
  %13 = icmp ult i64 %11, 8190
  br i1 %13, label %9, label %14

14:                                               ; preds = %9
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %15 = add nuw nsw i64 %2, 2
  %16 = icmp ult i64 %2, 12
  br i1 %16, label %1, label %17

17:                                               ; preds = %14
  ret void
}

; Function Attrs: nounwind
define void @core_0_4() local_unnamed_addr #0 {
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3, %0
  %1 = phi i64 [ 0, %0 ], [ %3, %.preheader3 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %2 = or disjoint i64 %1, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %3 = add nuw nsw i64 %1, 4
  %4 = icmp ult i64 %2, 8191
  br i1 %4, label %.preheader3, label %5

5:                                                ; preds = %.preheader3
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %5
  %6 = phi i64 [ 0, %5 ], [ %8, %.preheader ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %7 = or disjoint i64 %6, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %8 = add nuw nsw i64 %6, 4
  %9 = icmp ult i64 %7, 8191
  br i1 %9, label %.preheader, label %10

10:                                               ; preds = %.preheader
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.1

.preheader3.1:                                    ; preds = %.preheader3.1, %10
  %11 = phi i64 [ 0, %10 ], [ %13, %.preheader3.1 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %12 = or disjoint i64 %11, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %13 = add nuw nsw i64 %11, 4
  %14 = icmp ult i64 %12, 8191
  br i1 %14, label %.preheader3.1, label %15

15:                                               ; preds = %.preheader3.1
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1, %15
  %16 = phi i64 [ 0, %15 ], [ %18, %.preheader.1 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %17 = or disjoint i64 %16, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %18 = add nuw nsw i64 %16, 4
  %19 = icmp ult i64 %17, 8191
  br i1 %19, label %.preheader.1, label %20

20:                                               ; preds = %.preheader.1
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.2

.preheader3.2:                                    ; preds = %.preheader3.2, %20
  %21 = phi i64 [ 0, %20 ], [ %23, %.preheader3.2 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %22 = or disjoint i64 %21, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %23 = add nuw nsw i64 %21, 4
  %24 = icmp ult i64 %22, 8191
  br i1 %24, label %.preheader3.2, label %25

25:                                               ; preds = %.preheader3.2
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2, %25
  %26 = phi i64 [ 0, %25 ], [ %28, %.preheader.2 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %27 = or disjoint i64 %26, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %28 = add nuw nsw i64 %26, 4
  %29 = icmp ult i64 %27, 8191
  br i1 %29, label %.preheader.2, label %30

30:                                               ; preds = %.preheader.2
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.3

.preheader3.3:                                    ; preds = %.preheader3.3, %30
  %31 = phi i64 [ 0, %30 ], [ %33, %.preheader3.3 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %32 = or disjoint i64 %31, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %33 = add nuw nsw i64 %31, 4
  %34 = icmp ult i64 %32, 8191
  br i1 %34, label %.preheader3.3, label %35

35:                                               ; preds = %.preheader3.3
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.3, %35
  %36 = phi i64 [ 0, %35 ], [ %38, %.preheader.3 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %37 = or disjoint i64 %36, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %38 = add nuw nsw i64 %36, 4
  %39 = icmp ult i64 %37, 8191
  br i1 %39, label %.preheader.3, label %40

40:                                               ; preds = %.preheader.3
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.4

.preheader3.4:                                    ; preds = %.preheader3.4, %40
  %41 = phi i64 [ 0, %40 ], [ %43, %.preheader3.4 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %42 = or disjoint i64 %41, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %43 = add nuw nsw i64 %41, 4
  %44 = icmp ult i64 %42, 8191
  br i1 %44, label %.preheader3.4, label %45

45:                                               ; preds = %.preheader3.4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.4, %45
  %46 = phi i64 [ 0, %45 ], [ %48, %.preheader.4 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %47 = or disjoint i64 %46, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %48 = add nuw nsw i64 %46, 4
  %49 = icmp ult i64 %47, 8191
  br i1 %49, label %.preheader.4, label %50

50:                                               ; preds = %.preheader.4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.5

.preheader3.5:                                    ; preds = %.preheader3.5, %50
  %51 = phi i64 [ 0, %50 ], [ %53, %.preheader3.5 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %52 = or disjoint i64 %51, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %53 = add nuw nsw i64 %51, 4
  %54 = icmp ult i64 %52, 8191
  br i1 %54, label %.preheader3.5, label %55

55:                                               ; preds = %.preheader3.5
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.5, %55
  %56 = phi i64 [ 0, %55 ], [ %58, %.preheader.5 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %57 = or disjoint i64 %56, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %58 = add nuw nsw i64 %56, 4
  %59 = icmp ult i64 %57, 8191
  br i1 %59, label %.preheader.5, label %60

60:                                               ; preds = %.preheader.5
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.6

.preheader3.6:                                    ; preds = %.preheader3.6, %60
  %61 = phi i64 [ 0, %60 ], [ %63, %.preheader3.6 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %62 = or disjoint i64 %61, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %63 = add nuw nsw i64 %61, 4
  %64 = icmp ult i64 %62, 8191
  br i1 %64, label %.preheader3.6, label %65

65:                                               ; preds = %.preheader3.6
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.6, %65
  %66 = phi i64 [ 0, %65 ], [ %68, %.preheader.6 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %67 = or disjoint i64 %66, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %68 = add nuw nsw i64 %66, 4
  %69 = icmp ult i64 %67, 8191
  br i1 %69, label %.preheader.6, label %70

70:                                               ; preds = %.preheader.6
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_0_5() local_unnamed_addr #0 {
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3, %0
  %1 = phi i64 [ 0, %0 ], [ %3, %.preheader3 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %2 = or disjoint i64 %1, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %3 = add nuw nsw i64 %1, 4
  %4 = icmp ult i64 %2, 8191
  br i1 %4, label %.preheader3, label %5

5:                                                ; preds = %.preheader3
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %5
  %6 = phi i64 [ 0, %5 ], [ %8, %.preheader ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %7 = or disjoint i64 %6, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %8 = add nuw nsw i64 %6, 4
  %9 = icmp ult i64 %7, 8191
  br i1 %9, label %.preheader, label %10

10:                                               ; preds = %.preheader
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.1

.preheader3.1:                                    ; preds = %.preheader3.1, %10
  %11 = phi i64 [ 0, %10 ], [ %13, %.preheader3.1 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %12 = or disjoint i64 %11, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %13 = add nuw nsw i64 %11, 4
  %14 = icmp ult i64 %12, 8191
  br i1 %14, label %.preheader3.1, label %15

15:                                               ; preds = %.preheader3.1
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1, %15
  %16 = phi i64 [ 0, %15 ], [ %18, %.preheader.1 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %17 = or disjoint i64 %16, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %18 = add nuw nsw i64 %16, 4
  %19 = icmp ult i64 %17, 8191
  br i1 %19, label %.preheader.1, label %20

20:                                               ; preds = %.preheader.1
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.2

.preheader3.2:                                    ; preds = %.preheader3.2, %20
  %21 = phi i64 [ 0, %20 ], [ %23, %.preheader3.2 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %22 = or disjoint i64 %21, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %23 = add nuw nsw i64 %21, 4
  %24 = icmp ult i64 %22, 8191
  br i1 %24, label %.preheader3.2, label %25

25:                                               ; preds = %.preheader3.2
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.2, %25
  %26 = phi i64 [ 0, %25 ], [ %28, %.preheader.2 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %27 = or disjoint i64 %26, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %28 = add nuw nsw i64 %26, 4
  %29 = icmp ult i64 %27, 8191
  br i1 %29, label %.preheader.2, label %30

30:                                               ; preds = %.preheader.2
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.3

.preheader3.3:                                    ; preds = %.preheader3.3, %30
  %31 = phi i64 [ 0, %30 ], [ %33, %.preheader3.3 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %32 = or disjoint i64 %31, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %33 = add nuw nsw i64 %31, 4
  %34 = icmp ult i64 %32, 8191
  br i1 %34, label %.preheader3.3, label %35

35:                                               ; preds = %.preheader3.3
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.3, %35
  %36 = phi i64 [ 0, %35 ], [ %38, %.preheader.3 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %37 = or disjoint i64 %36, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %38 = add nuw nsw i64 %36, 4
  %39 = icmp ult i64 %37, 8191
  br i1 %39, label %.preheader.3, label %40

40:                                               ; preds = %.preheader.3
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.4

.preheader3.4:                                    ; preds = %.preheader3.4, %40
  %41 = phi i64 [ 0, %40 ], [ %43, %.preheader3.4 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %42 = or disjoint i64 %41, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %43 = add nuw nsw i64 %41, 4
  %44 = icmp ult i64 %42, 8191
  br i1 %44, label %.preheader3.4, label %45

45:                                               ; preds = %.preheader3.4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.4, %45
  %46 = phi i64 [ 0, %45 ], [ %48, %.preheader.4 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %47 = or disjoint i64 %46, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %48 = add nuw nsw i64 %46, 4
  %49 = icmp ult i64 %47, 8191
  br i1 %49, label %.preheader.4, label %50

50:                                               ; preds = %.preheader.4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.5

.preheader3.5:                                    ; preds = %.preheader3.5, %50
  %51 = phi i64 [ 0, %50 ], [ %53, %.preheader3.5 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %52 = or disjoint i64 %51, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %53 = add nuw nsw i64 %51, 4
  %54 = icmp ult i64 %52, 8191
  br i1 %54, label %.preheader3.5, label %55

55:                                               ; preds = %.preheader3.5
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.5, %55
  %56 = phi i64 [ 0, %55 ], [ %58, %.preheader.5 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %57 = or disjoint i64 %56, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %58 = add nuw nsw i64 %56, 4
  %59 = icmp ult i64 %57, 8191
  br i1 %59, label %.preheader.5, label %60

60:                                               ; preds = %.preheader.5
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader3.6

.preheader3.6:                                    ; preds = %.preheader3.6, %60
  %61 = phi i64 [ 0, %60 ], [ %63, %.preheader3.6 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %62 = or disjoint i64 %61, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %63 = add nuw nsw i64 %61, 4
  %64 = icmp ult i64 %62, 8191
  br i1 %64, label %.preheader3.6, label %65

65:                                               ; preds = %.preheader3.6
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.6, %65
  %66 = phi i64 [ 0, %65 ], [ %68, %.preheader.6 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %67 = or disjoint i64 %66, 3
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %68 = add nuw nsw i64 %66, 4
  %69 = icmp ult i64 %67, 8191
  br i1 %69, label %.preheader.6, label %70

70:                                               ; preds = %.preheader.6
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

attributes #0 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
