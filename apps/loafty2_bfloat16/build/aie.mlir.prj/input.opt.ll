; ModuleID = '/notebooks/my_mlir-aie/apps/loafty0_bfloat16/build/aie.mlir.prj/input.llpeanohack.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

@in0_5_cons_buff_1 = external global [96 x bfloat]
@in0_5_cons_buff_0 = external global [96 x bfloat]
@in0_4_cons_buff_1 = external global [96 x bfloat]
@in0_4_cons_buff_0 = external global [96 x bfloat]
@in0_3_cons_buff_1 = external global [96 x bfloat]
@in0_3_cons_buff_0 = external global [96 x bfloat]
@in0_2_cons_buff_1 = external global [96 x bfloat]
@in0_2_cons_buff_0 = external global [96 x bfloat]
@in0_1_cons_buff_1 = external global [96 x bfloat]
@in0_1_cons_buff_0 = external global [96 x bfloat]
@in0_0_cons_buff_1 = external global [96 x bfloat]
@in0_0_cons_buff_0 = external global [96 x bfloat]
@of_in_main00_cons_buff_0 = external global [4610 x bfloat]
@of_in_main01_cons_buff_0 = external global [4610 x bfloat]
@of_in_main02_cons_buff_0 = external global [4610 x bfloat]
@of_in_main03_cons_buff_0 = external global [4610 x bfloat]
@of_in_main04_cons_buff_0 = external global [4610 x bfloat]
@of_in_main10_cons_buff_0 = external global [4610 x bfloat]
@of_in_main11_cons_buff_0 = external global [4610 x bfloat]
@of_in_main12_cons_buff_0 = external global [4610 x bfloat]
@of_in_main13_cons_buff_0 = external global [4610 x bfloat]
@of_in_main14_cons_buff_0 = external global [4610 x bfloat]
@of_add_u0_buff_0 = external global [4608 x bfloat]
@of_add_u1_buff_0 = external global [4608 x bfloat]
@of_add_v0_buff_0 = external global [4608 x bfloat]
@of_add_v0_cons_buff_0 = external global [4608 x bfloat]
@of_add_v1_buff_0 = external global [4608 x bfloat]
@of_add_v1_cons_buff_0 = external global [4608 x bfloat]
@of_add_w0_buff_0 = external global [4608 x bfloat]
@of_add_w0_cons_buff_0 = external global [4608 x bfloat]
@of_add_w1_buff_0 = external global [4608 x bfloat]
@of_add_w1_cons_buff_0 = external global [4608 x bfloat]
@of_add_uv0_buff_0 = external global [4608 x bfloat]
@of_add_uv1_buff_0 = external global [4608 x bfloat]
@of_add2main0_buff_0 = external global [4608 x bfloat]
@of_add2main0_1_cons_buff_0 = external global [4608 x bfloat]
@of_add2main0_0_cons_buff_0 = external global [4608 x bfloat]
@of_add2main1_buff_0 = external global [4608 x bfloat]
@of_add2main1_1_cons_buff_0 = external global [4608 x bfloat]
@of_add2main1_0_cons_buff_0 = external global [4608 x bfloat]
@of_join_real0_buff_0 = external global [2304 x bfloat]
@of_join_real1_buff_0 = external global [2304 x bfloat]
@of_join_imag0_buff_0 = external global [2304 x bfloat]
@of_join_imag1_buff_0 = external global [2304 x bfloat]
@of_real2sub_cons_buff_0 = external global [4608 x bfloat]
@of_imag2sub_cons_buff_0 = external global [4608 x bfloat]
@of_sub2mean_buff_1 = external global [4608 x bfloat]
@of_sub2mean_buff_0 = external global [4608 x bfloat]
@out_buff_1 = external global [32 x bfloat]
@out_buff_0 = external global [32 x bfloat]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @baseline_scale(ptr, ptr, ptr, i32, i32, i32, i32) local_unnamed_addr

declare void @add_kernel(ptr, ptr, ptr, i32) local_unnamed_addr

declare void @main_kernel(ptr, ptr, ptr, i32, i32) local_unnamed_addr

declare void @sub_kernel(ptr, ptr, ptr, i32) local_unnamed_addr

declare void @mean(ptr, ptr, i32, i32) local_unnamed_addr

define void @core_2_2() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %6
  %1 = phi i64 [ 0, %0 ], [ %7, %6 ]
  br label %2

2:                                                ; preds = %.preheader, %2
  %3 = phi i64 [ 0, %.preheader ], [ %4, %2 ]
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_0, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_0, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_0, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_0, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_0, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_0, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_0, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_0, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_0, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_0, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_0, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_0, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_0, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_0, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_0, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_0, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_1, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 2)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_1, i32 4608, i32 3)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 4)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_1, i32 4608, i32 5)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 6)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_1, i32 4608, i32 7)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 8)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_1, i32 4608, i32 9)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 10)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_1, i32 4608, i32 11)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 12)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_1, i32 4608, i32 13)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 14)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_1, i32 4608, i32 15)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 16)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_1, i32 4608, i32 17)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 18)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_1, i32 4608, i32 19)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 20)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_1, i32 4608, i32 21)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 22)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_1, i32 4608, i32 23)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 24)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_1, i32 4608, i32 25)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 26)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_1, i32 4608, i32 27)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 28)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_1, i32 4608, i32 29)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_0, ptr nonnull @out_buff_1, i32 4608, i32 30)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_sub2mean_buff_1, ptr nonnull @out_buff_1, i32 4608, i32 31)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 49, i32 1)
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

define void @core_1_2() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %7
  %1 = phi i64 [ 0, %0 ], [ %8, %7 ]
  br label %2

2:                                                ; preds = %2, %.preheader
  %3 = phi i64 [ 0, %.preheader ], [ %5, %2 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_imag2sub_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_real2sub_cons_buff_0, i64 32) ]
  tail call void @sub_kernel(ptr nonnull @of_real2sub_cons_buff_0, ptr nonnull @of_imag2sub_cons_buff_0, ptr nonnull @of_sub2mean_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_imag2sub_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_real2sub_cons_buff_0, i64 32) ]
  tail call void @sub_kernel(ptr nonnull @of_real2sub_cons_buff_0, ptr nonnull @of_imag2sub_cons_buff_0, ptr nonnull @of_sub2mean_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_imag2sub_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_real2sub_cons_buff_0, i64 32) ]
  tail call void @sub_kernel(ptr nonnull @of_real2sub_cons_buff_0, ptr nonnull @of_imag2sub_cons_buff_0, ptr nonnull @of_sub2mean_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_imag2sub_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_real2sub_cons_buff_0, i64 32) ]
  tail call void @sub_kernel(ptr nonnull @of_real2sub_cons_buff_0, ptr nonnull @of_imag2sub_cons_buff_0, ptr nonnull @of_sub2mean_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_imag2sub_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_real2sub_cons_buff_0, i64 32) ]
  tail call void @sub_kernel(ptr nonnull @of_real2sub_cons_buff_0, ptr nonnull @of_imag2sub_cons_buff_0, ptr nonnull @of_sub2mean_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_imag2sub_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_real2sub_cons_buff_0, i64 32) ]
  tail call void @sub_kernel(ptr nonnull @of_real2sub_cons_buff_0, ptr nonnull @of_imag2sub_cons_buff_0, ptr nonnull @of_sub2mean_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %4 = or disjoint i64 %3, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_imag2sub_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_real2sub_cons_buff_0, i64 32) ]
  tail call void @sub_kernel(ptr nonnull @of_real2sub_cons_buff_0, ptr nonnull @of_imag2sub_cons_buff_0, ptr nonnull @of_sub2mean_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_imag2sub_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_real2sub_cons_buff_0, i64 32) ]
  tail call void @sub_kernel(ptr nonnull @of_real2sub_cons_buff_0, ptr nonnull @of_imag2sub_cons_buff_0, ptr nonnull @of_sub2mean_buff_1, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
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

define void @core_3_2() local_unnamed_addr {
.new:
  br label %0

0:                                                ; preds = %12, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %12 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %4, %1 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_1_cons_buff_0, ptr nonnull @of_in_main11_cons_buff_0, ptr nonnull @of_join_imag1_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_1_cons_buff_0, ptr nonnull @of_in_main11_cons_buff_0, ptr nonnull @of_join_imag1_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_1_cons_buff_0, ptr nonnull @of_in_main11_cons_buff_0, ptr nonnull @of_join_imag1_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %3 = or disjoint i64 %2, 3
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_1_cons_buff_0, ptr nonnull @of_in_main11_cons_buff_0, ptr nonnull @of_join_imag1_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %4 = add nuw nsw i64 %2, 4
  %5 = icmp ult i64 %3, 16383
  br i1 %5, label %1, label %6

6:                                                ; preds = %1
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %7

7:                                                ; preds = %7, %6
  %8 = phi i64 [ 0, %6 ], [ %10, %7 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_1_cons_buff_0, ptr nonnull @of_in_main11_cons_buff_0, ptr nonnull @of_join_imag1_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_1_cons_buff_0, ptr nonnull @of_in_main11_cons_buff_0, ptr nonnull @of_join_imag1_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_1_cons_buff_0, ptr nonnull @of_in_main11_cons_buff_0, ptr nonnull @of_join_imag1_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %9 = or disjoint i64 %8, 3
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_1_cons_buff_0, ptr nonnull @of_in_main11_cons_buff_0, ptr nonnull @of_join_imag1_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %10 = add nuw nsw i64 %8, 4
  %11 = icmp ult i64 %9, 16383
  br i1 %11, label %7, label %12

12:                                               ; preds = %7
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter.next.1 = add nuw nsw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, 9223372036854775806
  br i1 %niter.ncmp.1, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %12
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %13

13:                                               ; preds = %13, %.epil.preheader
  %14 = phi i64 [ 0, %.epil.preheader ], [ %16, %13 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_1_cons_buff_0, ptr nonnull @of_in_main11_cons_buff_0, ptr nonnull @of_join_imag1_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_1_cons_buff_0, ptr nonnull @of_in_main11_cons_buff_0, ptr nonnull @of_join_imag1_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_1_cons_buff_0, ptr nonnull @of_in_main11_cons_buff_0, ptr nonnull @of_join_imag1_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %15 = or disjoint i64 %14, 3
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_1_cons_buff_0, ptr nonnull @of_in_main11_cons_buff_0, ptr nonnull @of_join_imag1_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %16 = add nuw nsw i64 %14, 4
  %17 = icmp ult i64 %15, 16383
  br i1 %17, label %13, label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %13
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_2_3() local_unnamed_addr {
.new:
  br label %0

0:                                                ; preds = %12, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %12 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %4, %1 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_0_cons_buff_0, ptr nonnull @of_in_main10_cons_buff_0, ptr nonnull @of_join_real1_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_0_cons_buff_0, ptr nonnull @of_in_main10_cons_buff_0, ptr nonnull @of_join_real1_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_0_cons_buff_0, ptr nonnull @of_in_main10_cons_buff_0, ptr nonnull @of_join_real1_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %3 = or disjoint i64 %2, 3
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_0_cons_buff_0, ptr nonnull @of_in_main10_cons_buff_0, ptr nonnull @of_join_real1_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %4 = add nuw nsw i64 %2, 4
  %5 = icmp ult i64 %3, 16383
  br i1 %5, label %1, label %6

6:                                                ; preds = %1
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %7

7:                                                ; preds = %7, %6
  %8 = phi i64 [ 0, %6 ], [ %10, %7 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_0_cons_buff_0, ptr nonnull @of_in_main10_cons_buff_0, ptr nonnull @of_join_real1_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_0_cons_buff_0, ptr nonnull @of_in_main10_cons_buff_0, ptr nonnull @of_join_real1_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_0_cons_buff_0, ptr nonnull @of_in_main10_cons_buff_0, ptr nonnull @of_join_real1_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %9 = or disjoint i64 %8, 3
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_0_cons_buff_0, ptr nonnull @of_in_main10_cons_buff_0, ptr nonnull @of_join_real1_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %10 = add nuw nsw i64 %8, 4
  %11 = icmp ult i64 %9, 16383
  br i1 %11, label %7, label %12

12:                                               ; preds = %7
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter.next.1 = add nuw nsw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, 9223372036854775806
  br i1 %niter.ncmp.1, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %12
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %13

13:                                               ; preds = %13, %.epil.preheader
  %14 = phi i64 [ 0, %.epil.preheader ], [ %16, %13 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_0_cons_buff_0, ptr nonnull @of_in_main10_cons_buff_0, ptr nonnull @of_join_real1_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_0_cons_buff_0, ptr nonnull @of_in_main10_cons_buff_0, ptr nonnull @of_join_real1_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_0_cons_buff_0, ptr nonnull @of_in_main10_cons_buff_0, ptr nonnull @of_join_real1_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %15 = or disjoint i64 %14, 3
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main1_0_cons_buff_0, ptr nonnull @of_in_main10_cons_buff_0, ptr nonnull @of_join_real1_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %16 = add nuw nsw i64 %14, 4
  %17 = icmp ult i64 %15, 16383
  br i1 %17, label %13, label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %13
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_2_4() local_unnamed_addr {
.new:
  br label %.preheader

.preheader:                                       ; preds = %9, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %9 ]
  br label %0

0:                                                ; preds = %0, %.preheader
  %1 = phi i64 [ 0, %.preheader ], [ %3, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, ptr nonnull @of_add2main1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, ptr nonnull @of_add2main1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, ptr nonnull @of_add2main1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  %2 = or disjoint i64 %1, 3
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, ptr nonnull @of_add2main1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  %3 = add nuw nsw i64 %1, 4
  %4 = icmp ult i64 %2, 16383
  br i1 %4, label %0, label %.preheader.1

.preheader.1:                                     ; preds = %0, %.preheader.1
  %5 = phi i64 [ %7, %.preheader.1 ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, ptr nonnull @of_add2main1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, ptr nonnull @of_add2main1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, ptr nonnull @of_add2main1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  %6 = or disjoint i64 %5, 3
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, ptr nonnull @of_add2main1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  %7 = add nuw nsw i64 %5, 4
  %8 = icmp ult i64 %6, 16383
  br i1 %8, label %.preheader.1, label %9

9:                                                ; preds = %.preheader.1
  %niter.next.1 = add nuw nsw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, 9223372036854775806
  br i1 %niter.ncmp.1, label %.preheader.epil, label %.preheader

.preheader.epil:                                  ; preds = %9, %.preheader.epil
  %10 = phi i64 [ %12, %.preheader.epil ], [ 0, %9 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, ptr nonnull @of_add2main1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, ptr nonnull @of_add2main1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, ptr nonnull @of_add2main1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  %11 = or disjoint i64 %10, 3
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 37, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, ptr nonnull @of_add2main1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 36, i32 1)
  %12 = add nuw nsw i64 %10, 4
  %13 = icmp ult i64 %11, 16383
  br i1 %13, label %.preheader.epil, label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.preheader.epil
  ret void
}

define void @core_2_5() local_unnamed_addr {
.new:
  br label %.preheader

.preheader:                                       ; preds = %9, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %9 ]
  br label %0

0:                                                ; preds = %0, %.preheader
  %1 = phi i64 [ 0, %.preheader ], [ %3, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u1_buff_0, ptr nonnull @of_add_v1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u1_buff_0, ptr nonnull @of_add_v1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u1_buff_0, ptr nonnull @of_add_v1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %2 = or disjoint i64 %1, 3
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u1_buff_0, ptr nonnull @of_add_v1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %3 = add nuw nsw i64 %1, 4
  %4 = icmp ult i64 %2, 16383
  br i1 %4, label %0, label %.preheader.1

.preheader.1:                                     ; preds = %0, %.preheader.1
  %5 = phi i64 [ %7, %.preheader.1 ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u1_buff_0, ptr nonnull @of_add_v1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u1_buff_0, ptr nonnull @of_add_v1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u1_buff_0, ptr nonnull @of_add_v1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %6 = or disjoint i64 %5, 3
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u1_buff_0, ptr nonnull @of_add_v1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %7 = add nuw nsw i64 %5, 4
  %8 = icmp ult i64 %6, 16383
  br i1 %8, label %.preheader.1, label %9

9:                                                ; preds = %.preheader.1
  %niter.next.1 = add nuw nsw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, 9223372036854775806
  br i1 %niter.ncmp.1, label %.preheader.epil, label %.preheader

.preheader.epil:                                  ; preds = %9, %.preheader.epil
  %10 = phi i64 [ %12, %.preheader.epil ], [ 0, %9 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u1_buff_0, ptr nonnull @of_add_v1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u1_buff_0, ptr nonnull @of_add_v1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u1_buff_0, ptr nonnull @of_add_v1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %11 = or disjoint i64 %10, 3
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u1_buff_0, ptr nonnull @of_add_v1_cons_buff_0, ptr nonnull @of_add_uv1_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %12 = add nuw nsw i64 %10, 4
  %13 = icmp ult i64 %11, 16383
  br i1 %13, label %.preheader.epil, label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.preheader.epil
  ret void
}

define void @core_3_3() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %7
  %2 = phi i64 [ 0, %0 ], [ %8, %7 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %5, %3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 0, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 1, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 2, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 3, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 4, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 5, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 6, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 7, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 8, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 9, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 10, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 11, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 12, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 13, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 14, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 15, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 16, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 17, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 18, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 19, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 20, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 21, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 22, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 23, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 24, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 25, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 26, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 27, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 28, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 29, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 30, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 31, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 0, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 1, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 2, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 3, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 4, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 5, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 6, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 7, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 8, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 9, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 10, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 11, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 12, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 13, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 14, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 15, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 16, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 17, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 18, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 19, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 20, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 21, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 22, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 23, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 24, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 25, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 26, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 27, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 28, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 29, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 30, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main14_cons_buff_0, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_add_w1_buff_0, i32 4608, i32 32, i32 31, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %5 = add nuw nsw i64 %4, 2
  %6 = icmp ult i64 %4, 510
  br i1 %6, label %3, label %7

7:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %8 = add nuw nsw i64 %2, 1
  %.not = icmp eq i64 %8, 9223372036854775807
  br i1 %.not, label %9, label %1

9:                                                ; preds = %7
  ret void
}

define void @core_3_4() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %7
  %2 = phi i64 [ 0, %0 ], [ %8, %7 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %5, %3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 1, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 2, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 3, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 5, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 6, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 7, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 8, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 9, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 10, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 11, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 12, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 13, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 14, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 15, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 21, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 22, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 23, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 24, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 25, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 26, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 27, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 28, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 29, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 30, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 31, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 1, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 2, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 3, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 5, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 6, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 7, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 8, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 9, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 10, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 11, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 12, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 13, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 14, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 15, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 21, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 22, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 23, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 24, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 25, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 26, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 27, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 28, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 29, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 30, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main13_cons_buff_0, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_add_v1_buff_0, i32 4608, i32 32, i32 31, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %5 = add nuw nsw i64 %4, 2
  %6 = icmp ult i64 %4, 510
  br i1 %6, label %3, label %7

7:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %8 = add nuw nsw i64 %2, 1
  %.not = icmp eq i64 %8, 9223372036854775807
  br i1 %.not, label %9, label %1

9:                                                ; preds = %7
  ret void
}

define void @core_3_5() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %7
  %2 = phi i64 [ 0, %0 ], [ %8, %7 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %5, %3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 0, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 1, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 2, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 3, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 4, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 5, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 6, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 7, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 8, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 9, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 10, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 11, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 12, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 13, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 14, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 15, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 16, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 17, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 18, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 19, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 20, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 21, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 22, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 23, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 24, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 25, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 26, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 27, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 28, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 29, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 30, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 31, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 0, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 1, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 2, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 3, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 4, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 5, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 6, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 7, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 8, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 9, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 10, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 11, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 12, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 13, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 14, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 15, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 16, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 17, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 18, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 19, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 20, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 21, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 22, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 23, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 24, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 25, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 26, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 27, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 28, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 29, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 30, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main12_cons_buff_0, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_add_u1_buff_0, i32 4608, i32 32, i32 31, i32 0)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %5 = add nuw nsw i64 %4, 2
  %6 = icmp ult i64 %4, 510
  br i1 %6, label %3, label %7

7:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %8 = add nuw nsw i64 %2, 1
  %.not = icmp eq i64 %8, 9223372036854775807
  br i1 %.not, label %9, label %1

9:                                                ; preds = %7
  ret void
}

define void @core_0_2() local_unnamed_addr {
.new:
  br label %0

0:                                                ; preds = %12, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %12 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %4, %1 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main01_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_1_cons_buff_0, ptr nonnull @of_in_main01_cons_buff_0, ptr nonnull @of_join_imag0_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main01_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_1_cons_buff_0, ptr nonnull @of_in_main01_cons_buff_0, ptr nonnull @of_join_imag0_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main01_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_1_cons_buff_0, ptr nonnull @of_in_main01_cons_buff_0, ptr nonnull @of_join_imag0_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %3 = or disjoint i64 %2, 3
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main01_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_1_cons_buff_0, ptr nonnull @of_in_main01_cons_buff_0, ptr nonnull @of_join_imag0_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %4 = add nuw nsw i64 %2, 4
  %5 = icmp ult i64 %3, 16383
  br i1 %5, label %1, label %6

6:                                                ; preds = %1
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %7

7:                                                ; preds = %7, %6
  %8 = phi i64 [ 0, %6 ], [ %10, %7 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main01_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_1_cons_buff_0, ptr nonnull @of_in_main01_cons_buff_0, ptr nonnull @of_join_imag0_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main01_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_1_cons_buff_0, ptr nonnull @of_in_main01_cons_buff_0, ptr nonnull @of_join_imag0_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main01_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_1_cons_buff_0, ptr nonnull @of_in_main01_cons_buff_0, ptr nonnull @of_join_imag0_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %9 = or disjoint i64 %8, 3
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main01_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_1_cons_buff_0, ptr nonnull @of_in_main01_cons_buff_0, ptr nonnull @of_join_imag0_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %10 = add nuw nsw i64 %8, 4
  %11 = icmp ult i64 %9, 16383
  br i1 %11, label %7, label %12

12:                                               ; preds = %7
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter.next.1 = add nuw nsw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, 9223372036854775806
  br i1 %niter.ncmp.1, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %12
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %13

13:                                               ; preds = %13, %.epil.preheader
  %14 = phi i64 [ 0, %.epil.preheader ], [ %16, %13 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main01_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_1_cons_buff_0, ptr nonnull @of_in_main01_cons_buff_0, ptr nonnull @of_join_imag0_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main01_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_1_cons_buff_0, ptr nonnull @of_in_main01_cons_buff_0, ptr nonnull @of_join_imag0_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main01_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_1_cons_buff_0, ptr nonnull @of_in_main01_cons_buff_0, ptr nonnull @of_join_imag0_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %15 = or disjoint i64 %14, 3
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main01_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_1_cons_buff_0, ptr nonnull @of_in_main01_cons_buff_0, ptr nonnull @of_join_imag0_buff_0, i32 4608, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %16 = add nuw nsw i64 %14, 4
  %17 = icmp ult i64 %15, 16383
  br i1 %17, label %13, label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %13
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_1_3() local_unnamed_addr {
.new:
  br label %0

0:                                                ; preds = %12, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %12 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %4, %1 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main00_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_0_cons_buff_0, ptr nonnull @of_in_main00_cons_buff_0, ptr nonnull @of_join_real0_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main00_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_0_cons_buff_0, ptr nonnull @of_in_main00_cons_buff_0, ptr nonnull @of_join_real0_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main00_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_0_cons_buff_0, ptr nonnull @of_in_main00_cons_buff_0, ptr nonnull @of_join_real0_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %3 = or disjoint i64 %2, 3
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main00_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_0_cons_buff_0, ptr nonnull @of_in_main00_cons_buff_0, ptr nonnull @of_join_real0_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %4 = add nuw nsw i64 %2, 4
  %5 = icmp ult i64 %3, 16383
  br i1 %5, label %1, label %6

6:                                                ; preds = %1
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %7

7:                                                ; preds = %7, %6
  %8 = phi i64 [ 0, %6 ], [ %10, %7 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main00_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_0_cons_buff_0, ptr nonnull @of_in_main00_cons_buff_0, ptr nonnull @of_join_real0_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main00_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_0_cons_buff_0, ptr nonnull @of_in_main00_cons_buff_0, ptr nonnull @of_join_real0_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main00_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_0_cons_buff_0, ptr nonnull @of_in_main00_cons_buff_0, ptr nonnull @of_join_real0_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %9 = or disjoint i64 %8, 3
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main00_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_0_cons_buff_0, ptr nonnull @of_in_main00_cons_buff_0, ptr nonnull @of_join_real0_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %10 = add nuw nsw i64 %8, 4
  %11 = icmp ult i64 %9, 16383
  br i1 %11, label %7, label %12

12:                                               ; preds = %7
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %niter.next.1 = add nuw nsw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, 9223372036854775806
  br i1 %niter.ncmp.1, label %.epil.preheader, label %0

.epil.preheader:                                  ; preds = %12
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %13

13:                                               ; preds = %13, %.epil.preheader
  %14 = phi i64 [ 0, %.epil.preheader ], [ %16, %13 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main00_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_0_cons_buff_0, ptr nonnull @of_in_main00_cons_buff_0, ptr nonnull @of_join_real0_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main00_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_0_cons_buff_0, ptr nonnull @of_in_main00_cons_buff_0, ptr nonnull @of_join_real0_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main00_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_0_cons_buff_0, ptr nonnull @of_in_main00_cons_buff_0, ptr nonnull @of_join_real0_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %15 = or disjoint i64 %14, 3
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main00_cons_buff_0, i64 32) ]
  tail call void @main_kernel(ptr nonnull @of_add2main0_0_cons_buff_0, ptr nonnull @of_in_main00_cons_buff_0, ptr nonnull @of_join_real0_buff_0, i32 4608, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %16 = add nuw nsw i64 %14, 4
  %17 = icmp ult i64 %15, 16383
  br i1 %17, label %13, label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %13
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_1_4() local_unnamed_addr {
.new:
  br label %.preheader

.preheader:                                       ; preds = %9, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %9 ]
  br label %0

0:                                                ; preds = %0, %.preheader
  %1 = phi i64 [ 0, %.preheader ], [ %3, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, ptr nonnull @of_add2main0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, ptr nonnull @of_add2main0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, ptr nonnull @of_add2main0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  %2 = or disjoint i64 %1, 3
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, ptr nonnull @of_add2main0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  %3 = add nuw nsw i64 %1, 4
  %4 = icmp ult i64 %2, 16383
  br i1 %4, label %0, label %.preheader.1

.preheader.1:                                     ; preds = %0, %.preheader.1
  %5 = phi i64 [ %7, %.preheader.1 ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, ptr nonnull @of_add2main0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, ptr nonnull @of_add2main0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, ptr nonnull @of_add2main0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  %6 = or disjoint i64 %5, 3
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, ptr nonnull @of_add2main0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  %7 = add nuw nsw i64 %5, 4
  %8 = icmp ult i64 %6, 16383
  br i1 %8, label %.preheader.1, label %9

9:                                                ; preds = %.preheader.1
  %niter.next.1 = add nuw nsw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, 9223372036854775806
  br i1 %niter.ncmp.1, label %.preheader.epil, label %.preheader

.preheader.epil:                                  ; preds = %9, %.preheader.epil
  %10 = phi i64 [ %12, %.preheader.epil ], [ 0, %9 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, ptr nonnull @of_add2main0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, ptr nonnull @of_add2main0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, ptr nonnull @of_add2main0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  %11 = or disjoint i64 %10, 3
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 35, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_cons_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_w0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, ptr nonnull @of_add2main0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 34, i32 1)
  %12 = add nuw nsw i64 %10, 4
  %13 = icmp ult i64 %11, 16383
  br i1 %13, label %.preheader.epil, label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.preheader.epil
  ret void
}

define void @core_1_5() local_unnamed_addr {
.new:
  br label %.preheader

.preheader:                                       ; preds = %9, %.new
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %9 ]
  br label %0

0:                                                ; preds = %0, %.preheader
  %1 = phi i64 [ 0, %.preheader ], [ %3, %0 ]
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u0_buff_0, ptr nonnull @of_add_v0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u0_buff_0, ptr nonnull @of_add_v0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u0_buff_0, ptr nonnull @of_add_v0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %2 = or disjoint i64 %1, 3
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u0_buff_0, ptr nonnull @of_add_v0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %3 = add nuw nsw i64 %1, 4
  %4 = icmp ult i64 %2, 16383
  br i1 %4, label %0, label %.preheader.1

.preheader.1:                                     ; preds = %0, %.preheader.1
  %5 = phi i64 [ %7, %.preheader.1 ], [ 0, %0 ]
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u0_buff_0, ptr nonnull @of_add_v0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u0_buff_0, ptr nonnull @of_add_v0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u0_buff_0, ptr nonnull @of_add_v0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %6 = or disjoint i64 %5, 3
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u0_buff_0, ptr nonnull @of_add_v0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %7 = add nuw nsw i64 %5, 4
  %8 = icmp ult i64 %6, 16383
  br i1 %8, label %.preheader.1, label %9

9:                                                ; preds = %.preheader.1
  %niter.next.1 = add nuw nsw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, 9223372036854775806
  br i1 %niter.ncmp.1, label %.preheader.epil, label %.preheader

.preheader.epil:                                  ; preds = %9, %.preheader.epil
  %10 = phi i64 [ %12, %.preheader.epil ], [ 0, %9 ]
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u0_buff_0, ptr nonnull @of_add_v0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u0_buff_0, ptr nonnull @of_add_v0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u0_buff_0, ptr nonnull @of_add_v0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %11 = or disjoint i64 %10, 3
  tail call void @llvm.aie2.acquire(i32 21, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  tail call void @add_kernel(ptr nonnull @of_add_u0_buff_0, ptr nonnull @of_add_v0_cons_buff_0, ptr nonnull @of_add_uv0_buff_0, i32 4608)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %12 = add nuw nsw i64 %10, 4
  %13 = icmp ult i64 %11, 16383
  br i1 %13, label %.preheader.epil, label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.preheader.epil
  ret void
}

define void @core_0_3() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %7
  %2 = phi i64 [ 0, %0 ], [ %8, %7 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %5, %3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 0, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 1, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 2, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 3, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 4, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 5, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 6, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 7, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 8, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 9, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 10, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 11, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 12, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 13, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 14, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 15, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 16, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 17, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 18, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 19, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 20, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 21, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 22, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 23, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 24, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 25, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 26, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 27, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 28, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 29, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 30, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 31, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 0, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 1, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 2, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 3, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 4, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 5, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 6, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 7, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 8, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 9, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 10, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 11, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 12, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 13, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 14, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 15, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 16, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 17, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 18, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 19, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 20, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 21, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 22, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 23, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 24, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 25, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 26, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 27, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 28, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 29, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 30, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main04_cons_buff_0, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_add_w0_buff_0, i32 4608, i32 32, i32 31, i32 2)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %5 = add nuw nsw i64 %4, 2
  %6 = icmp ult i64 %4, 510
  br i1 %6, label %3, label %7

7:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %8 = add nuw nsw i64 %2, 1
  %.not = icmp eq i64 %8, 9223372036854775807
  br i1 %.not, label %9, label %1

9:                                                ; preds = %7
  ret void
}

define void @core_0_4() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %7
  %2 = phi i64 [ 0, %0 ], [ %8, %7 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %5, %3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 1, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 2, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 3, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 5, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 6, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 7, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 8, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 9, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 10, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 11, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 12, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 13, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 14, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 15, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 21, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 22, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 23, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 24, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 25, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 26, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 27, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 28, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 29, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 30, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 31, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 0, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 1, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 2, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 3, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 5, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 6, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 7, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 8, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 9, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 10, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 11, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 12, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 13, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 14, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 15, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 18, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 20, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 21, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 22, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 23, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 24, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 25, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 26, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 27, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 28, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 29, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 30, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main03_cons_buff_0, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_add_v0_buff_0, i32 4608, i32 32, i32 31, i32 1)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %5 = add nuw nsw i64 %4, 2
  %6 = icmp ult i64 %4, 510
  br i1 %6, label %3, label %7

7:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %8 = add nuw nsw i64 %2, 1
  %.not = icmp eq i64 %8, 9223372036854775807
  br i1 %.not, label %9, label %1

9:                                                ; preds = %7
  ret void
}

define void @core_0_5() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %7
  %2 = phi i64 [ 0, %0 ], [ %8, %7 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %5, %3 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 0, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 1, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 2, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 3, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 4, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 5, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 6, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 7, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 8, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 9, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 10, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 11, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 12, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 13, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 14, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 15, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 16, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 17, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 18, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 19, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 20, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 21, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 22, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 23, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 24, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 25, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 26, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 27, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 28, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 29, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 30, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 31, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 0, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 1, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 2, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 3, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 4, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 5, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 6, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 7, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 8, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 9, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 10, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 11, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 12, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 13, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 14, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 15, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 16, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 17, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 18, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 19, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 20, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 21, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 22, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 23, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 24, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 25, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 26, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 27, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 28, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 29, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 30, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @baseline_scale(ptr nonnull @of_in_main02_cons_buff_0, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_add_u0_buff_0, i32 4608, i32 32, i32 31, i32 0)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %5 = add nuw nsw i64 %4, 2
  %6 = icmp ult i64 %4, 510
  br i1 %6, label %3, label %7

7:                                                ; preds = %3
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %8 = add nuw nsw i64 %2, 1
  %.not = icmp eq i64 %8, 9223372036854775807
  br i1 %.not, label %9, label %1

9:                                                ; preds = %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nounwind }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
