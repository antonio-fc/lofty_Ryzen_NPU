; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2"

@in0_cons_buff_1 = external global [2 x bfloat]
@in0_cons_buff_0 = external global [2 x bfloat]
@in1_cons_buff_1 = external global [1024 x bfloat]
@in1_cons_buff_0 = external global [1024 x bfloat]
@in2_cons_buff_0 = external global [3072 x bfloat]
@in3_cons_buff_0 = external global [6 x bfloat]
@u_cons_buff_1 = external global [1024 x bfloat]
@u_cons_buff_0 = external global [1024 x bfloat]
@v_cons_buff_1 = external global [1024 x bfloat]
@v_cons_buff_0 = external global [1024 x bfloat]
@w_cons_buff_1 = external global [1024 x bfloat]
@w_cons_buff_0 = external global [1024 x bfloat]
@l_cons_buff_1 = external global [2 x bfloat]
@l_cons_buff_0 = external global [2 x bfloat]
@m_cons_buff_1 = external global [2 x bfloat]
@m_cons_buff_0 = external global [2 x bfloat]
@n_cons_buff_1 = external global [2 x bfloat]
@n_cons_buff_0 = external global [2 x bfloat]
@addA0_buff_1 = external global [1024 x bfloat]
@addA0_buff_0 = external global [1024 x bfloat]
@addA1_buff_1 = external global [1024 x bfloat]
@addA1_buff_0 = external global [1024 x bfloat]
@addA1_cons_buff_1 = external global [1024 x bfloat]
@addA1_cons_buff_0 = external global [1024 x bfloat]
@addB0_buff_1 = external global [1024 x bfloat]
@addB0_buff_0 = external global [1024 x bfloat]
@addB1_buff_1 = external global [1024 x bfloat]
@addB1_buff_0 = external global [1024 x bfloat]
@of_scaleC_buff_1 = external global [1024 x bfloat]
@of_scaleC_buff_0 = external global [1024 x bfloat]
@of_cosD_buff_1 = external global [1024 x bfloat]
@of_cosD_buff_0 = external global [1024 x bfloat]
@of_multE_buff_1 = external global [1024 x bfloat]
@of_multE_buff_0 = external global [1024 x bfloat]
@of_meanF_buff_1 = external global [1024 x bfloat]
@of_meanF_buff_0 = external global [1024 x bfloat]
@of_meanG_buff_1 = external global [2 x bfloat]
@of_meanG_buff_0 = external global [2 x bfloat]
@out_buff_1 = external global [2 x bfloat]
@out_buff_0 = external global [2 x bfloat]
@out_cons = external global [2 x bfloat]
@out = external global [2 x bfloat]
@of_meanG = external global [2 x bfloat]
@of_meanF = external global [1024 x bfloat]
@of_multE = external global [1024 x bfloat]
@of_cosD = external global [1024 x bfloat]
@of_scaleC = external global [1024 x bfloat]
@addB1 = external global [1024 x bfloat]
@addB0 = external global [1024 x bfloat]
@addA1_cons = external global [1024 x bfloat]
@addA1 = external global [1024 x bfloat]
@addA0 = external global [1024 x bfloat]
@n_cons = external global [2 x bfloat]
@n = external global [2 x bfloat]
@m_cons = external global [2 x bfloat]
@m = external global [2 x bfloat]
@l_cons = external global [2 x bfloat]
@l = external global [2 x bfloat]
@w_cons = external global [1024 x bfloat]
@w = external global [1024 x bfloat]
@v_cons = external global [1024 x bfloat]
@v = external global [1024 x bfloat]
@u_cons = external global [1024 x bfloat]
@u = external global [1024 x bfloat]
@in3_cons = external global [6 x bfloat]
@in3 = external global [6 x bfloat]
@in2_cons = external global [3072 x bfloat]
@in2 = external global [3072 x bfloat]
@in1_cons = external global [1024 x bfloat]
@in1 = external global [1024 x bfloat]
@in0_cons = external global [2 x bfloat]
@in0 = external global [2 x bfloat]

declare void @debug_i32(i32)

declare void @llvm.aie2.put.ms(i32, i32)

declare { i32, i32 } @llvm.aie2.get.ss()

declare void @llvm.aie2.mcd.write.vec(<16 x i32>, i32)

declare <16 x i32> @llvm.aie2.scd.read.vec(i32)

declare void @llvm.aie2.acquire(i32, i32)

declare void @llvm.aie2.release(i32, i32)

declare void @vector_scalar_mul_aie_scalar(ptr, ptr, ptr, i32)

declare void @passthrough(ptr, ptr, i32)

declare void @vector_add_aie_scalar(ptr, ptr, ptr, i32)

declare void @vector_mult_aie_scalar(ptr, ptr, ptr, i32)

declare void @mean(ptr, ptr, i32)

declare void @mean_w(ptr, ptr, i32, i32)

declare void @cos_float_1024(ptr, ptr, i32)

define void @core_2_4() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_0, ptr @out_buff_0, i32 9, i32 0)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_0, ptr @out_buff_0, i32 1024, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 2, %4 ]
  %7 = icmp slt i64 %6, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_1, ptr @out_buff_0, i32 1024, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_0, ptr @out_buff_0, i32 1024, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_1, ptr @out_buff_0, i32 1024, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_0, ptr @out_buff_0, i32 1024, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_0, ptr @out_buff_0, i32 9216, i32 2)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_1, ptr @out_buff_1, i32 9, i32 0)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_1, ptr @out_buff_1, i32 1024, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 2, %10 ]
  %13 = icmp slt i64 %12, 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_0, ptr @out_buff_1, i32 1024, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_1, ptr @out_buff_1, i32 1024, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_0, ptr @out_buff_1, i32 1024, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_1, ptr @out_buff_1, i32 1024, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_1, ptr @out_buff_1, i32 9216, i32 2)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_0, ptr @out_buff_0, i32 9, i32 0)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_0, ptr @out_buff_0, i32 1024, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 2, %18 ]
  %21 = icmp slt i64 %20, 8
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_1, ptr @out_buff_0, i32 1024, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_0, ptr @out_buff_0, i32 1024, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  %23 = add i64 %20, 2
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_1, ptr @out_buff_0, i32 1024, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_0, ptr @out_buff_0, i32 1024, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean_w(ptr @of_meanF_buff_0, ptr @out_buff_0, i32 9216, i32 2)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

define void @core_1_4() {
  br label %1

1:                                                ; preds = %15, %0
  %2 = phi i64 [ %16, %15 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %17

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @of_multE_buff_0, ptr @in1_cons_buff_0, ptr @of_meanF_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @of_multE_buff_1, ptr @in1_cons_buff_1, ptr @of_meanF_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @of_multE_buff_0, ptr @in1_cons_buff_0, ptr @of_meanF_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi i64 [ %14, %13 ], [ 0, %9 ]
  %12 = icmp slt i64 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @of_multE_buff_1, ptr @in1_cons_buff_1, ptr @of_meanF_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @of_multE_buff_0, ptr @in1_cons_buff_0, ptr @of_meanF_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %14 = add i64 %11, 2
  br label %10

15:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @of_multE_buff_1, ptr @in1_cons_buff_1, ptr @of_meanF_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %16 = add i64 %2, 2
  br label %1

17:                                               ; preds = %20, %1
  %18 = phi i64 [ %21, %20 ], [ 0, %1 ]
  %19 = icmp slt i64 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @of_multE_buff_0, ptr @in1_cons_buff_0, ptr @of_meanF_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @of_multE_buff_1, ptr @in1_cons_buff_1, ptr @of_meanF_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add i64 %18, 2
  br label %17

22:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @of_multE_buff_0, ptr @in1_cons_buff_0, ptr @of_meanF_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_0_4() {
  br label %1

1:                                                ; preds = %15, %0
  %2 = phi i64 [ %16, %15 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %17

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @passthrough(ptr @of_cosD_buff_0, ptr @of_multE_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @passthrough(ptr @of_cosD_buff_1, ptr @of_multE_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @passthrough(ptr @of_cosD_buff_0, ptr @of_multE_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi i64 [ %14, %13 ], [ 0, %9 ]
  %12 = icmp slt i64 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @passthrough(ptr @of_cosD_buff_1, ptr @of_multE_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @passthrough(ptr @of_cosD_buff_0, ptr @of_multE_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  %14 = add i64 %11, 2
  br label %10

15:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @passthrough(ptr @of_cosD_buff_1, ptr @of_multE_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  %16 = add i64 %2, 2
  br label %1

17:                                               ; preds = %20, %1
  %18 = phi i64 [ %21, %20 ], [ 0, %1 ]
  %19 = icmp slt i64 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @passthrough(ptr @of_cosD_buff_0, ptr @of_multE_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @passthrough(ptr @of_cosD_buff_1, ptr @of_multE_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  %21 = add i64 %18, 2
  br label %17

22:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @passthrough(ptr @of_cosD_buff_0, ptr @of_multE_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  ret void
}

define void @core_0_3() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_scaleC_buff_0, ptr @of_cosD_buff_0, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_scaleC_buff_1, ptr @of_cosD_buff_1, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_scaleC_buff_0, ptr @of_cosD_buff_0, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_scaleC_buff_1, ptr @of_cosD_buff_1, ptr @in0_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_scaleC_buff_0, ptr @of_cosD_buff_0, ptr @in0_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_scaleC_buff_1, ptr @of_cosD_buff_1, ptr @in0_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 0, %18 ]
  %21 = icmp slt i64 %20, 8
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_scaleC_buff_0, ptr @of_cosD_buff_0, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_scaleC_buff_1, ptr @of_cosD_buff_1, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %23 = add i64 %20, 2
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_scaleC_buff_0, ptr @of_cosD_buff_0, ptr @in0_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_1_3() {
  br label %1

1:                                                ; preds = %15, %0
  %2 = phi i64 [ %16, %15 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %17

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addB0_buff_0, ptr @addB1_buff_0, ptr @of_scaleC_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 19, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addB0_buff_1, ptr @addB1_buff_1, ptr @of_scaleC_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 19, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addB0_buff_0, ptr @addB1_buff_0, ptr @of_scaleC_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 19, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi i64 [ %14, %13 ], [ 0, %9 ]
  %12 = icmp slt i64 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addB0_buff_1, ptr @addB1_buff_1, ptr @of_scaleC_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 19, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addB0_buff_0, ptr @addB1_buff_0, ptr @of_scaleC_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 19, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %14 = add i64 %11, 2
  br label %10

15:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addB0_buff_1, ptr @addB1_buff_1, ptr @of_scaleC_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 19, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %16 = add i64 %2, 2
  br label %1

17:                                               ; preds = %20, %1
  %18 = phi i64 [ %21, %20 ], [ 0, %1 ]
  %19 = icmp slt i64 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addB0_buff_0, ptr @addB1_buff_0, ptr @of_scaleC_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 19, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addB0_buff_1, ptr @addB1_buff_1, ptr @of_scaleC_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 19, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add i64 %18, 2
  br label %17

22:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addB0_buff_0, ptr @addB1_buff_0, ptr @of_scaleC_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 19, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_2_3() {
  br label %1

1:                                                ; preds = %15, %0
  %2 = phi i64 [ %16, %15 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %17

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addA0_buff_0, ptr @addA1_cons_buff_0, ptr @addB1_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addA0_buff_1, ptr @addA1_cons_buff_1, ptr @addB1_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addA0_buff_0, ptr @addA1_cons_buff_0, ptr @addB1_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi i64 [ %14, %13 ], [ 0, %9 ]
  %12 = icmp slt i64 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addA0_buff_1, ptr @addA1_cons_buff_1, ptr @addB1_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addA0_buff_0, ptr @addA1_cons_buff_0, ptr @addB1_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %14 = add i64 %11, 2
  br label %10

15:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addA0_buff_1, ptr @addA1_cons_buff_1, ptr @addB1_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %16 = add i64 %2, 2
  br label %1

17:                                               ; preds = %20, %1
  %18 = phi i64 [ %21, %20 ], [ 0, %1 ]
  %19 = icmp slt i64 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addA0_buff_0, ptr @addA1_cons_buff_0, ptr @addB1_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addA0_buff_1, ptr @addA1_cons_buff_1, ptr @addB1_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add i64 %18, 2
  br label %17

22:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addA0_buff_0, ptr @addA1_cons_buff_0, ptr @addB1_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_3_2() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @w_cons_buff_0, ptr @addA1_buff_0, ptr @n_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @w_cons_buff_1, ptr @addA1_buff_1, ptr @n_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @w_cons_buff_0, ptr @addA1_buff_0, ptr @n_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @w_cons_buff_1, ptr @addA1_buff_1, ptr @n_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @w_cons_buff_0, ptr @addA1_buff_0, ptr @n_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @w_cons_buff_1, ptr @addA1_buff_1, ptr @n_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 0, %18 ]
  %21 = icmp slt i64 %20, 8
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @w_cons_buff_0, ptr @addA1_buff_0, ptr @n_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @w_cons_buff_1, ptr @addA1_buff_1, ptr @n_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %23 = add i64 %20, 2
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @w_cons_buff_0, ptr @addA1_buff_0, ptr @n_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_2_2() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @v_cons_buff_0, ptr @addA0_buff_0, ptr @m_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @v_cons_buff_1, ptr @addA0_buff_1, ptr @m_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @v_cons_buff_0, ptr @addA0_buff_0, ptr @m_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @v_cons_buff_1, ptr @addA0_buff_1, ptr @m_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @v_cons_buff_0, ptr @addA0_buff_0, ptr @m_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @v_cons_buff_1, ptr @addA0_buff_1, ptr @m_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 0, %18 ]
  %21 = icmp slt i64 %20, 8
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @v_cons_buff_0, ptr @addA0_buff_0, ptr @m_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @v_cons_buff_1, ptr @addA0_buff_1, ptr @m_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %23 = add i64 %20, 2
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @v_cons_buff_0, ptr @addA0_buff_0, ptr @m_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_1_2() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @u_cons_buff_0, ptr @addB0_buff_0, ptr @l_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @u_cons_buff_1, ptr @addB0_buff_1, ptr @l_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @u_cons_buff_0, ptr @addB0_buff_0, ptr @l_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @u_cons_buff_1, ptr @addB0_buff_1, ptr @l_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @u_cons_buff_0, ptr @addB0_buff_0, ptr @l_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @u_cons_buff_1, ptr @addB0_buff_1, ptr @l_cons_buff_1, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 0, %18 ]
  %21 = icmp slt i64 %20, 8
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @u_cons_buff_0, ptr @addB0_buff_0, ptr @l_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @u_cons_buff_1, ptr @addB0_buff_1, ptr @l_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %23 = add i64 %20, 2
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @u_cons_buff_0, ptr @addB0_buff_0, ptr @l_cons_buff_0, i32 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
