; ModuleID = '/notebooks/my_mlir-aie/apps/loafty1_bfloat16/build/aie.mlir.prj/input.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

@of_in_mainA01_cons_buff_1 = external global [768 x bfloat]
@of_in_mainA01_cons_buff_0 = external global [768 x bfloat]
@of_in_mainB21_cons_buff_1 = external global [768 x bfloat]
@of_in_mainB21_cons_buff_0 = external global [768 x bfloat]
@of_in_mainA02_cons_buff_1 = external global [768 x bfloat]
@of_in_mainA02_cons_buff_0 = external global [768 x bfloat]
@of_in_mainB22_cons_buff_1 = external global [768 x bfloat]
@of_in_mainB22_cons_buff_0 = external global [768 x bfloat]
@of_in_mainA03_cons_buff_1 = external global [768 x bfloat]
@of_in_mainA03_cons_buff_0 = external global [768 x bfloat]
@of_in_mainB23_cons_buff_1 = external global [768 x bfloat]
@of_in_mainB23_cons_buff_0 = external global [768 x bfloat]
@of_in_mainA11_cons_buff_1 = external global [768 x bfloat]
@of_in_mainA11_cons_buff_0 = external global [768 x bfloat]
@of_in_mainB31_cons_buff_1 = external global [768 x bfloat]
@of_in_mainB31_cons_buff_0 = external global [768 x bfloat]
@of_in_mainA12_cons_buff_1 = external global [768 x bfloat]
@of_in_mainA12_cons_buff_0 = external global [768 x bfloat]
@of_in_mainB32_cons_buff_1 = external global [768 x bfloat]
@of_in_mainB32_cons_buff_0 = external global [768 x bfloat]
@of_in_mainA13_cons_buff_1 = external global [768 x bfloat]
@of_in_mainA13_cons_buff_0 = external global [768 x bfloat]
@of_in_mainB33_cons_buff_1 = external global [768 x bfloat]
@of_in_mainB33_cons_buff_0 = external global [768 x bfloat]
@of_out_mainA01_buff_1 = external global [768 x bfloat]
@of_out_mainA01_buff_0 = external global [768 x bfloat]
@of_out_mainB21_buff_1 = external global [768 x bfloat]
@of_out_mainB21_buff_0 = external global [768 x bfloat]
@of_out_mainA02_buff_1 = external global [768 x bfloat]
@of_out_mainA02_buff_0 = external global [768 x bfloat]
@of_out_mainB22_buff_1 = external global [768 x bfloat]
@of_out_mainB22_buff_0 = external global [768 x bfloat]
@of_out_mainA03_buff_1 = external global [768 x bfloat]
@of_out_mainA03_buff_0 = external global [768 x bfloat]
@of_out_mainB23_buff_1 = external global [768 x bfloat]
@of_out_mainB23_buff_0 = external global [768 x bfloat]
@of_out_mainA11_buff_1 = external global [768 x bfloat]
@of_out_mainA11_buff_0 = external global [768 x bfloat]
@of_out_mainB31_buff_1 = external global [768 x bfloat]
@of_out_mainB31_buff_0 = external global [768 x bfloat]
@of_out_mainA12_buff_1 = external global [768 x bfloat]
@of_out_mainA12_buff_0 = external global [768 x bfloat]
@of_out_mainB32_buff_1 = external global [768 x bfloat]
@of_out_mainB32_buff_0 = external global [768 x bfloat]
@of_out_mainA13_buff_1 = external global [768 x bfloat]
@of_out_mainA13_buff_0 = external global [768 x bfloat]
@of_out_mainB33_buff_1 = external global [768 x bfloat]
@of_out_mainB33_buff_0 = external global [768 x bfloat]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @passthrough(ptr, ptr, i32) local_unnamed_addr

define void @core_3_5() local_unnamed_addr {
.new:
  br label %0

0:                                                ; preds = %0, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 4611686018427387900
  br i1 %niter.ncmp.3, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %0, %.epil.preheader
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.epil.preheader, !llvm.loop !1

.epilog-lcssa:                                    ; preds = %.epil.preheader
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_1_5() local_unnamed_addr {
.new:
  br label %0

0:                                                ; preds = %0, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %0 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 4611686018427387900
  br i1 %niter.ncmp.3, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %0, %.epil.preheader
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.epil.preheader, !llvm.loop !3

.epilog-lcssa:                                    ; preds = %.epil.preheader
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_3_4() local_unnamed_addr {
.new:
  br label %0

0:                                                ; preds = %0, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 4611686018427387900
  br i1 %niter.ncmp.3, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %0, %.epil.preheader
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.epil.preheader, !llvm.loop !4

.epilog-lcssa:                                    ; preds = %.epil.preheader
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_1_4() local_unnamed_addr {
.new:
  br label %0

0:                                                ; preds = %0, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %0 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 4611686018427387900
  br i1 %niter.ncmp.3, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %0, %.epil.preheader
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.epil.preheader, !llvm.loop !5

.epilog-lcssa:                                    ; preds = %.epil.preheader
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_3_3() local_unnamed_addr {
.new:
  br label %0

0:                                                ; preds = %0, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 4611686018427387900
  br i1 %niter.ncmp.3, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %0, %.epil.preheader
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.epil.preheader, !llvm.loop !6

.epilog-lcssa:                                    ; preds = %.epil.preheader
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_1_3() local_unnamed_addr {
.new:
  br label %0

0:                                                ; preds = %0, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %0 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 4611686018427387900
  br i1 %niter.ncmp.3, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %0, %.epil.preheader
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.epil.preheader, !llvm.loop !7

.epilog-lcssa:                                    ; preds = %.epil.preheader
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_2_5() local_unnamed_addr {
.new:
  br label %0

0:                                                ; preds = %0, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 4611686018427387900
  br i1 %niter.ncmp.3, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %0, %.epil.preheader
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.epil.preheader, !llvm.loop !8

.epilog-lcssa:                                    ; preds = %.epil.preheader
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_0_5() local_unnamed_addr {
.new:
  br label %0

0:                                                ; preds = %0, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %0 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 4611686018427387900
  br i1 %niter.ncmp.3, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %0, %.epil.preheader
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.epil.preheader, !llvm.loop !9

.epilog-lcssa:                                    ; preds = %.epil.preheader
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_2_4() local_unnamed_addr {
.new:
  br label %0

0:                                                ; preds = %0, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 4611686018427387900
  br i1 %niter.ncmp.3, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %0, %.epil.preheader
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.epil.preheader, !llvm.loop !10

.epilog-lcssa:                                    ; preds = %.epil.preheader
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_0_4() local_unnamed_addr {
.new:
  br label %0

0:                                                ; preds = %0, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %0 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 4611686018427387900
  br i1 %niter.ncmp.3, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %0, %.epil.preheader
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.epil.preheader, !llvm.loop !11

.epilog-lcssa:                                    ; preds = %.epil.preheader
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_2_3() local_unnamed_addr {
.new:
  br label %0

0:                                                ; preds = %0, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 4611686018427387900
  br i1 %niter.ncmp.3, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %0, %.epil.preheader
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.epil.preheader, !llvm.loop !12

.epilog-lcssa:                                    ; preds = %.epil.preheader
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_0_3() local_unnamed_addr {
.new:
  br label %0

0:                                                ; preds = %0, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %0 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %niter.next.3 = add nuw nsw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 4611686018427387900
  br i1 %niter.ncmp.3, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %0, %.epil.preheader
  %epil.iter = phi i64 [ %epil.iter.next, %.epil.preheader ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 3
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.epil.preheader, !llvm.loop !13

.epilog-lcssa:                                    ; preds = %.epil.preheader
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_out_mainA01_buff_0, i32 768)
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
!1 = distinct !{!1, !2}
!2 = !{!"llvm.loop.unroll.disable"}
!3 = distinct !{!3, !2}
!4 = distinct !{!4, !2}
!5 = distinct !{!5, !2}
!6 = distinct !{!6, !2}
!7 = distinct !{!7, !2}
!8 = distinct !{!8, !2}
!9 = distinct !{!9, !2}
!10 = distinct !{!10, !2}
!11 = distinct !{!11, !2}
!12 = distinct !{!12, !2}
!13 = distinct !{!13, !2}
