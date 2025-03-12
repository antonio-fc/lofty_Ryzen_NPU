; ModuleID = '/notebooks/my_mlir-aie/apps/loafty0_bfloat16/build/aie.mlir.prj/input.llpeanohack.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

@sub2mean_buff_1 = external global [4608 x bfloat]
@sub2mean_buff_0 = external global [4608 x bfloat]
@out_buff_1 = external global [8 x bfloat]
@out_buff_0 = external global [8 x bfloat]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @mean(ptr, ptr, i32, i32) local_unnamed_addr

define void @core_2_2() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %6
  %1 = phi i64 [ 0, %0 ], [ %7, %6 ]
  br label %2

2:                                                ; preds = %.preheader, %2
  %3 = phi i64 [ 0, %.preheader ], [ %4, %2 ]
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @sub2mean_buff_0, ptr nonnull @out_buff_0, i32 0, i32 288)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @sub2mean_buff_1, ptr nonnull @out_buff_0, i32 1, i32 288)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @sub2mean_buff_0, ptr nonnull @out_buff_0, i32 2, i32 288)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @sub2mean_buff_1, ptr nonnull @out_buff_0, i32 3, i32 288)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4, i32 288)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @sub2mean_buff_1, ptr nonnull @out_buff_0, i32 5, i32 288)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @sub2mean_buff_0, ptr nonnull @out_buff_0, i32 6, i32 288)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @sub2mean_buff_1, ptr nonnull @out_buff_0, i32 7, i32 288)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @sub2mean_buff_0, ptr nonnull @out_buff_1, i32 0, i32 288)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @sub2mean_buff_1, ptr nonnull @out_buff_1, i32 1, i32 288)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @sub2mean_buff_0, ptr nonnull @out_buff_1, i32 2, i32 288)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @sub2mean_buff_1, ptr nonnull @out_buff_1, i32 3, i32 288)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4, i32 288)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @sub2mean_buff_1, ptr nonnull @out_buff_1, i32 5, i32 288)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @sub2mean_buff_0, ptr nonnull @out_buff_1, i32 6, i32 288)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @sub2mean_buff_1, ptr nonnull @out_buff_1, i32 7, i32 288)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %4 = add nuw nsw i64 %3, 2
  %5 = icmp ult i64 %3, 2046
  br i1 %5, label %2, label %6

6:                                                ; preds = %2
  %7 = add nuw nsw i64 %1, 1
  %.not = icmp eq i64 %7, 9223372036854775807
  br i1 %.not, label %8, label %.preheader

8:                                                ; preds = %6
  ret void
}

; Function Attrs: nounwind
define void @core_1_2() local_unnamed_addr #0 {
.new:
  br label %.preheader

.preheader:                                       ; preds = %17, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %17 ]
  br label %0

0:                                                ; preds = %0, %.preheader
  %1 = phi i64 [ 0, %.preheader ], [ %3, %0 ]
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
  %2 = or disjoint i64 %1, 6
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %3 = add nuw nsw i64 %1, 8
  %4 = icmp ult i64 %2, 16382
  br i1 %4, label %0, label %.preheader.1

.preheader.1:                                     ; preds = %0, %.preheader.1
  %5 = phi i64 [ %7, %.preheader.1 ], [ 0, %0 ]
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
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 16382
  br i1 %8, label %.preheader.1, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1, %.preheader.2
  %9 = phi i64 [ %11, %.preheader.2 ], [ 0, %.preheader.1 ]
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
  %10 = or disjoint i64 %9, 6
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %11 = add nuw nsw i64 %9, 8
  %12 = icmp ult i64 %10, 16382
  br i1 %12, label %.preheader.2, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2, %.preheader.3
  %13 = phi i64 [ %15, %.preheader.3 ], [ 0, %.preheader.2 ]
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
  %14 = or disjoint i64 %13, 6
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %15 = add nuw nsw i64 %13, 8
  %16 = icmp ult i64 %14, 16382
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
  %20 = or disjoint i64 %19, 6
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %21 = add nuw nsw i64 %19, 8
  %22 = icmp ult i64 %20, 16382
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.epil, !llvm.loop !1

.epilog-lcssa:                                    ; preds = %23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nounwind }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.unroll.disable"}
