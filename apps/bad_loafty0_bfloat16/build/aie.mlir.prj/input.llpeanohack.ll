; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2"

@in0_cons_buff_1 = external global [2 x bfloat]
@in0_cons_buff_0 = external global [2 x bfloat]
@in1_cons_buff_1 = external global [23050 x bfloat]
@in1_cons_buff_0 = external global [23050 x bfloat]
@in2_cons_buff_1 = external global [23050 x bfloat]
@in2_cons_buff_0 = external global [23050 x bfloat]
@of_in_mainA0_cons_buff_1 = external global [4610 x bfloat]
@of_in_mainA0_cons_buff_0 = external global [4610 x bfloat]
@of_in_mainB0_cons_buff_1 = external global [4610 x bfloat]
@of_in_mainB0_cons_buff_0 = external global [4610 x bfloat]
@of_in_mainA1_cons_buff_1 = external global [4610 x bfloat]
@of_in_mainA1_cons_buff_0 = external global [4610 x bfloat]
@of_in_mainB1_cons_buff_1 = external global [4610 x bfloat]
@of_in_mainB1_cons_buff_0 = external global [4610 x bfloat]
@of_in_mainA2_cons_buff_1 = external global [4610 x bfloat]
@of_in_mainA2_cons_buff_0 = external global [4610 x bfloat]
@of_in_mainB2_cons_buff_1 = external global [4610 x bfloat]
@of_in_mainB2_cons_buff_0 = external global [4610 x bfloat]
@of_in_mainA3_cons_buff_1 = external global [4610 x bfloat]
@of_in_mainA3_cons_buff_0 = external global [4610 x bfloat]
@of_in_mainB3_cons_buff_1 = external global [4610 x bfloat]
@of_in_mainB3_cons_buff_0 = external global [4610 x bfloat]
@of_in_mainA4_cons_buff_1 = external global [4610 x bfloat]
@of_in_mainA4_cons_buff_0 = external global [4610 x bfloat]
@of_in_mainB4_cons_buff_1 = external global [4610 x bfloat]
@of_in_mainB4_cons_buff_0 = external global [4610 x bfloat]
@of_add_u0_buff_0 = external global [4608 x bfloat]
@of_add_v0_buff_0 = external global [4608 x bfloat]
@of_add_v0_cons_buff_0 = external global [4608 x bfloat]
@of_add_w0_buff_1 = external global [4608 x bfloat]
@of_add_w0_buff_0 = external global [4608 x bfloat]
@of_add_w0_cons_buff_1 = external global [4608 x bfloat]
@of_add_w0_cons_buff_0 = external global [4608 x bfloat]
@of_add_uv0_buff_1 = external global [4608 x bfloat]
@of_add_uv0_buff_0 = external global [4608 x bfloat]
@of_add_u1_buff_0 = external global [4608 x bfloat]
@of_add_v1_buff_0 = external global [4608 x bfloat]
@of_add_v1_cons_buff_0 = external global [4608 x bfloat]
@of_add_w1_buff_1 = external global [4608 x bfloat]
@of_add_w1_buff_0 = external global [4608 x bfloat]
@of_add_w1_cons_buff_1 = external global [4608 x bfloat]
@of_add_w1_cons_buff_0 = external global [4608 x bfloat]
@of_add_uv1_buff_1 = external global [4608 x bfloat]
@of_add_uv1_buff_0 = external global [4608 x bfloat]
@of_add2real0_buff_1 = external global [4608 x bfloat]
@of_add2real0_buff_0 = external global [4608 x bfloat]
@of_add2real0_1_cons_buff_1 = external global [4608 x bfloat]
@of_add2real0_1_cons_buff_0 = external global [4608 x bfloat]
@of_add2real0_0_cons_buff_1 = external global [4608 x bfloat]
@of_add2real0_0_cons_buff_0 = external global [4608 x bfloat]
@of_add2real1_buff_1 = external global [4608 x bfloat]
@of_add2real1_buff_0 = external global [4608 x bfloat]
@of_add2real1_1_cons_buff_1 = external global [4608 x bfloat]
@of_add2real1_1_cons_buff_0 = external global [4608 x bfloat]
@of_add2real1_0_cons_buff_1 = external global [4608 x bfloat]
@of_add2real1_0_cons_buff_0 = external global [4608 x bfloat]
@of_realJoin0_buff_1 = external global [1152 x bfloat]
@of_realJoin0_buff_0 = external global [1152 x bfloat]
@of_imagJoin0_buff_1 = external global [1152 x bfloat]
@of_imagJoin0_buff_0 = external global [1152 x bfloat]
@of_realJoin1_buff_1 = external global [1152 x bfloat]
@of_realJoin1_buff_0 = external global [1152 x bfloat]
@of_imagJoin1_buff_1 = external global [1152 x bfloat]
@of_imagJoin1_buff_0 = external global [1152 x bfloat]
@of_real_joined_buff_1 = external global [2304 x bfloat]
@of_real_joined_buff_0 = external global [2304 x bfloat]
@of_real_joined_cons_buff_1 = external global [2304 x bfloat]
@of_real_joined_cons_buff_0 = external global [2304 x bfloat]
@of_imag_joined_buff_1 = external global [2304 x bfloat]
@of_imag_joined_buff_0 = external global [2304 x bfloat]
@of_imag_joined_cons_buff_1 = external global [2304 x bfloat]
@of_imag_joined_cons_buff_0 = external global [2304 x bfloat]
@sub_buff_1 = external global [2304 x bfloat]
@sub_buff_0 = external global [2304 x bfloat]
@out_buff_1 = external global [2 x bfloat]
@out_buff_0 = external global [2 x bfloat]
@out_cons = external global [2 x bfloat]
@out = external global [2 x bfloat]
@sub = external global [2304 x bfloat]
@of_imag_joined_cons = external global [2304 x bfloat]
@of_imag_joined = external global [2304 x bfloat]
@of_real_joined_cons = external global [2304 x bfloat]
@of_real_joined = external global [2304 x bfloat]
@of_imagJoin1_cons = external global [1152 x bfloat]
@of_imagJoin1 = external global [1152 x bfloat]
@of_realJoin1_cons = external global [1152 x bfloat]
@of_realJoin1 = external global [1152 x bfloat]
@of_imagJoin0_cons = external global [1152 x bfloat]
@of_imagJoin0 = external global [1152 x bfloat]
@of_realJoin0_cons = external global [1152 x bfloat]
@of_realJoin0 = external global [1152 x bfloat]
@of_add2real1_0_cons = external global [4608 x bfloat]
@of_add2real1_1_cons = external global [4608 x bfloat]
@of_add2real1 = external global [4608 x bfloat]
@of_add2real0_0_cons = external global [4608 x bfloat]
@of_add2real0_1_cons = external global [4608 x bfloat]
@of_add2real0 = external global [4608 x bfloat]
@of_add_uv1 = external global [4608 x bfloat]
@of_add_w1_cons = external global [4608 x bfloat]
@of_add_w1 = external global [4608 x bfloat]
@of_add_v1_cons = external global [4608 x bfloat]
@of_add_v1 = external global [4608 x bfloat]
@of_add_u1 = external global [4608 x bfloat]
@of_add_uv0 = external global [4608 x bfloat]
@of_add_w0_cons = external global [4608 x bfloat]
@of_add_w0 = external global [4608 x bfloat]
@of_add_v0_cons = external global [4608 x bfloat]
@of_add_v0 = external global [4608 x bfloat]
@of_add_u0 = external global [4608 x bfloat]
@of_in_mainB4_cons = external global [4610 x bfloat]
@of_in_mainB4 = external global [4610 x bfloat]
@of_in_mainA4_cons = external global [4610 x bfloat]
@of_in_mainA4 = external global [4610 x bfloat]
@of_in_mainB3_cons = external global [4610 x bfloat]
@of_in_mainB3 = external global [4610 x bfloat]
@of_in_mainA3_cons = external global [4610 x bfloat]
@of_in_mainA3 = external global [4610 x bfloat]
@of_in_mainB2_cons = external global [4610 x bfloat]
@of_in_mainB2 = external global [4610 x bfloat]
@of_in_mainA2_cons = external global [4610 x bfloat]
@of_in_mainA2 = external global [4610 x bfloat]
@of_in_mainB1_cons = external global [4610 x bfloat]
@of_in_mainB1 = external global [4610 x bfloat]
@of_in_mainA1_cons = external global [4610 x bfloat]
@of_in_mainA1 = external global [4610 x bfloat]
@of_in_mainB0_cons = external global [4610 x bfloat]
@of_in_mainB0 = external global [4610 x bfloat]
@of_in_mainA0_cons = external global [4610 x bfloat]
@of_in_mainA0 = external global [4610 x bfloat]
@in2_cons = external global [23050 x bfloat]
@in2 = external global [23050 x bfloat]
@in1_cons = external global [23050 x bfloat]
@in1 = external global [23050 x bfloat]
@in0_cons = external global [2 x bfloat]
@in0 = external global [2 x bfloat]

declare void @debug_i32(i32)

declare void @llvm.aie2.put.ms(i32, i32)

declare { i32, i32 } @llvm.aie2.get.ss()

declare void @llvm.aie2.mcd.write.vec(<16 x i32>, i32)

declare <16 x i32> @llvm.aie2.scd.read.vec(i32)

declare void @llvm.aie2.acquire(i32, i32)

declare void @llvm.aie2.release(i32, i32)

declare void @passthrough(ptr, ptr, i32)

declare void @mean(ptr, ptr, i32, i32)

define void @core_2_2() {
  br label %1

1:                                                ; preds = %9, %0
  %2 = phi i64 [ %10, %9 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 14
  br i1 %3, label %4, label %11

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 8192
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.acquire(i32 21, i32 -1)
  call void @llvm.aie2.release(i32 20, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
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
  %3 = icmp slt i64 %2, 14
  br i1 %3, label %4, label %11

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 16384
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
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

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 14
  br i1 %3, label %4, label %18

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
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 16384
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  ret void
}

define void @core_2_3() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 14
  br i1 %3, label %4, label %18

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
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 16384
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  ret void
}

define void @core_2_4() {
  br label %1

1:                                                ; preds = %9, %0
  %2 = phi i64 [ %10, %9 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 14
  br i1 %3, label %4, label %11

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 16384
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 37, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 36, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 37, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 36, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %8 = add i64 %5, 2
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
  %3 = icmp slt i64 %2, 14
  br i1 %3, label %4, label %11

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 16384
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  %10 = add i64 %2, 1
  br label %1

11:                                               ; preds = %1
  ret void
}

define void @core_3_3() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 14
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8192
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 8192
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  ret void
}

define void @core_3_4() {
  br label %1

1:                                                ; preds = %26, %0
  %2 = phi i64 [ %27, %26 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 14
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %5

5:                                                ; preds = %13, %4
  %6 = phi i64 [ %14, %13 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8192
  br i1 %7, label %8, label %15

8:                                                ; preds = %11, %5
  %9 = phi i64 [ %12, %11 ], [ 0, %5 ]
  %10 = icmp slt i64 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
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
  %18 = icmp slt i64 %17, 8192
  br i1 %18, label %19, label %26

19:                                               ; preds = %22, %16
  %20 = phi i64 [ %23, %22 ], [ 0, %16 ]
  %21 = icmp slt i64 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
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
  ret void
}

define void @core_3_5() {
  br label %1

1:                                                ; preds = %26, %0
  %2 = phi i64 [ %27, %26 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 14
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %5

5:                                                ; preds = %13, %4
  %6 = phi i64 [ %14, %13 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8192
  br i1 %7, label %8, label %15

8:                                                ; preds = %11, %5
  %9 = phi i64 [ %12, %11 ], [ 0, %5 ]
  %10 = icmp slt i64 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.aie2.release(i32 17, i32 1)
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
  %18 = icmp slt i64 %17, 8192
  br i1 %18, label %19, label %26

19:                                               ; preds = %22, %16
  %20 = phi i64 [ %23, %22 ], [ 0, %16 ]
  %21 = icmp slt i64 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.aie2.release(i32 17, i32 1)
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
  ret void
}

define void @core_0_2() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 14
  br i1 %3, label %4, label %18

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
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 16384
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  ret void
}

define void @core_1_3() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 14
  br i1 %3, label %4, label %18

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
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 16384
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  ret void
}

define void @core_1_4() {
  br label %1

1:                                                ; preds = %9, %0
  %2 = phi i64 [ %10, %9 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 14
  br i1 %3, label %4, label %11

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 16384
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 34, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 35, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
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

1:                                                ; preds = %9, %0
  %2 = phi i64 [ %10, %9 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 14
  br i1 %3, label %4, label %11

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 16384
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  %10 = add i64 %2, 1
  br label %1

11:                                               ; preds = %1
  ret void
}

define void @core_0_3() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 14
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8192
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 8192
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  ret void
}

define void @core_0_4() {
  br label %1

1:                                                ; preds = %26, %0
  %2 = phi i64 [ %27, %26 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 14
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %5

5:                                                ; preds = %13, %4
  %6 = phi i64 [ %14, %13 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8192
  br i1 %7, label %8, label %15

8:                                                ; preds = %11, %5
  %9 = phi i64 [ %12, %11 ], [ 0, %5 ]
  %10 = icmp slt i64 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
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
  %18 = icmp slt i64 %17, 8192
  br i1 %18, label %19, label %26

19:                                               ; preds = %22, %16
  %20 = phi i64 [ %23, %22 ], [ 0, %16 ]
  %21 = icmp slt i64 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
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
  ret void
}

define void @core_0_5() {
  br label %1

1:                                                ; preds = %26, %0
  %2 = phi i64 [ %27, %26 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 14
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %5

5:                                                ; preds = %13, %4
  %6 = phi i64 [ %14, %13 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8192
  br i1 %7, label %8, label %15

8:                                                ; preds = %11, %5
  %9 = phi i64 [ %12, %11 ], [ 0, %5 ]
  %10 = icmp slt i64 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
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
  %18 = icmp slt i64 %17, 8192
  br i1 %18, label %19, label %26

19:                                               ; preds = %22, %16
  %20 = phi i64 [ %23, %22 ], [ 0, %16 ]
  %21 = icmp slt i64 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.release(i32 51, i32 1)
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
  ret void
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
