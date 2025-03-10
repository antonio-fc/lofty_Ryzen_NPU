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
.new:
  br label %0

0:                                                ; preds = %0, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %0 ]
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 4611686018427387900
  br i1 %niter.ncmp.3, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %0, %.epil.preheader
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.epil.preheader, !llvm.loop !1

.epilog-lcssa:                                    ; preds = %.epil.preheader
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_3_4() local_unnamed_addr #0 {
.new:
  br label %.preheader

.preheader:                                       ; preds = %17, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %17 ]
  br label %0

0:                                                ; preds = %0, %.preheader
  %1 = phi i64 [ 0, %.preheader ], [ %3, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %2 = or disjoint i64 %1, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %3 = add nuw nsw i64 %1, 8
  %4 = icmp ult i64 %2, 4606
  br i1 %4, label %0, label %.preheader.1

.preheader.1:                                     ; preds = %0, %.preheader.1
  %5 = phi i64 [ %7, %.preheader.1 ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 4606
  br i1 %8, label %.preheader.1, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1, %.preheader.2
  %9 = phi i64 [ %11, %.preheader.2 ], [ 0, %.preheader.1 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %10 = or disjoint i64 %9, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %11 = add nuw nsw i64 %9, 8
  %12 = icmp ult i64 %10, 4606
  br i1 %12, label %.preheader.2, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2, %.preheader.3
  %13 = phi i64 [ %15, %.preheader.3 ], [ 0, %.preheader.2 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %14 = or disjoint i64 %13, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %15 = add nuw nsw i64 %13, 8
  %16 = icmp ult i64 %14, 4606
  br i1 %16, label %.preheader.3, label %17

17:                                               ; preds = %.preheader.3
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 9223372036854775804
  br i1 %niter.ncmp.3, label %.preheader.epil, label %.preheader

.preheader.epil:                                  ; preds = %17, %23
  %epil.iter = phi i64 [ %epil.iter.next, %23 ], [ 0, %17 ]
  br label %18

18:                                               ; preds = %18, %.preheader.epil
  %19 = phi i64 [ 0, %.preheader.epil ], [ %21, %18 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %20 = or disjoint i64 %19, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add nuw nsw i64 %19, 8
  %22 = icmp ult i64 %20, 4606
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.epil, !llvm.loop !3

.epilog-lcssa:                                    ; preds = %23
  ret void
}

; Function Attrs: nounwind
define void @core_3_5() local_unnamed_addr #0 {
.new:
  br label %.preheader

.preheader:                                       ; preds = %17, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %17 ]
  br label %0

0:                                                ; preds = %0, %.preheader
  %1 = phi i64 [ 0, %.preheader ], [ %3, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %2 = or disjoint i64 %1, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %3 = add nuw nsw i64 %1, 8
  %4 = icmp ult i64 %2, 4606
  br i1 %4, label %0, label %.preheader.1

.preheader.1:                                     ; preds = %0, %.preheader.1
  %5 = phi i64 [ %7, %.preheader.1 ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 4606
  br i1 %8, label %.preheader.1, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1, %.preheader.2
  %9 = phi i64 [ %11, %.preheader.2 ], [ 0, %.preheader.1 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %10 = or disjoint i64 %9, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %11 = add nuw nsw i64 %9, 8
  %12 = icmp ult i64 %10, 4606
  br i1 %12, label %.preheader.2, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2, %.preheader.3
  %13 = phi i64 [ %15, %.preheader.3 ], [ 0, %.preheader.2 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %14 = or disjoint i64 %13, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %15 = add nuw nsw i64 %13, 8
  %16 = icmp ult i64 %14, 4606
  br i1 %16, label %.preheader.3, label %17

17:                                               ; preds = %.preheader.3
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 9223372036854775804
  br i1 %niter.ncmp.3, label %.preheader.epil, label %.preheader

.preheader.epil:                                  ; preds = %17, %23
  %epil.iter = phi i64 [ %epil.iter.next, %23 ], [ 0, %17 ]
  br label %18

18:                                               ; preds = %18, %.preheader.epil
  %19 = phi i64 [ 0, %.preheader.epil ], [ %21, %18 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %20 = or disjoint i64 %19, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add nuw nsw i64 %19, 8
  %22 = icmp ult i64 %20, 4606
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.epil, !llvm.loop !4

.epilog-lcssa:                                    ; preds = %23
  ret void
}

; Function Attrs: nounwind
define void @core_2_2() local_unnamed_addr #0 {
.new:
  br label %0

0:                                                ; preds = %24, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %24 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %4, %1 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %3 = or disjoint i64 %2, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %4 = add nuw nsw i64 %2, 8
  %5 = icmp ult i64 %3, 4606
  br i1 %5, label %1, label %6

6:                                                ; preds = %1
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %7

7:                                                ; preds = %7, %6
  %8 = phi i64 [ 0, %6 ], [ %10, %7 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %9 = or disjoint i64 %8, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %10 = add nuw nsw i64 %8, 8
  %11 = icmp ult i64 %9, 4606
  br i1 %11, label %7, label %12

12:                                               ; preds = %7
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %13

13:                                               ; preds = %13, %12
  %14 = phi i64 [ 0, %12 ], [ %16, %13 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %15 = or disjoint i64 %14, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %16 = add nuw nsw i64 %14, 8
  %17 = icmp ult i64 %15, 4606
  br i1 %17, label %13, label %18

18:                                               ; preds = %13
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i64 [ 0, %18 ], [ %22, %19 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %21 = or disjoint i64 %20, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %22 = add nuw nsw i64 %20, 8
  %23 = icmp ult i64 %21, 4606
  br i1 %23, label %19, label %24

24:                                               ; preds = %19
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %niter.next.1 = add nuw nsw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, 4611686018427387902
  br i1 %niter.ncmp.1, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %24
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %25

25:                                               ; preds = %25, %.epil.preheader
  %26 = phi i64 [ 0, %.epil.preheader ], [ %28, %25 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %27 = or disjoint i64 %26, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %28 = add nuw nsw i64 %26, 8
  %29 = icmp ult i64 %27, 4606
  br i1 %29, label %25, label %30

30:                                               ; preds = %25
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %31

31:                                               ; preds = %31, %30
  %32 = phi i64 [ 0, %30 ], [ %34, %31 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %33 = or disjoint i64 %32, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %34 = add nuw nsw i64 %32, 8
  %35 = icmp ult i64 %33, 4606
  br i1 %35, label %31, label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %31
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %36

36:                                               ; preds = %36, %.epilog-lcssa
  %37 = phi i64 [ 0, %.epilog-lcssa ], [ %39, %36 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %38 = or disjoint i64 %37, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %39 = add nuw nsw i64 %37, 8
  %40 = icmp ult i64 %38, 4606
  br i1 %40, label %36, label %41

41:                                               ; preds = %36
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_1_2() local_unnamed_addr #0 {
.new:
  br label %0

0:                                                ; preds = %24, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %24 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %4, %1 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %3 = or disjoint i64 %2, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %4 = add nuw nsw i64 %2, 8
  %5 = icmp ult i64 %3, 4606
  br i1 %5, label %1, label %6

6:                                                ; preds = %1
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %7

7:                                                ; preds = %7, %6
  %8 = phi i64 [ 0, %6 ], [ %10, %7 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %9 = or disjoint i64 %8, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %10 = add nuw nsw i64 %8, 8
  %11 = icmp ult i64 %9, 4606
  br i1 %11, label %7, label %12

12:                                               ; preds = %7
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %13

13:                                               ; preds = %13, %12
  %14 = phi i64 [ 0, %12 ], [ %16, %13 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %15 = or disjoint i64 %14, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %16 = add nuw nsw i64 %14, 8
  %17 = icmp ult i64 %15, 4606
  br i1 %17, label %13, label %18

18:                                               ; preds = %13
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i64 [ 0, %18 ], [ %22, %19 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %21 = or disjoint i64 %20, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %22 = add nuw nsw i64 %20, 8
  %23 = icmp ult i64 %21, 4606
  br i1 %23, label %19, label %24

24:                                               ; preds = %19
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %niter.next.1 = add nuw nsw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, 4611686018427387902
  br i1 %niter.ncmp.1, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %24
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %25

25:                                               ; preds = %25, %.epil.preheader
  %26 = phi i64 [ 0, %.epil.preheader ], [ %28, %25 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %27 = or disjoint i64 %26, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %28 = add nuw nsw i64 %26, 8
  %29 = icmp ult i64 %27, 4606
  br i1 %29, label %25, label %30

30:                                               ; preds = %25
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %31

31:                                               ; preds = %31, %30
  %32 = phi i64 [ 0, %30 ], [ %34, %31 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %33 = or disjoint i64 %32, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %34 = add nuw nsw i64 %32, 8
  %35 = icmp ult i64 %33, 4606
  br i1 %35, label %31, label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %31
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %36

36:                                               ; preds = %36, %.epilog-lcssa
  %37 = phi i64 [ 0, %.epilog-lcssa ], [ %39, %36 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %38 = or disjoint i64 %37, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %39 = add nuw nsw i64 %37, 8
  %40 = icmp ult i64 %38, 4606
  br i1 %40, label %36, label %41

41:                                               ; preds = %36
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_0_2() local_unnamed_addr #0 {
.new:
  br label %0

0:                                                ; preds = %24, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %24 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %4, %1 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %3 = or disjoint i64 %2, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %4 = add nuw nsw i64 %2, 8
  %5 = icmp ult i64 %3, 4606
  br i1 %5, label %1, label %6

6:                                                ; preds = %1
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %7

7:                                                ; preds = %7, %6
  %8 = phi i64 [ 0, %6 ], [ %10, %7 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %9 = or disjoint i64 %8, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %10 = add nuw nsw i64 %8, 8
  %11 = icmp ult i64 %9, 4606
  br i1 %11, label %7, label %12

12:                                               ; preds = %7
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %13

13:                                               ; preds = %13, %12
  %14 = phi i64 [ 0, %12 ], [ %16, %13 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %15 = or disjoint i64 %14, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %16 = add nuw nsw i64 %14, 8
  %17 = icmp ult i64 %15, 4606
  br i1 %17, label %13, label %18

18:                                               ; preds = %13
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %19

19:                                               ; preds = %19, %18
  %20 = phi i64 [ 0, %18 ], [ %22, %19 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %21 = or disjoint i64 %20, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %22 = add nuw nsw i64 %20, 8
  %23 = icmp ult i64 %21, 4606
  br i1 %23, label %19, label %24

24:                                               ; preds = %19
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %niter.next.1 = add nuw nsw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, 4611686018427387902
  br i1 %niter.ncmp.1, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %24
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %25

25:                                               ; preds = %25, %.epil.preheader
  %26 = phi i64 [ 0, %.epil.preheader ], [ %28, %25 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %27 = or disjoint i64 %26, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %28 = add nuw nsw i64 %26, 8
  %29 = icmp ult i64 %27, 4606
  br i1 %29, label %25, label %30

30:                                               ; preds = %25
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %31

31:                                               ; preds = %31, %30
  %32 = phi i64 [ 0, %30 ], [ %34, %31 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %33 = or disjoint i64 %32, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %34 = add nuw nsw i64 %32, 8
  %35 = icmp ult i64 %33, 4606
  br i1 %35, label %31, label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %31
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %36

36:                                               ; preds = %36, %.epilog-lcssa
  %37 = phi i64 [ 0, %.epilog-lcssa ], [ %39, %36 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %38 = or disjoint i64 %37, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %39 = add nuw nsw i64 %37, 8
  %40 = icmp ult i64 %38, 4606
  br i1 %40, label %36, label %41

41:                                               ; preds = %36
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

attributes #0 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.unroll.disable"}
!3 = distinct !{!3, !2}
!4 = distinct !{!4, !2}
