; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
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
@in1_cons_buff_1 = external global [23050 x bfloat]
@in1_cons_buff_0 = external global [23050 x bfloat]
@in2_cons_buff_1 = external global [23050 x bfloat]
@in2_cons_buff_0 = external global [23050 x bfloat]
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
@of_real2sub_buff_0 = external global [4608 x bfloat]
@of_real2sub_cons_buff_0 = external global [4608 x bfloat]
@of_imag2sub_buff_0 = external global [4608 x bfloat]
@of_imag2sub_cons_buff_0 = external global [4608 x bfloat]
@of_sub2mean_buff_1 = external global [4608 x bfloat]
@of_sub2mean_buff_0 = external global [4608 x bfloat]
@out_buff_1 = external global [32 x bfloat]
@out_buff_0 = external global [32 x bfloat]
@out_cons = external global [32 x bfloat]
@out = external global [32 x bfloat]
@of_sub2mean = external global [4608 x bfloat]
@of_imag2sub_cons = external global [4608 x bfloat]
@of_imag2sub = external global [4608 x bfloat]
@of_real2sub_cons = external global [4608 x bfloat]
@of_real2sub = external global [4608 x bfloat]
@of_join_imag1_cons = external global [2304 x bfloat]
@of_join_imag1 = external global [2304 x bfloat]
@of_join_imag0_cons = external global [2304 x bfloat]
@of_join_imag0 = external global [2304 x bfloat]
@of_join_real1_cons = external global [2304 x bfloat]
@of_join_real1 = external global [2304 x bfloat]
@of_join_real0_cons = external global [2304 x bfloat]
@of_join_real0 = external global [2304 x bfloat]
@of_add2main1_0_cons = external global [4608 x bfloat]
@of_add2main1_1_cons = external global [4608 x bfloat]
@of_add2main1 = external global [4608 x bfloat]
@of_add2main0_0_cons = external global [4608 x bfloat]
@of_add2main0_1_cons = external global [4608 x bfloat]
@of_add2main0 = external global [4608 x bfloat]
@of_add_uv1 = external global [4608 x bfloat]
@of_add_uv0 = external global [4608 x bfloat]
@of_add_w1_cons = external global [4608 x bfloat]
@of_add_w1 = external global [4608 x bfloat]
@of_add_w0_cons = external global [4608 x bfloat]
@of_add_w0 = external global [4608 x bfloat]
@of_add_v1_cons = external global [4608 x bfloat]
@of_add_v1 = external global [4608 x bfloat]
@of_add_v0_cons = external global [4608 x bfloat]
@of_add_v0 = external global [4608 x bfloat]
@of_add_u1 = external global [4608 x bfloat]
@of_add_u0 = external global [4608 x bfloat]
@of_in_main14_cons = external global [4610 x bfloat]
@of_in_main14 = external global [4610 x bfloat]
@of_in_main13_cons = external global [4610 x bfloat]
@of_in_main13 = external global [4610 x bfloat]
@of_in_main12_cons = external global [4610 x bfloat]
@of_in_main12 = external global [4610 x bfloat]
@of_in_main11_cons = external global [4610 x bfloat]
@of_in_main11 = external global [4610 x bfloat]
@of_in_main10_cons = external global [4610 x bfloat]
@of_in_main10 = external global [4610 x bfloat]
@of_in_main04_cons = external global [4610 x bfloat]
@of_in_main04 = external global [4610 x bfloat]
@of_in_main03_cons = external global [4610 x bfloat]
@of_in_main03 = external global [4610 x bfloat]
@of_in_main02_cons = external global [4610 x bfloat]
@of_in_main02 = external global [4610 x bfloat]
@of_in_main01_cons = external global [4610 x bfloat]
@of_in_main01 = external global [4610 x bfloat]
@of_in_main00_cons = external global [4610 x bfloat]
@of_in_main00 = external global [4610 x bfloat]
@in2_cons = external global [23050 x bfloat]
@in2 = external global [23050 x bfloat]
@in1_cons = external global [23050 x bfloat]
@in1 = external global [23050 x bfloat]
@in0_0_cons = external global [96 x bfloat]
@in0_1_cons = external global [96 x bfloat]
@in0_2_cons = external global [96 x bfloat]
@in0_3_cons = external global [96 x bfloat]
@in0_4_cons = external global [96 x bfloat]
@in0_5_cons = external global [96 x bfloat]
@in0 = external global [96 x bfloat]

declare void @debug_i32(i32)

declare void @llvm.aie2.put.ms(i32, i32)

declare { i32, i32 } @llvm.aie2.get.ss()

declare void @llvm.aie2.mcd.write.vec(<16 x i32>, i32)

declare <16 x i32> @llvm.aie2.scd.read.vec(i32)

declare void @llvm.aie2.acquire(i32, i32)

declare void @llvm.aie2.release(i32, i32)

declare void @passthrough(ptr, ptr, i32)

declare void @baseline_scale(ptr, ptr, ptr, i32, i32, i32, i32)

declare void @add_kernel(ptr, ptr, ptr, i32)

declare void @main_kernel(ptr, ptr, ptr, i32, i32)

declare void @sub_kernel(ptr, ptr, ptr, i32)

declare void @mean(ptr, ptr, i32, i32)

define void @core_2_2() {
  br label %1

1:                                                ; preds = %9, %0
  %2 = phi i64 [ %10, %9 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %11

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 512
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_1, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_1, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_1, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_1, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_1, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_1, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_1, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_1, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_1, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_1, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_1, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_1, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_1, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_1, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_1, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_1, ptr @out_buff_1, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  %10 = add i64 %2, 1
  br label %1

11:                                               ; preds = %1
  ret void
}

define void @core_1_2() {
  br label %1

1:                                                ; preds = %9, %0
  %2 = phi i64 [ %10, %9 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %11

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 16384
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_imag2sub_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_real2sub_cons_buff_0, i64 32) ]
  call void @sub_kernel(ptr @of_real2sub_cons_buff_0, ptr @of_imag2sub_cons_buff_0, ptr @of_sub2mean_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_imag2sub_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_real2sub_cons_buff_0, i64 32) ]
  call void @sub_kernel(ptr @of_real2sub_cons_buff_0, ptr @of_imag2sub_cons_buff_0, ptr @of_sub2mean_buff_1, i32 4608)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  %10 = add i64 %2, 1
  br label %1

11:                                               ; preds = %1
  ret void
}

define void @core_3_2() {
  br label %1

1:                                                ; preds = %10, %0
  %2 = phi i64 [ %11, %10 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 16384
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main11_cons_buff_0, i64 32) ]
  call void @main_kernel(ptr @of_add2main1_1_cons_buff_0, ptr @of_in_main11_cons_buff_0, ptr @of_join_imag1_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %9 = add i64 %6, 1
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 1)
  %11 = add i64 %2, 1
  br label %1

12:                                               ; preds = %1
  ret void
}

define void @core_2_3() {
  br label %1

1:                                                ; preds = %10, %0
  %2 = phi i64 [ %11, %10 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 16384
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main10_cons_buff_0, i64 32) ]
  call void @main_kernel(ptr @of_add2main1_0_cons_buff_0, ptr @of_in_main10_cons_buff_0, ptr @of_join_real1_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %9 = add i64 %6, 1
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 1)
  %11 = add i64 %2, 1
  br label %1

12:                                               ; preds = %1
  ret void
}

define void @core_2_4() {
  br label %1

1:                                                ; preds = %9, %0
  %2 = phi i64 [ %10, %9 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %11

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 16384
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 37, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_cons_buff_0, i64 32) ]
  call void @add_kernel(ptr @of_add_w1_cons_buff_0, ptr @of_add_uv1_buff_0, ptr @of_add2main1_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 36, i32 1)
  %8 = add i64 %5, 1
  br label %4

9:                                                ; preds = %4
  %10 = add i64 %2, 1
  br label %1

11:                                               ; preds = %1
  ret void
}

define void @core_2_5() {
  br label %1

1:                                                ; preds = %9, %0
  %2 = phi i64 [ %10, %9 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %11

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 16384
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @add_kernel(ptr @of_add_u1_buff_0, ptr @of_add_v1_cons_buff_0, ptr @of_add_uv1_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %8 = add i64 %5, 1
  br label %4

9:                                                ; preds = %4
  %10 = add i64 %2, 1
  br label %1

11:                                               ; preds = %1
  ret void
}

define void @core_3_3() {
  br label %1

1:                                                ; preds = %10, %0
  %2 = phi i64 [ %11, %10 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 512
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 0, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 1, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 2, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 3, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 4, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 5, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 6, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 7, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 8, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 9, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 10, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 11, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 12, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 13, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 14, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 15, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 16, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 17, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 18, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 19, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 20, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 21, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 22, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 23, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 24, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 25, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 26, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 27, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 28, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 29, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 30, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_0, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 31, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 0, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 1, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 2, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 3, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 4, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 5, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 6, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 7, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 8, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 9, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 10, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 11, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 12, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 13, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 14, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 15, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 16, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 17, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 18, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 19, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 20, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 21, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 22, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 23, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 24, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 25, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 26, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 27, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 28, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 29, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 30, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main14_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main14_cons_buff_0, ptr @in0_5_cons_buff_1, ptr @of_add_w1_buff_0, i32 4608, i32 32, i32 31, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 50, i32 1)
  %11 = add i64 %2, 1
  br label %1

12:                                               ; preds = %1
  ret void
}

define void @core_3_4() {
  br label %1

1:                                                ; preds = %10, %0
  %2 = phi i64 [ %11, %10 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 512
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 0, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 1, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 2, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 3, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 4, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 5, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 6, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 7, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 8, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 9, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 10, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 11, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 12, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 13, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 14, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 15, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 16, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 17, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 18, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 19, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 20, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 21, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 22, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 23, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 24, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 25, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 26, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 27, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 28, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 29, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 30, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_0, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 31, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 0, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 1, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 2, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 3, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 4, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 5, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 6, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 7, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 8, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 9, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 10, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 11, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 12, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 13, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 14, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 15, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 16, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 17, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 18, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 19, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 20, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 21, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 22, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 23, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 24, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 25, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 26, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 27, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 28, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 29, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 30, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main13_cons_buff_0, ptr @in0_4_cons_buff_1, ptr @of_add_v1_buff_0, i32 4608, i32 32, i32 31, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 50, i32 1)
  %11 = add i64 %2, 1
  br label %1

12:                                               ; preds = %1
  ret void
}

define void @core_3_5() {
  br label %1

1:                                                ; preds = %10, %0
  %2 = phi i64 [ %11, %10 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 512
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 0, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 1, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 2, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 3, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 4, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 5, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 6, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 7, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 8, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 9, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 10, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 11, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 12, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 13, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 14, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 15, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 16, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 17, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 18, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 19, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 20, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 21, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 22, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 23, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 24, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 25, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 26, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 27, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 28, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 29, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 30, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_0, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 31, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 0, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 1, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 2, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 3, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 4, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 5, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 6, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 7, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 8, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 9, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 10, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 11, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 12, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 13, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 14, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 15, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 16, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 17, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 18, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 19, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 20, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 21, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 22, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 23, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 24, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 25, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 26, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 27, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 28, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 29, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 30, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main12_cons_buff_0, ptr @in0_3_cons_buff_1, ptr @of_add_u1_buff_0, i32 4608, i32 32, i32 31, i32 0)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 50, i32 1)
  %11 = add i64 %2, 1
  br label %1

12:                                               ; preds = %1
  ret void
}

define void @core_0_2() {
  br label %1

1:                                                ; preds = %10, %0
  %2 = phi i64 [ %11, %10 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 16384
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_imag0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main01_cons_buff_0, i64 32) ]
  call void @main_kernel(ptr @of_add2main0_1_cons_buff_0, ptr @of_in_main01_cons_buff_0, ptr @of_join_imag0_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %9 = add i64 %6, 1
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 1)
  %11 = add i64 %2, 1
  br label %1

12:                                               ; preds = %1
  ret void
}

define void @core_1_3() {
  br label %1

1:                                                ; preds = %10, %0
  %2 = phi i64 [ %11, %10 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 16384
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_join_real0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main00_cons_buff_0, i64 32) ]
  call void @main_kernel(ptr @of_add2main0_0_cons_buff_0, ptr @of_in_main00_cons_buff_0, ptr @of_join_real0_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %9 = add i64 %6, 1
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 1)
  %11 = add i64 %2, 1
  br label %1

12:                                               ; preds = %1
  ret void
}

define void @core_1_4() {
  br label %1

1:                                                ; preds = %9, %0
  %2 = phi i64 [ %10, %9 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %11

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 16384
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add2main0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_cons_buff_0, i64 32) ]
  call void @add_kernel(ptr @of_add_w0_cons_buff_0, ptr @of_add_uv0_buff_0, ptr @of_add2main0_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  %8 = add i64 %5, 1
  br label %4

9:                                                ; preds = %4
  %10 = add i64 %2, 1
  br label %1

11:                                               ; preds = %1
  ret void
}

define void @core_1_5() {
  br label %1

1:                                                ; preds = %9, %0
  %2 = phi i64 [ %10, %9 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %11

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 16384
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_uv0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @add_kernel(ptr @of_add_u0_buff_0, ptr @of_add_v0_cons_buff_0, ptr @of_add_uv0_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %8 = add i64 %5, 1
  br label %4

9:                                                ; preds = %4
  %10 = add i64 %2, 1
  br label %1

11:                                               ; preds = %1
  ret void
}

define void @core_0_3() {
  br label %1

1:                                                ; preds = %10, %0
  %2 = phi i64 [ %11, %10 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 512
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 0, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 1, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 2, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 3, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 4, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 5, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 6, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 7, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 8, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 9, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 10, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 11, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 12, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 13, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 14, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 15, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 16, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 17, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 18, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 19, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 20, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 21, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 22, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 23, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 24, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 25, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 26, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 27, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 28, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 29, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 30, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_0, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 31, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 0, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 1, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 2, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 3, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 4, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 5, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 6, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 7, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 8, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 9, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 10, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 11, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 12, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 13, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 14, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 15, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 16, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 17, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 18, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 19, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 20, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 21, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 22, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 23, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 24, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 25, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 26, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 27, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 28, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 29, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 30, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_w0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main04_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main04_cons_buff_0, ptr @in0_2_cons_buff_1, ptr @of_add_w0_buff_0, i32 4608, i32 32, i32 31, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 50, i32 1)
  %11 = add i64 %2, 1
  br label %1

12:                                               ; preds = %1
  ret void
}

define void @core_0_4() {
  br label %1

1:                                                ; preds = %10, %0
  %2 = phi i64 [ %11, %10 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 512
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 0, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 1, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 2, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 3, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 4, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 5, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 6, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 7, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 8, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 9, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 10, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 11, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 12, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 13, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 14, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 15, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 16, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 17, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 18, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 19, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 20, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 21, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 22, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 23, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 24, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 25, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 26, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 27, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 28, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 29, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 30, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_0, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 31, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 0, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 1, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 2, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 3, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 4, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 5, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 6, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 7, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 8, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 9, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 10, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 11, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 12, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 13, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 14, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 15, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 16, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 17, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 18, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 19, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 20, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 21, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 22, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 23, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 24, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 25, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 26, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 27, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 28, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 29, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 30, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_v0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main03_cons_buff_0, ptr @in0_1_cons_buff_1, ptr @of_add_v0_buff_0, i32 4608, i32 32, i32 31, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 50, i32 1)
  %11 = add i64 %2, 1
  br label %1

12:                                               ; preds = %1
  ret void
}

define void @core_0_5() {
  br label %1

1:                                                ; preds = %10, %0
  %2 = phi i64 [ %11, %10 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 512
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 0, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 1, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 2, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 3, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 4, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 5, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 6, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 7, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 8, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 9, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 10, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 11, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 12, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 13, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 14, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 15, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 16, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 17, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 18, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 19, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 20, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 21, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 22, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 23, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 24, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 25, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 26, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 27, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 28, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 29, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 30, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_0, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 31, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 0, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 1, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 2, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 3, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 4, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 5, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 6, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 7, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 8, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 9, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 10, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 11, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 12, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 13, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 14, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 15, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 16, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 17, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 18, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 19, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 20, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 21, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 22, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 23, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 24, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 25, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 26, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 27, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 28, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 29, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 30, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_add_u0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_main02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @baseline_scale(ptr @of_in_main02_cons_buff_0, ptr @in0_0_cons_buff_1, ptr @of_add_u0_buff_0, i32 4608, i32 32, i32 31, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 50, i32 1)
  %11 = add i64 %2, 1
  br label %1

12:                                               ; preds = %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
