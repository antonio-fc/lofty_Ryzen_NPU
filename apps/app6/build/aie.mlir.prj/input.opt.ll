; ModuleID = '/notebooks/my_mlir-aie/apps/app6/build/aie.mlir.prj/input.ll'
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
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 4611686018427387900
  br i1 %niter.ncmp.3, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %0, %.epil.preheader
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.epil.preheader, !llvm.loop !1

.epilog-lcssa:                                    ; preds = %.epil.preheader
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_2_2() local_unnamed_addr #0 {
.new:
  br label %0

0:                                                ; preds = %0, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %0 ]
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
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 4611686018427387900
  br i1 %niter.ncmp.3, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %0, %.epil.preheader
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.epil.preheader, !llvm.loop !3

.epilog-lcssa:                                    ; preds = %.epil.preheader
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

attributes #0 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.unroll.disable"}
!3 = distinct !{!3, !2}
