; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2"

@in0_5_cons_buff_1 = external global [2 x bfloat]
@in0_5_cons_buff_0 = external global [2 x bfloat]
@in0_4_cons_buff_1 = external global [2 x bfloat]
@in0_4_cons_buff_0 = external global [2 x bfloat]
@in0_3_cons_buff_1 = external global [2 x bfloat]
@in0_3_cons_buff_0 = external global [2 x bfloat]
@in0_2_cons_buff_1 = external global [2 x bfloat]
@in0_2_cons_buff_0 = external global [2 x bfloat]
@in0_1_cons_buff_1 = external global [2 x bfloat]
@in0_1_cons_buff_0 = external global [2 x bfloat]
@in0_0_cons_buff_1 = external global [2 x bfloat]
@in0_0_cons_buff_0 = external global [2 x bfloat]
@in1_cons_buff_0 = external global [4608 x bfloat]
@in2_cons_buff_0 = external global [4608 x bfloat]
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
@out1_buff_0 = external global [4608 x bfloat]
@out2_buff_0 = external global [4608 x bfloat]
@out2_cons = external global [4608 x bfloat]
@out2 = external global [4608 x bfloat]
@out1_cons = external global [4608 x bfloat]
@out1 = external global [4608 x bfloat]
@of_out_mainB33_cons = external global [768 x bfloat]
@of_out_mainB33 = external global [768 x bfloat]
@of_out_mainA13_cons = external global [768 x bfloat]
@of_out_mainA13 = external global [768 x bfloat]
@of_out_mainB32_cons = external global [768 x bfloat]
@of_out_mainB32 = external global [768 x bfloat]
@of_out_mainA12_cons = external global [768 x bfloat]
@of_out_mainA12 = external global [768 x bfloat]
@of_out_mainB31_cons = external global [768 x bfloat]
@of_out_mainB31 = external global [768 x bfloat]
@of_out_mainA11_cons = external global [768 x bfloat]
@of_out_mainA11 = external global [768 x bfloat]
@of_out_mainB23_cons = external global [768 x bfloat]
@of_out_mainB23 = external global [768 x bfloat]
@of_out_mainA03_cons = external global [768 x bfloat]
@of_out_mainA03 = external global [768 x bfloat]
@of_out_mainB22_cons = external global [768 x bfloat]
@of_out_mainB22 = external global [768 x bfloat]
@of_out_mainA02_cons = external global [768 x bfloat]
@of_out_mainA02 = external global [768 x bfloat]
@of_out_mainB21_cons = external global [768 x bfloat]
@of_out_mainB21 = external global [768 x bfloat]
@of_out_mainA01_cons = external global [768 x bfloat]
@of_out_mainA01 = external global [768 x bfloat]
@of_in_mainB33_cons = external global [768 x bfloat]
@of_in_mainB33 = external global [768 x bfloat]
@of_in_mainA13_cons = external global [768 x bfloat]
@of_in_mainA13 = external global [768 x bfloat]
@of_in_mainB32_cons = external global [768 x bfloat]
@of_in_mainB32 = external global [768 x bfloat]
@of_in_mainA12_cons = external global [768 x bfloat]
@of_in_mainA12 = external global [768 x bfloat]
@of_in_mainB31_cons = external global [768 x bfloat]
@of_in_mainB31 = external global [768 x bfloat]
@of_in_mainA11_cons = external global [768 x bfloat]
@of_in_mainA11 = external global [768 x bfloat]
@of_in_mainB23_cons = external global [768 x bfloat]
@of_in_mainB23 = external global [768 x bfloat]
@of_in_mainA03_cons = external global [768 x bfloat]
@of_in_mainA03 = external global [768 x bfloat]
@of_in_mainB22_cons = external global [768 x bfloat]
@of_in_mainB22 = external global [768 x bfloat]
@of_in_mainA02_cons = external global [768 x bfloat]
@of_in_mainA02 = external global [768 x bfloat]
@of_in_mainB21_cons = external global [768 x bfloat]
@of_in_mainB21 = external global [768 x bfloat]
@of_in_mainA01_cons = external global [768 x bfloat]
@of_in_mainA01 = external global [768 x bfloat]
@in2_cons = external global [4608 x bfloat]
@in2 = external global [4608 x bfloat]
@in1_cons = external global [4608 x bfloat]
@in1 = external global [4608 x bfloat]
@in0_0_cons = external global [2 x bfloat]
@in0_1_cons = external global [2 x bfloat]
@in0_2_cons = external global [2 x bfloat]
@in0_3_cons = external global [2 x bfloat]
@in0_4_cons = external global [2 x bfloat]
@in0_5_cons = external global [2 x bfloat]
@in0 = external global [2 x bfloat]

declare void @debug_i32(i32)

declare void @llvm.aie2.put.ms(i32, i32)

declare { i32, i32 } @llvm.aie2.get.ss()

declare void @llvm.aie2.mcd.write.vec(<16 x i32>, i32)

declare <16 x i32> @llvm.aie2.scd.read.vec(i32)

declare void @llvm.aie2.acquire(i32, i32)

declare void @llvm.aie2.release(i32, i32)

declare void @passthrough(ptr, ptr, i32)

define void @core_3_5() {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainB33_cons_buff_0, ptr @of_out_mainB33_buff_0, i32 768)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @passthrough(ptr @of_in_mainB33_cons_buff_1, ptr @of_out_mainB33_buff_1, i32 768)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %5 = add i64 %2, 2
  br label %1

6:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainB33_cons_buff_0, ptr @of_out_mainB33_buff_0, i32 768)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_1_5() {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainA13_cons_buff_0, ptr @of_out_mainA13_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @passthrough(ptr @of_in_mainA13_cons_buff_1, ptr @of_out_mainA13_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %5 = add i64 %2, 2
  br label %1

6:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainA13_cons_buff_0, ptr @of_out_mainA13_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_3_4() {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainB32_cons_buff_0, ptr @of_out_mainB32_buff_0, i32 768)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @passthrough(ptr @of_in_mainB32_cons_buff_1, ptr @of_out_mainB32_buff_1, i32 768)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %5 = add i64 %2, 2
  br label %1

6:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainB32_cons_buff_0, ptr @of_out_mainB32_buff_0, i32 768)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_1_4() {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainA12_cons_buff_0, ptr @of_out_mainA12_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @passthrough(ptr @of_in_mainA12_cons_buff_1, ptr @of_out_mainA12_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %5 = add i64 %2, 2
  br label %1

6:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainA12_cons_buff_0, ptr @of_out_mainA12_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_3_3() {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainB31_cons_buff_0, ptr @of_out_mainB31_buff_0, i32 768)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @passthrough(ptr @of_in_mainB31_cons_buff_1, ptr @of_out_mainB31_buff_1, i32 768)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %5 = add i64 %2, 2
  br label %1

6:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainB31_cons_buff_0, ptr @of_out_mainB31_buff_0, i32 768)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_1_3() {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainA11_cons_buff_0, ptr @of_out_mainA11_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @passthrough(ptr @of_in_mainA11_cons_buff_1, ptr @of_out_mainA11_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %5 = add i64 %2, 2
  br label %1

6:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainA11_cons_buff_0, ptr @of_out_mainA11_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_2_5() {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainB23_cons_buff_0, ptr @of_out_mainB23_buff_0, i32 768)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @passthrough(ptr @of_in_mainB23_cons_buff_1, ptr @of_out_mainB23_buff_1, i32 768)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %5 = add i64 %2, 2
  br label %1

6:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainB23_cons_buff_0, ptr @of_out_mainB23_buff_0, i32 768)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_0_5() {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainA03_cons_buff_0, ptr @of_out_mainA03_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @passthrough(ptr @of_in_mainA03_cons_buff_1, ptr @of_out_mainA03_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %5 = add i64 %2, 2
  br label %1

6:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainA03_cons_buff_0, ptr @of_out_mainA03_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_2_4() {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainB22_cons_buff_0, ptr @of_out_mainB22_buff_0, i32 768)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @passthrough(ptr @of_in_mainB22_cons_buff_1, ptr @of_out_mainB22_buff_1, i32 768)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %5 = add i64 %2, 2
  br label %1

6:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainB22_cons_buff_0, ptr @of_out_mainB22_buff_0, i32 768)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_0_4() {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainA02_cons_buff_0, ptr @of_out_mainA02_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @passthrough(ptr @of_in_mainA02_cons_buff_1, ptr @of_out_mainA02_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %5 = add i64 %2, 2
  br label %1

6:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainA02_cons_buff_0, ptr @of_out_mainA02_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_2_3() {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainB21_cons_buff_0, ptr @of_out_mainB21_buff_0, i32 768)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @passthrough(ptr @of_in_mainB21_cons_buff_1, ptr @of_out_mainB21_buff_1, i32 768)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %5 = add i64 %2, 2
  br label %1

6:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainB21_cons_buff_0, ptr @of_out_mainB21_buff_0, i32 768)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_0_3() {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainA01_cons_buff_0, ptr @of_out_mainA01_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @passthrough(ptr @of_in_mainA01_cons_buff_1, ptr @of_out_mainA01_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %5 = add i64 %2, 2
  br label %1

6:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @passthrough(ptr @of_in_mainA01_cons_buff_0, ptr @of_out_mainA01_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
