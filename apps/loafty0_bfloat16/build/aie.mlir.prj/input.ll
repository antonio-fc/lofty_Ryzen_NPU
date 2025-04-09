; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2"

@in0_cons_buff_1 = external global [96 x bfloat]
@in0_cons_buff_0 = external global [96 x bfloat]
@in1_cons_buff_1 = external global [13824 x bfloat]
@in1_cons_buff_0 = external global [13824 x bfloat]
@in2_cons_buff_1 = external global [9216 x bfloat]
@in2_cons_buff_0 = external global [9216 x bfloat]
@in3_cons_buff_1 = external global [2 x bfloat]
@in3_cons_buff_0 = external global [2 x bfloat]
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
@out_cons = external global [32 x bfloat]
@out = external global [32 x bfloat]
@of_sub2mean = external global [4608 x bfloat]
@of_reduc2SubC = external global [4608 x bfloat]
@of_reduc2SubR_cons = external global [4608 x bfloat]
@of_reduc2SubR = external global [4608 x bfloat]
@of_reduceC = external global [4608 x bfloat]
@of_reduceR = external global [4608 x bfloat]
@of_multTrigC = external global [4608 x bfloat]
@of_multTrigR = external global [4608 x bfloat]
@of_trigFifo_0_cons = external global [4608 x bfloat]
@of_trigFifo_1_cons = external global [4608 x bfloat]
@of_trigFifo = external global [4608 x bfloat]
@of_scaleAddBL = external global [4608 x bfloat]
@of_addUV = external global [4608 x bfloat]
@of_addW_cons = external global [4608 x bfloat]
@of_addW = external global [4608 x bfloat]
@of_addV_cons = external global [4608 x bfloat]
@of_addV = external global [4608 x bfloat]
@of_addU = external global [4608 x bfloat]
@of_in_visC_cons = external global [4608 x bfloat]
@of_in_visC = external global [4608 x bfloat]
@of_in_visR_cons = external global [4608 x bfloat]
@of_in_visR = external global [4608 x bfloat]
@of_in_n_cons = external global [32 x bfloat]
@of_in_n = external global [32 x bfloat]
@of_in_m_cons = external global [32 x bfloat]
@of_in_m = external global [32 x bfloat]
@of_in_l_cons = external global [32 x bfloat]
@of_in_l = external global [32 x bfloat]
@of_in_w_cons = external global [4608 x bfloat]
@of_in_w = external global [4608 x bfloat]
@of_in_v_cons = external global [4608 x bfloat]
@of_in_v = external global [4608 x bfloat]
@of_in_u_cons = external global [4608 x bfloat]
@of_in_u = external global [4608 x bfloat]
@in3_cons = external global [2 x bfloat]
@in3 = external global [2 x bfloat]
@in2_cons = external global [9216 x bfloat]
@in2 = external global [9216 x bfloat]
@in1_cons = external global [13824 x bfloat]
@in1 = external global [13824 x bfloat]
@in0_cons = external global [96 x bfloat]
@in0 = external global [96 x bfloat]

declare void @debug_i32(i32)

declare void @llvm.aie2.put.ms(i32, i32)

declare { i32, i32 } @llvm.aie2.get.ss()

declare void @llvm.aie2.mcd.write.vec(<16 x i32>, i32)

declare <16 x i32> @llvm.aie2.scd.read.vec(i32)

declare void @llvm.aie2.acquire(i32, i32)

declare void @llvm.aie2.release(i32, i32)

declare void @passthrough(ptr, ptr, i32)

declare void @scale(ptr, ptr, ptr, i32, i32)

declare void @add_kernel(ptr, ptr, ptr, i32)

declare void @scale_single(ptr, ptr, ptr, i32)

declare void @cosine(ptr, ptr, i32)

declare void @sine(ptr, ptr, i32)

declare void @mul_kernel(ptr, ptr, ptr, i32)

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
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @of_sub2mean_buff_0, ptr @out_buff_1, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
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
  call void @llvm.aie2.acquire(i32 33, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_sub2mean_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubR_cons_buff_0, i64 32) ]
  call void @sub_kernel(ptr @of_reduc2SubR_cons_buff_0, ptr @of_reduc2SubC_buff_0, ptr @of_sub2mean_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 32, i32 1)
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

1:                                                ; preds = %9, %0
  %2 = phi i64 [ %10, %9 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %11

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 16384
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 35, i32 -2)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @add_kernel(ptr @of_reduceC_buff_0, ptr @of_reduceC_buff_1, ptr @of_reduc2SubC_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 34, i32 2)
  call void @llvm.aie2.acquire(i32 35, i32 -2)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @add_kernel(ptr @of_reduceC_buff_0, ptr @of_reduceC_buff_1, ptr @of_reduc2SubC_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 34, i32 2)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  %10 = add i64 %2, 1
  br label %1

11:                                               ; preds = %1
  ret void
}

define void @core_2_3() {
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
  call void @llvm.aie2.acquire(i32 35, i32 -2)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @add_kernel(ptr @of_reduceR_buff_0, ptr @of_reduceR_buff_1, ptr @of_reduc2SubR_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 34, i32 2)
  call void @llvm.aie2.acquire(i32 35, i32 -2)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduc2SubR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @add_kernel(ptr @of_reduceR_buff_0, ptr @of_reduceR_buff_1, ptr @of_reduc2SubR_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 34, i32 2)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  %10 = add i64 %2, 1
  br label %1

11:                                               ; preds = %1
  ret void
}

define void @core_3_4() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 16384
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigC_buff_0, ptr @of_in_visC_cons_buff_0, ptr @of_reduceC_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigC_buff_0, ptr @of_in_visC_cons_buff_1, ptr @of_reduceC_buff_1, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigC_buff_0, ptr @of_in_visC_cons_buff_0, ptr @of_reduceC_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigC_buff_0, ptr @of_in_visC_cons_buff_1, ptr @of_reduceC_buff_1, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 2)
  call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 16384
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigC_buff_0, ptr @of_in_visC_cons_buff_0, ptr @of_reduceC_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigC_buff_0, ptr @of_in_visC_cons_buff_1, ptr @of_reduceC_buff_1, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigC_buff_0, ptr @of_in_visC_cons_buff_0, ptr @of_reduceC_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigC_buff_0, ptr @of_in_visC_cons_buff_1, ptr @of_reduceC_buff_1, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.release(i32 48, i32 2)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 0, %18 ]
  %21 = icmp slt i64 %20, 16384
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigC_buff_0, ptr @of_in_visC_cons_buff_0, ptr @of_reduceC_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigC_buff_0, ptr @of_in_visC_cons_buff_1, ptr @of_reduceC_buff_1, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_0, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigC_buff_0, ptr @of_in_visC_cons_buff_0, ptr @of_reduceC_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visC_cons_buff_1, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigC_buff_0, ptr @of_in_visC_cons_buff_1, ptr @of_reduceC_buff_1, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  %23 = add i64 %20, 2
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.release(i32 48, i32 2)
  ret void
}

define void @core_2_4() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 16384
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigR_buff_0, ptr @of_in_visR_cons_buff_0, ptr @of_reduceR_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigR_buff_0, ptr @of_in_visR_cons_buff_1, ptr @of_reduceR_buff_1, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigR_buff_0, ptr @of_in_visR_cons_buff_0, ptr @of_reduceR_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigR_buff_0, ptr @of_in_visR_cons_buff_1, ptr @of_reduceR_buff_1, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 2)
  call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 16384
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigR_buff_0, ptr @of_in_visR_cons_buff_0, ptr @of_reduceR_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigR_buff_0, ptr @of_in_visR_cons_buff_1, ptr @of_reduceR_buff_1, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigR_buff_0, ptr @of_in_visR_cons_buff_0, ptr @of_reduceR_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigR_buff_0, ptr @of_in_visR_cons_buff_1, ptr @of_reduceR_buff_1, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.release(i32 48, i32 2)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 0, %18 ]
  %21 = icmp slt i64 %20, 16384
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigR_buff_0, ptr @of_in_visR_cons_buff_0, ptr @of_reduceR_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigR_buff_0, ptr @of_in_visR_cons_buff_1, ptr @of_reduceR_buff_1, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_0, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigR_buff_0, ptr @of_in_visR_cons_buff_0, ptr @of_reduceR_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_reduceR_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_visR_cons_buff_1, i64 32) ]
  call void @mul_kernel(ptr @of_multTrigR_buff_0, ptr @of_in_visR_cons_buff_1, ptr @of_reduceR_buff_1, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  %23 = add i64 %20, 2
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.release(i32 48, i32 2)
  ret void
}

define void @core_3_5() {
  br label %1

1:                                                ; preds = %14, %0
  %2 = phi i64 [ %15, %14 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %16

4:                                                ; preds = %12, %1
  %5 = phi i64 [ %13, %12 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 16384
  br i1 %6, label %7, label %14

7:                                                ; preds = %10, %4
  %8 = phi i64 [ %11, %10 ], [ 0, %4 ]
  %9 = icmp slt i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_1_cons_buff_0, i64 32) ]
  call void @sine(ptr @of_trigFifo_1_cons_buff_0, ptr @of_multTrigC_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %11 = add i64 %8, 1
  br label %7

12:                                               ; preds = %7
  %13 = add i64 %5, 1
  br label %4

14:                                               ; preds = %4
  %15 = add i64 %2, 1
  br label %1

16:                                               ; preds = %1
  ret void
}

define void @core_2_5() {
  br label %1

1:                                                ; preds = %14, %0
  %2 = phi i64 [ %15, %14 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %16

4:                                                ; preds = %12, %1
  %5 = phi i64 [ %13, %12 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 16384
  br i1 %6, label %7, label %14

7:                                                ; preds = %10, %4
  %8 = phi i64 [ %11, %10 ], [ 0, %4 ]
  %9 = icmp slt i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multTrigR_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_0_cons_buff_0, i64 32) ]
  call void @cosine(ptr @of_trigFifo_0_cons_buff_0, ptr @of_multTrigR_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %11 = add i64 %8, 1
  br label %7

12:                                               ; preds = %7
  %13 = add i64 %5, 1
  br label %4

14:                                               ; preds = %4
  %15 = add i64 %2, 1
  br label %1

16:                                               ; preds = %1
  ret void
}

define void @core_1_3() {
  br label %1

1:                                                ; preds = %26, %0
  %2 = phi i64 [ %27, %26 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %5

5:                                                ; preds = %13, %4
  %6 = phi i64 [ %14, %13 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 16384
  br i1 %7, label %8, label %15

8:                                                ; preds = %11, %5
  %9 = phi i64 [ %12, %11 ], [ 0, %5 ]
  %10 = icmp slt i64 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @scale_single(ptr @of_scaleAddBL_buff_0, ptr @in3_cons_buff_0, ptr @of_trigFifo_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  %12 = add i64 %9, 1
  br label %8

13:                                               ; preds = %8
  %14 = add i64 %6, 1
  br label %5

15:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %16

16:                                               ; preds = %24, %15
  %17 = phi i64 [ %25, %24 ], [ 0, %15 ]
  %18 = icmp slt i64 %17, 16384
  br i1 %18, label %19, label %26

19:                                               ; preds = %22, %16
  %20 = phi i64 [ %23, %22 ], [ 0, %16 ]
  %21 = icmp slt i64 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_1, i64 32) ]
  call void @scale_single(ptr @of_scaleAddBL_buff_0, ptr @in3_cons_buff_1, ptr @of_trigFifo_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  %23 = add i64 %20, 1
  br label %19

24:                                               ; preds = %19
  %25 = add i64 %17, 1
  br label %16

26:                                               ; preds = %16
  call void @llvm.aie2.release(i32 48, i32 1)
  %27 = add i64 %2, 2
  br label %1

28:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %29

29:                                               ; preds = %37, %28
  %30 = phi i64 [ %38, %37 ], [ 0, %28 ]
  %31 = icmp slt i64 %30, 16384
  br i1 %31, label %32, label %39

32:                                               ; preds = %35, %29
  %33 = phi i64 [ %36, %35 ], [ 0, %29 ]
  %34 = icmp slt i64 %33, 2
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_trigFifo_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in3_cons_buff_0, i64 32) ]
  call void @scale_single(ptr @of_scaleAddBL_buff_0, ptr @in3_cons_buff_0, ptr @of_trigFifo_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  %36 = add i64 %33, 1
  br label %32

37:                                               ; preds = %32
  %38 = add i64 %30, 1
  br label %29

39:                                               ; preds = %29
  call void @llvm.aie2.release(i32 48, i32 1)
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
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_cons_buff_0, i64 32) ]
  call void @add_kernel(ptr @of_addUV_buff_0, ptr @of_addW_cons_buff_0, ptr @of_scaleAddBL_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_cons_buff_1, i64 32) ]
  call void @add_kernel(ptr @of_addUV_buff_0, ptr @of_addW_cons_buff_1, ptr @of_scaleAddBL_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_cons_buff_0, i64 32) ]
  call void @add_kernel(ptr @of_addUV_buff_0, ptr @of_addW_cons_buff_0, ptr @of_scaleAddBL_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleAddBL_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_cons_buff_1, i64 32) ]
  call void @add_kernel(ptr @of_addUV_buff_0, ptr @of_addW_cons_buff_1, ptr @of_scaleAddBL_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  %10 = add i64 %2, 1
  br label %1

11:                                               ; preds = %1
  ret void
}

define void @core_1_5() {
  br label %1

1:                                                ; preds = %14, %0
  %2 = phi i64 [ %15, %14 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %16

4:                                                ; preds = %12, %1
  %5 = phi i64 [ %13, %12 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 16384
  br i1 %6, label %7, label %14

7:                                                ; preds = %10, %4
  %8 = phi i64 [ %11, %10 ], [ 0, %4 ]
  %9 = icmp slt i64 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addUV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @add_kernel(ptr @of_addU_buff_0, ptr @of_addV_cons_buff_0, ptr @of_addUV_buff_0, i32 4608)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %11 = add i64 %8, 1
  br label %7

12:                                               ; preds = %7
  %13 = add i64 %5, 1
  br label %4

14:                                               ; preds = %4
  %15 = add i64 %2, 1
  br label %1

16:                                               ; preds = %1
  ret void
}

define void @core_0_3() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 512
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %9 = add i64 %6, 1
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 2)
  call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 512
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %15 = add i64 %12, 1
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.release(i32 48, i32 2)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 0, %18 ]
  %21 = icmp slt i64 %20, 512
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_0, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addW_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_w_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_w_cons_buff_1, ptr @of_in_n_cons_buff_0, ptr @of_addW_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %23 = add i64 %20, 1
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.release(i32 48, i32 2)
  ret void
}

define void @core_0_4() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 512
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %9 = add i64 %6, 1
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 2)
  call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 512
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %15 = add i64 %12, 1
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.release(i32 48, i32 2)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 0, %18 ]
  %21 = icmp slt i64 %20, 512
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_0, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addV_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_v_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_v_cons_buff_1, ptr @of_in_m_cons_buff_0, ptr @of_addV_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %23 = add i64 %20, 1
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.release(i32 48, i32 2)
  ret void
}

define void @core_0_5() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 512
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %9 = add i64 %6, 1
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 2)
  call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 512
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %15 = add i64 %12, 1
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.release(i32 48, i32 2)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -2)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 0, %18 ]
  %21 = icmp slt i64 %20, 512
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 0)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 2)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 3)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 4)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 5)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 6)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 7)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 8)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 9)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 10)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 11)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 12)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 13)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 14)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 15)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 16)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 17)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 18)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 19)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 20)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 21)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 22)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 23)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 24)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 25)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 26)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 27)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 28)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 29)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 30)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_0, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_0, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_addU_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_u_cons_buff_1, i64 32) ]
  call void @scale(ptr @of_in_u_cons_buff_1, ptr @of_in_l_cons_buff_0, ptr @of_addU_buff_0, i32 4608, i32 31)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %23 = add i64 %20, 1
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.release(i32 48, i32 2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
