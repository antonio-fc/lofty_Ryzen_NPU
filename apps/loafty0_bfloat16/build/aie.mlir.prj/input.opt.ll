; ModuleID = '/notebooks/my_mlir-aie/apps/loafty0_bfloat16/build/aie.mlir.prj/input.llpeanohack.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

@in0_cons_buff_1 = external global [2 x bfloat]
@in0_cons_buff_0 = external global [2 x bfloat]
@of_in_u_cons_buff_1 = external global [4608 x bfloat]
@of_in_u_cons_buff_0 = external global [4608 x bfloat]
@of_in_v_cons_buff_1 = external global [4608 x bfloat]
@of_in_v_cons_buff_0 = external global [4608 x bfloat]
@of_in_w_cons_buff_1 = external global [4608 x bfloat]
@of_in_w_cons_buff_0 = external global [4608 x bfloat]
@of_in_l_cons_buff_0 = external global [32 x bfloat]
@of_in_m_cons_buff_0 = external global [32 x bfloat]
@of_in_n_cons_buff_0 = external global [32 x bfloat]
@of_in_visR_cons_buff_1 = external global [4608 x bfloat]
@of_in_visR_cons_buff_0 = external global [4608 x bfloat]
@of_in_visC_cons_buff_1 = external global [4608 x bfloat]
@of_in_visC_cons_buff_0 = external global [4608 x bfloat]
@of_addU_buff_0 = external global [4608 x bfloat]
@of_addV_buff_0 = external global [4608 x bfloat]
@of_addV_cons_buff_0 = external global [4608 x bfloat]
@of_addW_buff_0 = external global [4608 x bfloat]
@of_addW_cons_buff_1 = external global [4608 x bfloat]
@of_addW_cons_buff_0 = external global [4608 x bfloat]
@of_addUV_buff_0 = external global [4608 x bfloat]
@of_scaleAddBL_buff_0 = external global [4608 x bfloat]
@of_scaleAddBL_cons_buff_0 = external global [4608 x bfloat]
@of_trigFifo_buff_0 = external global [4608 x bfloat]
@of_trigFifo_1_cons_buff_0 = external global [4608 x bfloat]
@of_trigFifo_0_cons_buff_0 = external global [4608 x bfloat]
@of_multTrigR_buff_0 = external global [4608 x bfloat]
@of_multTrigC_buff_0 = external global [4608 x bfloat]
@of_reduceR_buff_1 = external global [4608 x bfloat]
@of_reduceR_buff_0 = external global [4608 x bfloat]
@of_reduceC_buff_1 = external global [4608 x bfloat]
@of_reduceC_buff_0 = external global [4608 x bfloat]
@of_reduc2SubR_buff_0 = external global [4608 x bfloat]
@of_reduc2SubR_cons_buff_0 = external global [4608 x bfloat]
@of_reduc2SubC_buff_0 = external global [4608 x bfloat]
@of_sub2mean_buff_0 = external global [4608 x bfloat]
@out_buff_1 = external global [32 x bfloat]
@out_buff_0 = external global [32 x bfloat]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @scale(ptr, ptr, ptr, i32, i32) local_unnamed_addr

declare void @add_kernel(ptr, ptr, ptr, i32) local_unnamed_addr

declare void @scale_single(ptr, ptr, ptr, i32) local_unnamed_addr

declare void @cosine(ptr, ptr, i32) local_unnamed_addr

declare void @sine(ptr, ptr, i32) local_unnamed_addr

declare void @mul_kernel(ptr, ptr, ptr, i32) local_unnamed_addr

declare void @sub_kernel(ptr, ptr, ptr, i32) local_unnamed_addr

declare void @mean(ptr, ptr, i32, i32) local_unnamed_addr

define void @core_2_2() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %6
  %1 = phi i64 [ 0, %0 ], [ %7, %6 ]
  br label %2

2:                                                ; preds = %.preheader, %2
  %3 = phi i64 [ 0, %.preheader ], [ %4, %2 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %4 = add nuw nsw i64 %3, 2
  %5 = icmp ult i64 %3, 510
  br i1 %5, label %2, label %6

6:                                                ; preds = %2
  %7 = add nuw nsw i64 %1, 1
  %.not = icmp eq i64 %7, 9223372036854775807
  br i1 %.not, label %8, label %.preheader

8:                                                ; preds = %6
  ret void
}

define void @core_3_2() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %7
  %1 = phi i64 [ 0, %0 ], [ %8, %7 ]
  br label %2

2:                                                ; preds = %2, %.preheader
  %3 = phi i64 [ 0, %.preheader ], [ %5, %2 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 33, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubR_cons_buff_0, i64 32) ]
  tail call void @sub_kernel(ptr nonnull @of_reduc2SubR_cons_buff_0, ptr nonnull @of_reduc2SubC_buff_0, ptr nonnull @of_sub2mean_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 32, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 33, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubR_cons_buff_0, i64 32) ]
  tail call void @sub_kernel(ptr nonnull @of_reduc2SubR_cons_buff_0, ptr nonnull @of_reduc2SubC_buff_0, ptr nonnull @of_sub2mean_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 32, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 33, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubR_cons_buff_0, i64 32) ]
  tail call void @sub_kernel(ptr nonnull @of_reduc2SubR_cons_buff_0, ptr nonnull @of_reduc2SubC_buff_0, ptr nonnull @of_sub2mean_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 32, i32 1)
  %4 = or disjoint i64 %3, 3
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 33, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubR_cons_buff_0, i64 32) ]
  tail call void @sub_kernel(ptr nonnull @of_reduc2SubR_cons_buff_0, ptr nonnull @of_reduc2SubC_buff_0, ptr nonnull @of_sub2mean_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 32, i32 1)
  %5 = add nuw nsw i64 %3, 4
  %6 = icmp ult i64 %4, 16383
  br i1 %6, label %2, label %7

7:                                                ; preds = %2
  %8 = add nuw nsw i64 %1, 1
  %.not = icmp eq i64 %8, 9223372036854775807
  br i1 %.not, label %9, label %.preheader

9:                                                ; preds = %7
  ret void
}

define void @core_3_3() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %7
  %1 = phi i64 [ 0, %0 ], [ %8, %7 ]
  br label %2

2:                                                ; preds = %2, %.preheader
  %3 = phi i64 [ 0, %.preheader ], [ %5, %2 ]
  tail call void @llvm.aie2.acquire(i32 35, i32 -2)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_reduceC_buff_0, ptr nonnull @of_reduceC_buff_1, ptr nonnull @of_reduc2SubC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 2)
  tail call void @llvm.aie2.acquire(i32 35, i32 -2)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_reduceC_buff_0, ptr nonnull @of_reduceC_buff_1, ptr nonnull @of_reduc2SubC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 2)
  tail call void @llvm.aie2.acquire(i32 35, i32 -2)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_reduceC_buff_0, ptr nonnull @of_reduceC_buff_1, ptr nonnull @of_reduc2SubC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 2)
  tail call void @llvm.aie2.acquire(i32 35, i32 -2)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_reduceC_buff_0, ptr nonnull @of_reduceC_buff_1, ptr nonnull @of_reduc2SubC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 2)
  tail call void @llvm.aie2.acquire(i32 35, i32 -2)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_reduceC_buff_0, ptr nonnull @of_reduceC_buff_1, ptr nonnull @of_reduc2SubC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 2)
  tail call void @llvm.aie2.acquire(i32 35, i32 -2)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_reduceC_buff_0, ptr nonnull @of_reduceC_buff_1, ptr nonnull @of_reduc2SubC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 2)
  %4 = or disjoint i64 %3, 6
  tail call void @llvm.aie2.acquire(i32 35, i32 -2)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_reduceC_buff_0, ptr nonnull @of_reduceC_buff_1, ptr nonnull @of_reduc2SubC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 2)
  tail call void @llvm.aie2.acquire(i32 35, i32 -2)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_reduceC_buff_0, ptr nonnull @of_reduceC_buff_1, ptr nonnull @of_reduc2SubC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 2)
  %5 = add nuw nsw i64 %3, 8
  %6 = icmp ult i64 %4, 16382
  br i1 %6, label %2, label %7

7:                                                ; preds = %2
  %8 = add nuw nsw i64 %1, 1
  %.not = icmp eq i64 %8, 9223372036854775807
  br i1 %.not, label %9, label %.preheader

9:                                                ; preds = %7
  ret void
}

define void @core_2_3() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %7
  %1 = phi i64 [ 0, %0 ], [ %8, %7 ]
  br label %2

2:                                                ; preds = %2, %.preheader
  %3 = phi i64 [ 0, %.preheader ], [ %5, %2 ]
  tail call void @llvm.aie2.acquire(i32 35, i32 -2)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_reduceR_buff_0, ptr nonnull @of_reduceR_buff_1, ptr nonnull @of_reduc2SubR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 2)
  tail call void @llvm.aie2.acquire(i32 35, i32 -2)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_reduceR_buff_0, ptr nonnull @of_reduceR_buff_1, ptr nonnull @of_reduc2SubR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 2)
  tail call void @llvm.aie2.acquire(i32 35, i32 -2)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_reduceR_buff_0, ptr nonnull @of_reduceR_buff_1, ptr nonnull @of_reduc2SubR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 2)
  tail call void @llvm.aie2.acquire(i32 35, i32 -2)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_reduceR_buff_0, ptr nonnull @of_reduceR_buff_1, ptr nonnull @of_reduc2SubR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 2)
  tail call void @llvm.aie2.acquire(i32 35, i32 -2)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_reduceR_buff_0, ptr nonnull @of_reduceR_buff_1, ptr nonnull @of_reduc2SubR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 2)
  tail call void @llvm.aie2.acquire(i32 35, i32 -2)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_reduceR_buff_0, ptr nonnull @of_reduceR_buff_1, ptr nonnull @of_reduc2SubR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 2)
  %4 = or disjoint i64 %3, 6
  tail call void @llvm.aie2.acquire(i32 35, i32 -2)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_reduceR_buff_0, ptr nonnull @of_reduceR_buff_1, ptr nonnull @of_reduc2SubR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 2)
  tail call void @llvm.aie2.acquire(i32 35, i32 -2)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_reduceR_buff_0, ptr nonnull @of_reduceR_buff_1, ptr nonnull @of_reduc2SubR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 2)
  %5 = add nuw nsw i64 %3, 8
  %6 = icmp ult i64 %4, 16382
  br i1 %6, label %2, label %7

7:                                                ; preds = %2
  %8 = add nuw nsw i64 %1, 1
  %.not = icmp eq i64 %8, 9223372036854775807
  br i1 %.not, label %9, label %.preheader

9:                                                ; preds = %7
  ret void
}

define void @core_3_4() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %14
  %2 = phi i64 [ 0, %0 ], [ %15, %14 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %6, %3 ]
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  %5 = or disjoint i64 %4, 6
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  %6 = add nuw nsw i64 %4, 8
  %7 = icmp ult i64 %5, 16382
  br i1 %7, label %3, label %8

8:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 48, i32 2)
  tail call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %9

9:                                                ; preds = %9, %8
  %10 = phi i64 [ 0, %8 ], [ %12, %9 ]
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  %11 = or disjoint i64 %10, 6
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  %12 = add nuw nsw i64 %10, 8
  %13 = icmp ult i64 %11, 16382
  br i1 %13, label %9, label %14

14:                                               ; preds = %9
  tail call void @llvm.aie2.release(i32 48, i32 2)
  %15 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %15, 9223372036854775806
  br i1 %.not, label %16, label %1

16:                                               ; preds = %14
  tail call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %17

17:                                               ; preds = %17, %16
  %18 = phi i64 [ 0, %16 ], [ %20, %17 ]
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  %19 = or disjoint i64 %18, 6
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_0, ptr nonnull @of_reduceC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigC_buff_0, ptr nonnull @of_in_visC_cons_buff_1, ptr nonnull @of_reduceC_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  %20 = add nuw nsw i64 %18, 8
  %21 = icmp ult i64 %19, 16382
  br i1 %21, label %17, label %22

22:                                               ; preds = %17
  tail call void @llvm.aie2.release(i32 48, i32 2)
  ret void
}

define void @core_2_4() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %14
  %2 = phi i64 [ 0, %0 ], [ %15, %14 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %6, %3 ]
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  %5 = or disjoint i64 %4, 6
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  %6 = add nuw nsw i64 %4, 8
  %7 = icmp ult i64 %5, 16382
  br i1 %7, label %3, label %8

8:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 48, i32 2)
  tail call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %9

9:                                                ; preds = %9, %8
  %10 = phi i64 [ 0, %8 ], [ %12, %9 ]
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  %11 = or disjoint i64 %10, 6
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  %12 = add nuw nsw i64 %10, 8
  %13 = icmp ult i64 %11, 16382
  br i1 %13, label %9, label %14

14:                                               ; preds = %9
  tail call void @llvm.aie2.release(i32 48, i32 2)
  %15 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %15, 9223372036854775806
  br i1 %.not, label %16, label %1

16:                                               ; preds = %14
  tail call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %17

17:                                               ; preds = %17, %16
  %18 = phi i64 [ 0, %16 ], [ %20, %17 ]
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  %19 = or disjoint i64 %18, 6
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_0, ptr nonnull @of_reduceR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  tail call void @mul_kernel(ptr nonnull @of_multTrigR_buff_0, ptr nonnull @of_in_visR_cons_buff_1, ptr nonnull @of_reduceR_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  %20 = add nuw nsw i64 %18, 8
  %21 = icmp ult i64 %19, 16382
  br i1 %21, label %17, label %22

22:                                               ; preds = %17
  tail call void @llvm.aie2.release(i32 48, i32 2)
  ret void
}

define void @core_3_5() local_unnamed_addr {
  br label %.preheader1

.preheader1:                                      ; preds = %0, %6
  %1 = phi i64 [ 0, %0 ], [ %7, %6 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader1
  %2 = phi i64 [ 0, %.preheader1 ], [ %4, %.preheader ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_1_cons_buff_0, i64 32) ]
  tail call void @sine(ptr nonnull @of_trigFifo_1_cons_buff_0, ptr nonnull @of_multTrigC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_1_cons_buff_0, i64 32) ]
  tail call void @sine(ptr nonnull @of_trigFifo_1_cons_buff_0, ptr nonnull @of_multTrigC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_1_cons_buff_0, i64 32) ]
  tail call void @sine(ptr nonnull @of_trigFifo_1_cons_buff_0, ptr nonnull @of_multTrigC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_1_cons_buff_0, i64 32) ]
  tail call void @sine(ptr nonnull @of_trigFifo_1_cons_buff_0, ptr nonnull @of_multTrigC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_1_cons_buff_0, i64 32) ]
  tail call void @sine(ptr nonnull @of_trigFifo_1_cons_buff_0, ptr nonnull @of_multTrigC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_1_cons_buff_0, i64 32) ]
  tail call void @sine(ptr nonnull @of_trigFifo_1_cons_buff_0, ptr nonnull @of_multTrigC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %3 = or disjoint i64 %2, 3
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_1_cons_buff_0, i64 32) ]
  tail call void @sine(ptr nonnull @of_trigFifo_1_cons_buff_0, ptr nonnull @of_multTrigC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_1_cons_buff_0, i64 32) ]
  tail call void @sine(ptr nonnull @of_trigFifo_1_cons_buff_0, ptr nonnull @of_multTrigC_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %4 = add nuw nsw i64 %2, 4
  %5 = icmp ult i64 %3, 16383
  br i1 %5, label %.preheader, label %6

6:                                                ; preds = %.preheader
  %7 = add nuw nsw i64 %1, 1
  %.not = icmp eq i64 %7, 9223372036854775807
  br i1 %.not, label %8, label %.preheader1

8:                                                ; preds = %6
  ret void
}

define void @core_2_5() local_unnamed_addr {
  br label %.preheader1

.preheader1:                                      ; preds = %0, %6
  %1 = phi i64 [ 0, %0 ], [ %7, %6 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader1
  %2 = phi i64 [ 0, %.preheader1 ], [ %4, %.preheader ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_0_cons_buff_0, i64 32) ]
  tail call void @cosine(ptr nonnull @of_trigFifo_0_cons_buff_0, ptr nonnull @of_multTrigR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_0_cons_buff_0, i64 32) ]
  tail call void @cosine(ptr nonnull @of_trigFifo_0_cons_buff_0, ptr nonnull @of_multTrigR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_0_cons_buff_0, i64 32) ]
  tail call void @cosine(ptr nonnull @of_trigFifo_0_cons_buff_0, ptr nonnull @of_multTrigR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_0_cons_buff_0, i64 32) ]
  tail call void @cosine(ptr nonnull @of_trigFifo_0_cons_buff_0, ptr nonnull @of_multTrigR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_0_cons_buff_0, i64 32) ]
  tail call void @cosine(ptr nonnull @of_trigFifo_0_cons_buff_0, ptr nonnull @of_multTrigR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_0_cons_buff_0, i64 32) ]
  tail call void @cosine(ptr nonnull @of_trigFifo_0_cons_buff_0, ptr nonnull @of_multTrigR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %3 = or disjoint i64 %2, 3
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_0_cons_buff_0, i64 32) ]
  tail call void @cosine(ptr nonnull @of_trigFifo_0_cons_buff_0, ptr nonnull @of_multTrigR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_0_cons_buff_0, i64 32) ]
  tail call void @cosine(ptr nonnull @of_trigFifo_0_cons_buff_0, ptr nonnull @of_multTrigR_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %4 = add nuw nsw i64 %2, 4
  %5 = icmp ult i64 %3, 16383
  br i1 %5, label %.preheader, label %6

6:                                                ; preds = %.preheader
  %7 = add nuw nsw i64 %1, 1
  %.not = icmp eq i64 %7, 9223372036854775807
  br i1 %.not, label %8, label %.preheader1

8:                                                ; preds = %6
  ret void
}

define void @core_1_2() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %12
  %2 = phi i64 [ 0, %0 ], [ %13, %12 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader5

.preheader5:                                      ; preds = %.preheader5, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %.preheader5 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_0, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_0, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_0, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_0, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_0, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_0, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %4 = or disjoint i64 %3, 3
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_0, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_0, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %5 = add nuw nsw i64 %3, 4
  %6 = icmp ult i64 %4, 16383
  br i1 %6, label %.preheader5, label %7

7:                                                ; preds = %.preheader5
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4, %7
  %8 = phi i64 [ 0, %7 ], [ %10, %.preheader4 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_1, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_1, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_1, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_1, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_1, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_1, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %9 = or disjoint i64 %8, 3
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_1, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_1, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %10 = add nuw nsw i64 %8, 4
  %11 = icmp ult i64 %9, 16383
  br i1 %11, label %.preheader4, label %12

12:                                               ; preds = %.preheader4
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %13 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %13, 9223372036854775806
  br i1 %.not, label %14, label %1

14:                                               ; preds = %12
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %14
  %15 = phi i64 [ 0, %14 ], [ %17, %.preheader ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_0, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_0, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_0, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_0, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_0, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_0, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %16 = or disjoint i64 %15, 3
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_0, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @scale_single(ptr nonnull @of_scaleAddBL_cons_buff_0, ptr nonnull @in0_cons_buff_0, ptr nonnull @of_trigFifo_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %17 = add nuw nsw i64 %15, 4
  %18 = icmp ult i64 %16, 16383
  br i1 %18, label %.preheader, label %19

19:                                               ; preds = %.preheader
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_1_4() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %7
  %1 = phi i64 [ 0, %0 ], [ %8, %7 ]
  br label %2

2:                                                ; preds = %2, %.preheader
  %3 = phi i64 [ 0, %.preheader ], [ %5, %2 ]
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_addUV_buff_0, ptr nonnull @of_addW_cons_buff_0, ptr nonnull @of_scaleAddBL_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_cons_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_addUV_buff_0, ptr nonnull @of_addW_cons_buff_1, ptr nonnull @of_scaleAddBL_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_addUV_buff_0, ptr nonnull @of_addW_cons_buff_0, ptr nonnull @of_scaleAddBL_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_cons_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_addUV_buff_0, ptr nonnull @of_addW_cons_buff_1, ptr nonnull @of_scaleAddBL_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %4 = or disjoint i64 %3, 2
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_addUV_buff_0, ptr nonnull @of_addW_cons_buff_0, ptr nonnull @of_scaleAddBL_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_cons_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_addUV_buff_0, ptr nonnull @of_addW_cons_buff_1, ptr nonnull @of_scaleAddBL_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_addUV_buff_0, ptr nonnull @of_addW_cons_buff_0, ptr nonnull @of_scaleAddBL_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_cons_buff_1, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_addUV_buff_0, ptr nonnull @of_addW_cons_buff_1, ptr nonnull @of_scaleAddBL_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %5 = add nuw nsw i64 %3, 4
  %6 = icmp ult i64 %4, 16382
  br i1 %6, label %2, label %7

7:                                                ; preds = %2
  %8 = add nuw nsw i64 %1, 1
  %.not = icmp eq i64 %8, 9223372036854775807
  br i1 %.not, label %9, label %.preheader

9:                                                ; preds = %7
  ret void
}

define void @core_1_5() local_unnamed_addr {
  br label %.preheader1

.preheader1:                                      ; preds = %0, %6
  %1 = phi i64 [ 0, %0 ], [ %7, %6 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader1
  %2 = phi i64 [ 0, %.preheader1 ], [ %4, %.preheader ]
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_addU_buff_0, ptr nonnull @of_addV_cons_buff_0, ptr nonnull @of_addUV_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_addU_buff_0, ptr nonnull @of_addV_cons_buff_0, ptr nonnull @of_addUV_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_addU_buff_0, ptr nonnull @of_addV_cons_buff_0, ptr nonnull @of_addUV_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_addU_buff_0, ptr nonnull @of_addV_cons_buff_0, ptr nonnull @of_addUV_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_addU_buff_0, ptr nonnull @of_addV_cons_buff_0, ptr nonnull @of_addUV_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_addU_buff_0, ptr nonnull @of_addV_cons_buff_0, ptr nonnull @of_addUV_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %3 = or disjoint i64 %2, 3
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_addU_buff_0, ptr nonnull @of_addV_cons_buff_0, ptr nonnull @of_addUV_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_addU_buff_0, ptr nonnull @of_addV_cons_buff_0, ptr nonnull @of_addUV_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %4 = add nuw nsw i64 %2, 4
  %5 = icmp ult i64 %3, 16383
  br i1 %5, label %.preheader, label %6

6:                                                ; preds = %.preheader
  %7 = add nuw nsw i64 %1, 1
  %.not = icmp eq i64 %7, 9223372036854775807
  br i1 %.not, label %8, label %.preheader1

8:                                                ; preds = %6
  ret void
}

define void @core_0_3() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %12
  %2 = phi i64 [ 0, %0 ], [ %13, %12 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %5, %3 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %5 = add nuw nsw i64 %4, 1
  %6 = icmp ult i64 %4, 511
  br i1 %6, label %3, label %7

7:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 48, i32 2)
  tail call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %8

8:                                                ; preds = %7, %8
  %9 = phi i64 [ 0, %7 ], [ %10, %8 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %10 = add nuw nsw i64 %9, 1
  %11 = icmp ult i64 %9, 511
  br i1 %11, label %8, label %12

12:                                               ; preds = %8
  tail call void @llvm.aie2.release(i32 48, i32 2)
  %13 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %13, 9223372036854775806
  br i1 %.not, label %14, label %1

14:                                               ; preds = %12
  tail call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %15

15:                                               ; preds = %14, %15
  %16 = phi i64 [ 0, %14 ], [ %17, %15 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_0, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_w_cons_buff_1, ptr nonnull @of_in_n_cons_buff_0, ptr nonnull @of_addW_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %17 = add nuw nsw i64 %16, 1
  %18 = icmp ult i64 %16, 511
  br i1 %18, label %15, label %19

19:                                               ; preds = %15
  tail call void @llvm.aie2.release(i32 48, i32 2)
  ret void
}

define void @core_0_4() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %12
  %2 = phi i64 [ 0, %0 ], [ %13, %12 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %5, %3 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %5 = add nuw nsw i64 %4, 1
  %6 = icmp ult i64 %4, 511
  br i1 %6, label %3, label %7

7:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 48, i32 2)
  tail call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %8

8:                                                ; preds = %7, %8
  %9 = phi i64 [ 0, %7 ], [ %10, %8 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %10 = add nuw nsw i64 %9, 1
  %11 = icmp ult i64 %9, 511
  br i1 %11, label %8, label %12

12:                                               ; preds = %8
  tail call void @llvm.aie2.release(i32 48, i32 2)
  %13 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %13, 9223372036854775806
  br i1 %.not, label %14, label %1

14:                                               ; preds = %12
  tail call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %15

15:                                               ; preds = %14, %15
  %16 = phi i64 [ 0, %14 ], [ %17, %15 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_0, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_v_cons_buff_1, ptr nonnull @of_in_m_cons_buff_0, ptr nonnull @of_addV_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %17 = add nuw nsw i64 %16, 1
  %18 = icmp ult i64 %16, 511
  br i1 %18, label %15, label %19

19:                                               ; preds = %15
  tail call void @llvm.aie2.release(i32 48, i32 2)
  ret void
}

define void @core_0_5() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %12
  %2 = phi i64 [ 0, %0 ], [ %13, %12 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %5, %3 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %5 = add nuw nsw i64 %4, 1
  %6 = icmp ult i64 %4, 511
  br i1 %6, label %3, label %7

7:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 48, i32 2)
  tail call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %8

8:                                                ; preds = %7, %8
  %9 = phi i64 [ 0, %7 ], [ %10, %8 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %10 = add nuw nsw i64 %9, 1
  %11 = icmp ult i64 %9, 511
  br i1 %11, label %8, label %12

12:                                               ; preds = %8
  tail call void @llvm.aie2.release(i32 48, i32 2)
  %13 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %13, 9223372036854775806
  br i1 %.not, label %14, label %1

14:                                               ; preds = %12
  tail call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %15

15:                                               ; preds = %14, %15
  %16 = phi i64 [ 0, %14 ], [ %17, %15 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_0, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  tail call void @scale(ptr nonnull @of_in_u_cons_buff_1, ptr nonnull @of_in_l_cons_buff_0, ptr nonnull @of_addU_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %17 = add nuw nsw i64 %16, 1
  %18 = icmp ult i64 %16, 511
  br i1 %18, label %15, label %19

19:                                               ; preds = %15
  tail call void @llvm.aie2.release(i32 48, i32 2)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nounwind }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
