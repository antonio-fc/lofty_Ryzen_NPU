; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2"

@in0_11_cons_buff_1 = external global [96 x bfloat]
@in0_11_cons_buff_0 = external global [96 x bfloat]
@in0_10_cons_buff_1 = external global [96 x bfloat]
@in0_10_cons_buff_0 = external global [96 x bfloat]
@in0_9_cons_buff_1 = external global [96 x bfloat]
@in0_9_cons_buff_0 = external global [96 x bfloat]
@in0_8_cons_buff_1 = external global [96 x bfloat]
@in0_8_cons_buff_0 = external global [96 x bfloat]
@in0_7_cons_buff_1 = external global [96 x bfloat]
@in0_7_cons_buff_0 = external global [96 x bfloat]
@in0_6_cons_buff_1 = external global [96 x bfloat]
@in0_6_cons_buff_0 = external global [96 x bfloat]
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
@in1_cons_buff_1 = external global [4608 x bfloat]
@in1_cons_buff_0 = external global [4608 x bfloat]
@in2_cons_buff_1 = external global [4608 x bfloat]
@in2_cons_buff_0 = external global [4608 x bfloat]
@of_in_mainA01_cons_buff_5 = external global [768 x bfloat]
@of_in_mainA01_cons_buff_4 = external global [768 x bfloat]
@of_in_mainA01_cons_buff_3 = external global [768 x bfloat]
@of_in_mainA01_cons_buff_2 = external global [768 x bfloat]
@of_in_mainA01_cons_buff_1 = external global [768 x bfloat]
@of_in_mainA01_cons_buff_0 = external global [768 x bfloat]
@of_in_mainB21_cons_buff_5 = external global [768 x bfloat]
@of_in_mainB21_cons_buff_4 = external global [768 x bfloat]
@of_in_mainB21_cons_buff_3 = external global [768 x bfloat]
@of_in_mainB21_cons_buff_2 = external global [768 x bfloat]
@of_in_mainB21_cons_buff_1 = external global [768 x bfloat]
@of_in_mainB21_cons_buff_0 = external global [768 x bfloat]
@of_in_mainA02_cons_buff_5 = external global [768 x bfloat]
@of_in_mainA02_cons_buff_4 = external global [768 x bfloat]
@of_in_mainA02_cons_buff_3 = external global [768 x bfloat]
@of_in_mainA02_cons_buff_2 = external global [768 x bfloat]
@of_in_mainA02_cons_buff_1 = external global [768 x bfloat]
@of_in_mainA02_cons_buff_0 = external global [768 x bfloat]
@of_in_mainB22_cons_buff_5 = external global [768 x bfloat]
@of_in_mainB22_cons_buff_4 = external global [768 x bfloat]
@of_in_mainB22_cons_buff_3 = external global [768 x bfloat]
@of_in_mainB22_cons_buff_2 = external global [768 x bfloat]
@of_in_mainB22_cons_buff_1 = external global [768 x bfloat]
@of_in_mainB22_cons_buff_0 = external global [768 x bfloat]
@of_in_mainA03_cons_buff_5 = external global [768 x bfloat]
@of_in_mainA03_cons_buff_4 = external global [768 x bfloat]
@of_in_mainA03_cons_buff_3 = external global [768 x bfloat]
@of_in_mainA03_cons_buff_2 = external global [768 x bfloat]
@of_in_mainA03_cons_buff_1 = external global [768 x bfloat]
@of_in_mainA03_cons_buff_0 = external global [768 x bfloat]
@of_in_mainB23_cons_buff_5 = external global [768 x bfloat]
@of_in_mainB23_cons_buff_4 = external global [768 x bfloat]
@of_in_mainB23_cons_buff_3 = external global [768 x bfloat]
@of_in_mainB23_cons_buff_2 = external global [768 x bfloat]
@of_in_mainB23_cons_buff_1 = external global [768 x bfloat]
@of_in_mainB23_cons_buff_0 = external global [768 x bfloat]
@of_in_mainA11_cons_buff_5 = external global [768 x bfloat]
@of_in_mainA11_cons_buff_4 = external global [768 x bfloat]
@of_in_mainA11_cons_buff_3 = external global [768 x bfloat]
@of_in_mainA11_cons_buff_2 = external global [768 x bfloat]
@of_in_mainA11_cons_buff_1 = external global [768 x bfloat]
@of_in_mainA11_cons_buff_0 = external global [768 x bfloat]
@of_in_mainB31_cons_buff_5 = external global [768 x bfloat]
@of_in_mainB31_cons_buff_4 = external global [768 x bfloat]
@of_in_mainB31_cons_buff_3 = external global [768 x bfloat]
@of_in_mainB31_cons_buff_2 = external global [768 x bfloat]
@of_in_mainB31_cons_buff_1 = external global [768 x bfloat]
@of_in_mainB31_cons_buff_0 = external global [768 x bfloat]
@of_in_mainA12_cons_buff_5 = external global [768 x bfloat]
@of_in_mainA12_cons_buff_4 = external global [768 x bfloat]
@of_in_mainA12_cons_buff_3 = external global [768 x bfloat]
@of_in_mainA12_cons_buff_2 = external global [768 x bfloat]
@of_in_mainA12_cons_buff_1 = external global [768 x bfloat]
@of_in_mainA12_cons_buff_0 = external global [768 x bfloat]
@of_in_mainB32_cons_buff_5 = external global [768 x bfloat]
@of_in_mainB32_cons_buff_4 = external global [768 x bfloat]
@of_in_mainB32_cons_buff_3 = external global [768 x bfloat]
@of_in_mainB32_cons_buff_2 = external global [768 x bfloat]
@of_in_mainB32_cons_buff_1 = external global [768 x bfloat]
@of_in_mainB32_cons_buff_0 = external global [768 x bfloat]
@of_in_mainA13_cons_buff_5 = external global [768 x bfloat]
@of_in_mainA13_cons_buff_4 = external global [768 x bfloat]
@of_in_mainA13_cons_buff_3 = external global [768 x bfloat]
@of_in_mainA13_cons_buff_2 = external global [768 x bfloat]
@of_in_mainA13_cons_buff_1 = external global [768 x bfloat]
@of_in_mainA13_cons_buff_0 = external global [768 x bfloat]
@of_in_mainB33_cons_buff_5 = external global [768 x bfloat]
@of_in_mainB33_cons_buff_4 = external global [768 x bfloat]
@of_in_mainB33_cons_buff_3 = external global [768 x bfloat]
@of_in_mainB33_cons_buff_2 = external global [768 x bfloat]
@of_in_mainB33_cons_buff_1 = external global [768 x bfloat]
@of_in_mainB33_cons_buff_0 = external global [768 x bfloat]
@of_out_mainA01_buff_1 = external global [32 x bfloat]
@of_out_mainA01_buff_0 = external global [32 x bfloat]
@of_out_mainB21_buff_1 = external global [32 x bfloat]
@of_out_mainB21_buff_0 = external global [32 x bfloat]
@of_out_mainA02_buff_1 = external global [32 x bfloat]
@of_out_mainA02_buff_0 = external global [32 x bfloat]
@of_out_mainB22_buff_1 = external global [32 x bfloat]
@of_out_mainB22_buff_0 = external global [32 x bfloat]
@of_out_mainA03_buff_1 = external global [32 x bfloat]
@of_out_mainA03_buff_0 = external global [32 x bfloat]
@of_out_mainB23_buff_1 = external global [32 x bfloat]
@of_out_mainB23_buff_0 = external global [32 x bfloat]
@of_out_mainA11_buff_1 = external global [32 x bfloat]
@of_out_mainA11_buff_0 = external global [32 x bfloat]
@of_out_mainB31_buff_1 = external global [32 x bfloat]
@of_out_mainB31_buff_0 = external global [32 x bfloat]
@of_out_mainA12_buff_1 = external global [32 x bfloat]
@of_out_mainA12_buff_0 = external global [32 x bfloat]
@of_out_mainB32_buff_1 = external global [32 x bfloat]
@of_out_mainB32_buff_0 = external global [32 x bfloat]
@of_out_mainA13_buff_1 = external global [32 x bfloat]
@of_out_mainA13_buff_0 = external global [32 x bfloat]
@of_out_mainB33_buff_1 = external global [32 x bfloat]
@of_out_mainB33_buff_0 = external global [32 x bfloat]
@out1_buff_1 = external global [192 x bfloat]
@out1_buff_0 = external global [192 x bfloat]
@out1_cons_buff_1 = external global [192 x bfloat]
@out1_cons_buff_0 = external global [192 x bfloat]
@out2_buff_1 = external global [192 x bfloat]
@out2_buff_0 = external global [192 x bfloat]
@out2_cons_buff_1 = external global [192 x bfloat]
@out2_cons_buff_0 = external global [192 x bfloat]
@out_buff_1 = external global [32 x bfloat]
@out_buff_0 = external global [32 x bfloat]
@out_cons = external global [32 x bfloat]
@out = external global [32 x bfloat]
@out2_cons = external global [192 x bfloat]
@out2 = external global [192 x bfloat]
@out1_cons = external global [192 x bfloat]
@out1 = external global [192 x bfloat]
@of_out_mainB33_cons = external global [32 x bfloat]
@of_out_mainB33 = external global [32 x bfloat]
@of_out_mainA13_cons = external global [32 x bfloat]
@of_out_mainA13 = external global [32 x bfloat]
@of_out_mainB32_cons = external global [32 x bfloat]
@of_out_mainB32 = external global [32 x bfloat]
@of_out_mainA12_cons = external global [32 x bfloat]
@of_out_mainA12 = external global [32 x bfloat]
@of_out_mainB31_cons = external global [32 x bfloat]
@of_out_mainB31 = external global [32 x bfloat]
@of_out_mainA11_cons = external global [32 x bfloat]
@of_out_mainA11 = external global [32 x bfloat]
@of_out_mainB23_cons = external global [32 x bfloat]
@of_out_mainB23 = external global [32 x bfloat]
@of_out_mainA03_cons = external global [32 x bfloat]
@of_out_mainA03 = external global [32 x bfloat]
@of_out_mainB22_cons = external global [32 x bfloat]
@of_out_mainB22 = external global [32 x bfloat]
@of_out_mainA02_cons = external global [32 x bfloat]
@of_out_mainA02 = external global [32 x bfloat]
@of_out_mainB21_cons = external global [32 x bfloat]
@of_out_mainB21 = external global [32 x bfloat]
@of_out_mainA01_cons = external global [32 x bfloat]
@of_out_mainA01 = external global [32 x bfloat]
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
@in0_0_cons = external global [96 x bfloat]
@in0_1_cons = external global [96 x bfloat]
@in0_2_cons = external global [96 x bfloat]
@in0_3_cons = external global [96 x bfloat]
@in0_4_cons = external global [96 x bfloat]
@in0_5_cons = external global [96 x bfloat]
@in0_6_cons = external global [96 x bfloat]
@in0_7_cons = external global [96 x bfloat]
@in0_8_cons = external global [96 x bfloat]
@in0_9_cons = external global [96 x bfloat]
@in0_10_cons = external global [96 x bfloat]
@in0_11_cons = external global [96 x bfloat]
@in0 = external global [96 x bfloat]

declare void @debug_i32(i32)

declare void @llvm.aie2.put.ms(i32, i32)

declare { i32, i32 } @llvm.aie2.get.ss()

declare void @llvm.aie2.mcd.write.vec(<16 x i32>, i32)

declare <16 x i32> @llvm.aie2.scd.read.vec(i32)

declare void @llvm.aie2.acquire(i32, i32)

declare void @llvm.aie2.release(i32, i32)

declare void @passthrough(ptr, ptr, i32)

declare void @mean(ptr, ptr, ptr, i32)

declare void @main_kernel(bfloat, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32)

define void @core_3_5() {
  br label %1

1:                                                ; preds = %46, %0
  %2 = phi i64 [ %47, %46 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %48

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  %5 = load bfloat, ptr @in0_11_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %6

6:                                                ; preds = %9, %4
  %7 = phi i64 [ %10, %9 ], [ 0, %4 ]
  %8 = icmp slt i64 %7, 2048
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_11_cons_buff_1, ptr @of_in_mainB33_cons_buff_0, ptr @of_in_mainB33_cons_buff_1, ptr @of_in_mainB33_cons_buff_2, ptr @of_in_mainB33_cons_buff_3, ptr @of_in_mainB33_cons_buff_4, ptr @of_out_mainB33_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_11_cons_buff_0, ptr @of_in_mainB33_cons_buff_0, ptr @of_in_mainB33_cons_buff_1, ptr @of_in_mainB33_cons_buff_2, ptr @of_in_mainB33_cons_buff_3, ptr @of_in_mainB33_cons_buff_4, ptr @of_out_mainB33_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %10 = add i64 %7, 2
  br label %6

11:                                               ; preds = %6
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  %12 = load bfloat, ptr @in0_11_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %13

13:                                               ; preds = %16, %11
  %14 = phi i64 [ %17, %16 ], [ 0, %11 ]
  %15 = icmp slt i64 %14, 2048
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_11_cons_buff_0, ptr @of_in_mainB33_cons_buff_5, ptr @of_in_mainB33_cons_buff_0, ptr @of_in_mainB33_cons_buff_1, ptr @of_in_mainB33_cons_buff_2, ptr @of_in_mainB33_cons_buff_3, ptr @of_out_mainB33_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_11_cons_buff_1, ptr @of_in_mainB33_cons_buff_5, ptr @of_in_mainB33_cons_buff_0, ptr @of_in_mainB33_cons_buff_1, ptr @of_in_mainB33_cons_buff_2, ptr @of_in_mainB33_cons_buff_3, ptr @of_out_mainB33_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %14, 2
  br label %13

18:                                               ; preds = %13
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  %19 = load bfloat, ptr @in0_11_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %20

20:                                               ; preds = %23, %18
  %21 = phi i64 [ %24, %23 ], [ 0, %18 ]
  %22 = icmp slt i64 %21, 2048
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_11_cons_buff_1, ptr @of_in_mainB33_cons_buff_4, ptr @of_in_mainB33_cons_buff_5, ptr @of_in_mainB33_cons_buff_0, ptr @of_in_mainB33_cons_buff_1, ptr @of_in_mainB33_cons_buff_2, ptr @of_out_mainB33_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_11_cons_buff_0, ptr @of_in_mainB33_cons_buff_4, ptr @of_in_mainB33_cons_buff_5, ptr @of_in_mainB33_cons_buff_0, ptr @of_in_mainB33_cons_buff_1, ptr @of_in_mainB33_cons_buff_2, ptr @of_out_mainB33_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %24 = add i64 %21, 2
  br label %20

25:                                               ; preds = %20
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  %26 = load bfloat, ptr @in0_11_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %27

27:                                               ; preds = %30, %25
  %28 = phi i64 [ %31, %30 ], [ 0, %25 ]
  %29 = icmp slt i64 %28, 2048
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_11_cons_buff_0, ptr @of_in_mainB33_cons_buff_3, ptr @of_in_mainB33_cons_buff_4, ptr @of_in_mainB33_cons_buff_5, ptr @of_in_mainB33_cons_buff_0, ptr @of_in_mainB33_cons_buff_1, ptr @of_out_mainB33_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_11_cons_buff_1, ptr @of_in_mainB33_cons_buff_3, ptr @of_in_mainB33_cons_buff_4, ptr @of_in_mainB33_cons_buff_5, ptr @of_in_mainB33_cons_buff_0, ptr @of_in_mainB33_cons_buff_1, ptr @of_out_mainB33_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %31 = add i64 %28, 2
  br label %27

32:                                               ; preds = %27
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  %33 = load bfloat, ptr @in0_11_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %34

34:                                               ; preds = %37, %32
  %35 = phi i64 [ %38, %37 ], [ 0, %32 ]
  %36 = icmp slt i64 %35, 2048
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_11_cons_buff_1, ptr @of_in_mainB33_cons_buff_2, ptr @of_in_mainB33_cons_buff_3, ptr @of_in_mainB33_cons_buff_4, ptr @of_in_mainB33_cons_buff_5, ptr @of_in_mainB33_cons_buff_0, ptr @of_out_mainB33_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_11_cons_buff_0, ptr @of_in_mainB33_cons_buff_2, ptr @of_in_mainB33_cons_buff_3, ptr @of_in_mainB33_cons_buff_4, ptr @of_in_mainB33_cons_buff_5, ptr @of_in_mainB33_cons_buff_0, ptr @of_out_mainB33_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %38 = add i64 %35, 2
  br label %34

39:                                               ; preds = %34
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  %40 = load bfloat, ptr @in0_11_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %41

41:                                               ; preds = %44, %39
  %42 = phi i64 [ %45, %44 ], [ 0, %39 ]
  %43 = icmp slt i64 %42, 2048
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_11_cons_buff_0, ptr @of_in_mainB33_cons_buff_1, ptr @of_in_mainB33_cons_buff_2, ptr @of_in_mainB33_cons_buff_3, ptr @of_in_mainB33_cons_buff_4, ptr @of_in_mainB33_cons_buff_5, ptr @of_out_mainB33_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_11_cons_buff_1, ptr @of_in_mainB33_cons_buff_1, ptr @of_in_mainB33_cons_buff_2, ptr @of_in_mainB33_cons_buff_3, ptr @of_in_mainB33_cons_buff_4, ptr @of_in_mainB33_cons_buff_5, ptr @of_out_mainB33_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %45 = add i64 %42, 2
  br label %41

46:                                               ; preds = %41
  call void @llvm.aie2.release(i32 50, i32 5)
  %47 = add i64 %2, 6
  br label %1

48:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  %49 = load bfloat, ptr @in0_11_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %50

50:                                               ; preds = %53, %48
  %51 = phi i64 [ %54, %53 ], [ 0, %48 ]
  %52 = icmp slt i64 %51, 2048
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_11_cons_buff_1, ptr @of_in_mainB33_cons_buff_0, ptr @of_in_mainB33_cons_buff_1, ptr @of_in_mainB33_cons_buff_2, ptr @of_in_mainB33_cons_buff_3, ptr @of_in_mainB33_cons_buff_4, ptr @of_out_mainB33_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_11_cons_buff_0, ptr @of_in_mainB33_cons_buff_0, ptr @of_in_mainB33_cons_buff_1, ptr @of_in_mainB33_cons_buff_2, ptr @of_in_mainB33_cons_buff_3, ptr @of_in_mainB33_cons_buff_4, ptr @of_out_mainB33_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %54 = add i64 %51, 2
  br label %50

55:                                               ; preds = %50
  call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_1_5() {
  br label %1

1:                                                ; preds = %46, %0
  %2 = phi i64 [ %47, %46 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %48

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  %5 = load bfloat, ptr @in0_5_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %6

6:                                                ; preds = %9, %4
  %7 = phi i64 [ %10, %9 ], [ 0, %4 ]
  %8 = icmp slt i64 %7, 2048
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_5_cons_buff_1, ptr @of_in_mainA13_cons_buff_0, ptr @of_in_mainA13_cons_buff_1, ptr @of_in_mainA13_cons_buff_2, ptr @of_in_mainA13_cons_buff_3, ptr @of_in_mainA13_cons_buff_4, ptr @of_out_mainA13_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_5_cons_buff_0, ptr @of_in_mainA13_cons_buff_0, ptr @of_in_mainA13_cons_buff_1, ptr @of_in_mainA13_cons_buff_2, ptr @of_in_mainA13_cons_buff_3, ptr @of_in_mainA13_cons_buff_4, ptr @of_out_mainA13_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %10 = add i64 %7, 2
  br label %6

11:                                               ; preds = %6
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  %12 = load bfloat, ptr @in0_5_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %13

13:                                               ; preds = %16, %11
  %14 = phi i64 [ %17, %16 ], [ 0, %11 ]
  %15 = icmp slt i64 %14, 2048
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_5_cons_buff_0, ptr @of_in_mainA13_cons_buff_5, ptr @of_in_mainA13_cons_buff_0, ptr @of_in_mainA13_cons_buff_1, ptr @of_in_mainA13_cons_buff_2, ptr @of_in_mainA13_cons_buff_3, ptr @of_out_mainA13_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_5_cons_buff_1, ptr @of_in_mainA13_cons_buff_5, ptr @of_in_mainA13_cons_buff_0, ptr @of_in_mainA13_cons_buff_1, ptr @of_in_mainA13_cons_buff_2, ptr @of_in_mainA13_cons_buff_3, ptr @of_out_mainA13_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %14, 2
  br label %13

18:                                               ; preds = %13
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  %19 = load bfloat, ptr @in0_5_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %20

20:                                               ; preds = %23, %18
  %21 = phi i64 [ %24, %23 ], [ 0, %18 ]
  %22 = icmp slt i64 %21, 2048
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_5_cons_buff_1, ptr @of_in_mainA13_cons_buff_4, ptr @of_in_mainA13_cons_buff_5, ptr @of_in_mainA13_cons_buff_0, ptr @of_in_mainA13_cons_buff_1, ptr @of_in_mainA13_cons_buff_2, ptr @of_out_mainA13_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_5_cons_buff_0, ptr @of_in_mainA13_cons_buff_4, ptr @of_in_mainA13_cons_buff_5, ptr @of_in_mainA13_cons_buff_0, ptr @of_in_mainA13_cons_buff_1, ptr @of_in_mainA13_cons_buff_2, ptr @of_out_mainA13_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %24 = add i64 %21, 2
  br label %20

25:                                               ; preds = %20
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  %26 = load bfloat, ptr @in0_5_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %27

27:                                               ; preds = %30, %25
  %28 = phi i64 [ %31, %30 ], [ 0, %25 ]
  %29 = icmp slt i64 %28, 2048
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_5_cons_buff_0, ptr @of_in_mainA13_cons_buff_3, ptr @of_in_mainA13_cons_buff_4, ptr @of_in_mainA13_cons_buff_5, ptr @of_in_mainA13_cons_buff_0, ptr @of_in_mainA13_cons_buff_1, ptr @of_out_mainA13_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_5_cons_buff_1, ptr @of_in_mainA13_cons_buff_3, ptr @of_in_mainA13_cons_buff_4, ptr @of_in_mainA13_cons_buff_5, ptr @of_in_mainA13_cons_buff_0, ptr @of_in_mainA13_cons_buff_1, ptr @of_out_mainA13_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %31 = add i64 %28, 2
  br label %27

32:                                               ; preds = %27
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  %33 = load bfloat, ptr @in0_5_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %34

34:                                               ; preds = %37, %32
  %35 = phi i64 [ %38, %37 ], [ 0, %32 ]
  %36 = icmp slt i64 %35, 2048
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_5_cons_buff_1, ptr @of_in_mainA13_cons_buff_2, ptr @of_in_mainA13_cons_buff_3, ptr @of_in_mainA13_cons_buff_4, ptr @of_in_mainA13_cons_buff_5, ptr @of_in_mainA13_cons_buff_0, ptr @of_out_mainA13_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_5_cons_buff_0, ptr @of_in_mainA13_cons_buff_2, ptr @of_in_mainA13_cons_buff_3, ptr @of_in_mainA13_cons_buff_4, ptr @of_in_mainA13_cons_buff_5, ptr @of_in_mainA13_cons_buff_0, ptr @of_out_mainA13_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %38 = add i64 %35, 2
  br label %34

39:                                               ; preds = %34
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  %40 = load bfloat, ptr @in0_5_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %41

41:                                               ; preds = %44, %39
  %42 = phi i64 [ %45, %44 ], [ 0, %39 ]
  %43 = icmp slt i64 %42, 2048
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_5_cons_buff_0, ptr @of_in_mainA13_cons_buff_1, ptr @of_in_mainA13_cons_buff_2, ptr @of_in_mainA13_cons_buff_3, ptr @of_in_mainA13_cons_buff_4, ptr @of_in_mainA13_cons_buff_5, ptr @of_out_mainA13_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_5_cons_buff_1, ptr @of_in_mainA13_cons_buff_1, ptr @of_in_mainA13_cons_buff_2, ptr @of_in_mainA13_cons_buff_3, ptr @of_in_mainA13_cons_buff_4, ptr @of_in_mainA13_cons_buff_5, ptr @of_out_mainA13_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %45 = add i64 %42, 2
  br label %41

46:                                               ; preds = %41
  call void @llvm.aie2.release(i32 50, i32 5)
  %47 = add i64 %2, 6
  br label %1

48:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  %49 = load bfloat, ptr @in0_5_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %50

50:                                               ; preds = %53, %48
  %51 = phi i64 [ %54, %53 ], [ 0, %48 ]
  %52 = icmp slt i64 %51, 2048
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_5_cons_buff_1, ptr @of_in_mainA13_cons_buff_0, ptr @of_in_mainA13_cons_buff_1, ptr @of_in_mainA13_cons_buff_2, ptr @of_in_mainA13_cons_buff_3, ptr @of_in_mainA13_cons_buff_4, ptr @of_out_mainA13_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_5_cons_buff_0, ptr @of_in_mainA13_cons_buff_0, ptr @of_in_mainA13_cons_buff_1, ptr @of_in_mainA13_cons_buff_2, ptr @of_in_mainA13_cons_buff_3, ptr @of_in_mainA13_cons_buff_4, ptr @of_out_mainA13_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %54 = add i64 %51, 2
  br label %50

55:                                               ; preds = %50
  call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_3_4() {
  br label %1

1:                                                ; preds = %46, %0
  %2 = phi i64 [ %47, %46 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %48

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  %5 = load bfloat, ptr @in0_10_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %6

6:                                                ; preds = %9, %4
  %7 = phi i64 [ %10, %9 ], [ 0, %4 ]
  %8 = icmp slt i64 %7, 2048
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_10_cons_buff_1, ptr @of_in_mainB32_cons_buff_0, ptr @of_in_mainB32_cons_buff_1, ptr @of_in_mainB32_cons_buff_2, ptr @of_in_mainB32_cons_buff_3, ptr @of_in_mainB32_cons_buff_4, ptr @of_out_mainB32_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_10_cons_buff_0, ptr @of_in_mainB32_cons_buff_0, ptr @of_in_mainB32_cons_buff_1, ptr @of_in_mainB32_cons_buff_2, ptr @of_in_mainB32_cons_buff_3, ptr @of_in_mainB32_cons_buff_4, ptr @of_out_mainB32_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %10 = add i64 %7, 2
  br label %6

11:                                               ; preds = %6
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  %12 = load bfloat, ptr @in0_10_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %13

13:                                               ; preds = %16, %11
  %14 = phi i64 [ %17, %16 ], [ 0, %11 ]
  %15 = icmp slt i64 %14, 2048
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_10_cons_buff_0, ptr @of_in_mainB32_cons_buff_5, ptr @of_in_mainB32_cons_buff_0, ptr @of_in_mainB32_cons_buff_1, ptr @of_in_mainB32_cons_buff_2, ptr @of_in_mainB32_cons_buff_3, ptr @of_out_mainB32_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_10_cons_buff_1, ptr @of_in_mainB32_cons_buff_5, ptr @of_in_mainB32_cons_buff_0, ptr @of_in_mainB32_cons_buff_1, ptr @of_in_mainB32_cons_buff_2, ptr @of_in_mainB32_cons_buff_3, ptr @of_out_mainB32_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %14, 2
  br label %13

18:                                               ; preds = %13
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  %19 = load bfloat, ptr @in0_10_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %20

20:                                               ; preds = %23, %18
  %21 = phi i64 [ %24, %23 ], [ 0, %18 ]
  %22 = icmp slt i64 %21, 2048
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_10_cons_buff_1, ptr @of_in_mainB32_cons_buff_4, ptr @of_in_mainB32_cons_buff_5, ptr @of_in_mainB32_cons_buff_0, ptr @of_in_mainB32_cons_buff_1, ptr @of_in_mainB32_cons_buff_2, ptr @of_out_mainB32_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_10_cons_buff_0, ptr @of_in_mainB32_cons_buff_4, ptr @of_in_mainB32_cons_buff_5, ptr @of_in_mainB32_cons_buff_0, ptr @of_in_mainB32_cons_buff_1, ptr @of_in_mainB32_cons_buff_2, ptr @of_out_mainB32_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %24 = add i64 %21, 2
  br label %20

25:                                               ; preds = %20
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  %26 = load bfloat, ptr @in0_10_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %27

27:                                               ; preds = %30, %25
  %28 = phi i64 [ %31, %30 ], [ 0, %25 ]
  %29 = icmp slt i64 %28, 2048
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_10_cons_buff_0, ptr @of_in_mainB32_cons_buff_3, ptr @of_in_mainB32_cons_buff_4, ptr @of_in_mainB32_cons_buff_5, ptr @of_in_mainB32_cons_buff_0, ptr @of_in_mainB32_cons_buff_1, ptr @of_out_mainB32_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_10_cons_buff_1, ptr @of_in_mainB32_cons_buff_3, ptr @of_in_mainB32_cons_buff_4, ptr @of_in_mainB32_cons_buff_5, ptr @of_in_mainB32_cons_buff_0, ptr @of_in_mainB32_cons_buff_1, ptr @of_out_mainB32_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %31 = add i64 %28, 2
  br label %27

32:                                               ; preds = %27
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  %33 = load bfloat, ptr @in0_10_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %34

34:                                               ; preds = %37, %32
  %35 = phi i64 [ %38, %37 ], [ 0, %32 ]
  %36 = icmp slt i64 %35, 2048
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_10_cons_buff_1, ptr @of_in_mainB32_cons_buff_2, ptr @of_in_mainB32_cons_buff_3, ptr @of_in_mainB32_cons_buff_4, ptr @of_in_mainB32_cons_buff_5, ptr @of_in_mainB32_cons_buff_0, ptr @of_out_mainB32_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_10_cons_buff_0, ptr @of_in_mainB32_cons_buff_2, ptr @of_in_mainB32_cons_buff_3, ptr @of_in_mainB32_cons_buff_4, ptr @of_in_mainB32_cons_buff_5, ptr @of_in_mainB32_cons_buff_0, ptr @of_out_mainB32_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %38 = add i64 %35, 2
  br label %34

39:                                               ; preds = %34
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  %40 = load bfloat, ptr @in0_10_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %41

41:                                               ; preds = %44, %39
  %42 = phi i64 [ %45, %44 ], [ 0, %39 ]
  %43 = icmp slt i64 %42, 2048
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_10_cons_buff_0, ptr @of_in_mainB32_cons_buff_1, ptr @of_in_mainB32_cons_buff_2, ptr @of_in_mainB32_cons_buff_3, ptr @of_in_mainB32_cons_buff_4, ptr @of_in_mainB32_cons_buff_5, ptr @of_out_mainB32_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_10_cons_buff_1, ptr @of_in_mainB32_cons_buff_1, ptr @of_in_mainB32_cons_buff_2, ptr @of_in_mainB32_cons_buff_3, ptr @of_in_mainB32_cons_buff_4, ptr @of_in_mainB32_cons_buff_5, ptr @of_out_mainB32_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %45 = add i64 %42, 2
  br label %41

46:                                               ; preds = %41
  call void @llvm.aie2.release(i32 50, i32 5)
  %47 = add i64 %2, 6
  br label %1

48:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  %49 = load bfloat, ptr @in0_10_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %50

50:                                               ; preds = %53, %48
  %51 = phi i64 [ %54, %53 ], [ 0, %48 ]
  %52 = icmp slt i64 %51, 2048
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_10_cons_buff_1, ptr @of_in_mainB32_cons_buff_0, ptr @of_in_mainB32_cons_buff_1, ptr @of_in_mainB32_cons_buff_2, ptr @of_in_mainB32_cons_buff_3, ptr @of_in_mainB32_cons_buff_4, ptr @of_out_mainB32_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_10_cons_buff_0, ptr @of_in_mainB32_cons_buff_0, ptr @of_in_mainB32_cons_buff_1, ptr @of_in_mainB32_cons_buff_2, ptr @of_in_mainB32_cons_buff_3, ptr @of_in_mainB32_cons_buff_4, ptr @of_out_mainB32_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %54 = add i64 %51, 2
  br label %50

55:                                               ; preds = %50
  call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_1_4() {
  br label %1

1:                                                ; preds = %46, %0
  %2 = phi i64 [ %47, %46 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %48

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  %5 = load bfloat, ptr @in0_4_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %6

6:                                                ; preds = %9, %4
  %7 = phi i64 [ %10, %9 ], [ 0, %4 ]
  %8 = icmp slt i64 %7, 2048
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_4_cons_buff_1, ptr @of_in_mainA12_cons_buff_0, ptr @of_in_mainA12_cons_buff_1, ptr @of_in_mainA12_cons_buff_2, ptr @of_in_mainA12_cons_buff_3, ptr @of_in_mainA12_cons_buff_4, ptr @of_out_mainA12_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_4_cons_buff_0, ptr @of_in_mainA12_cons_buff_0, ptr @of_in_mainA12_cons_buff_1, ptr @of_in_mainA12_cons_buff_2, ptr @of_in_mainA12_cons_buff_3, ptr @of_in_mainA12_cons_buff_4, ptr @of_out_mainA12_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %10 = add i64 %7, 2
  br label %6

11:                                               ; preds = %6
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  %12 = load bfloat, ptr @in0_4_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %13

13:                                               ; preds = %16, %11
  %14 = phi i64 [ %17, %16 ], [ 0, %11 ]
  %15 = icmp slt i64 %14, 2048
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_4_cons_buff_0, ptr @of_in_mainA12_cons_buff_5, ptr @of_in_mainA12_cons_buff_0, ptr @of_in_mainA12_cons_buff_1, ptr @of_in_mainA12_cons_buff_2, ptr @of_in_mainA12_cons_buff_3, ptr @of_out_mainA12_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_4_cons_buff_1, ptr @of_in_mainA12_cons_buff_5, ptr @of_in_mainA12_cons_buff_0, ptr @of_in_mainA12_cons_buff_1, ptr @of_in_mainA12_cons_buff_2, ptr @of_in_mainA12_cons_buff_3, ptr @of_out_mainA12_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %14, 2
  br label %13

18:                                               ; preds = %13
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  %19 = load bfloat, ptr @in0_4_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %20

20:                                               ; preds = %23, %18
  %21 = phi i64 [ %24, %23 ], [ 0, %18 ]
  %22 = icmp slt i64 %21, 2048
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_4_cons_buff_1, ptr @of_in_mainA12_cons_buff_4, ptr @of_in_mainA12_cons_buff_5, ptr @of_in_mainA12_cons_buff_0, ptr @of_in_mainA12_cons_buff_1, ptr @of_in_mainA12_cons_buff_2, ptr @of_out_mainA12_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_4_cons_buff_0, ptr @of_in_mainA12_cons_buff_4, ptr @of_in_mainA12_cons_buff_5, ptr @of_in_mainA12_cons_buff_0, ptr @of_in_mainA12_cons_buff_1, ptr @of_in_mainA12_cons_buff_2, ptr @of_out_mainA12_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %24 = add i64 %21, 2
  br label %20

25:                                               ; preds = %20
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  %26 = load bfloat, ptr @in0_4_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %27

27:                                               ; preds = %30, %25
  %28 = phi i64 [ %31, %30 ], [ 0, %25 ]
  %29 = icmp slt i64 %28, 2048
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_4_cons_buff_0, ptr @of_in_mainA12_cons_buff_3, ptr @of_in_mainA12_cons_buff_4, ptr @of_in_mainA12_cons_buff_5, ptr @of_in_mainA12_cons_buff_0, ptr @of_in_mainA12_cons_buff_1, ptr @of_out_mainA12_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_4_cons_buff_1, ptr @of_in_mainA12_cons_buff_3, ptr @of_in_mainA12_cons_buff_4, ptr @of_in_mainA12_cons_buff_5, ptr @of_in_mainA12_cons_buff_0, ptr @of_in_mainA12_cons_buff_1, ptr @of_out_mainA12_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %31 = add i64 %28, 2
  br label %27

32:                                               ; preds = %27
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  %33 = load bfloat, ptr @in0_4_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %34

34:                                               ; preds = %37, %32
  %35 = phi i64 [ %38, %37 ], [ 0, %32 ]
  %36 = icmp slt i64 %35, 2048
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_4_cons_buff_1, ptr @of_in_mainA12_cons_buff_2, ptr @of_in_mainA12_cons_buff_3, ptr @of_in_mainA12_cons_buff_4, ptr @of_in_mainA12_cons_buff_5, ptr @of_in_mainA12_cons_buff_0, ptr @of_out_mainA12_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_4_cons_buff_0, ptr @of_in_mainA12_cons_buff_2, ptr @of_in_mainA12_cons_buff_3, ptr @of_in_mainA12_cons_buff_4, ptr @of_in_mainA12_cons_buff_5, ptr @of_in_mainA12_cons_buff_0, ptr @of_out_mainA12_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %38 = add i64 %35, 2
  br label %34

39:                                               ; preds = %34
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  %40 = load bfloat, ptr @in0_4_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %41

41:                                               ; preds = %44, %39
  %42 = phi i64 [ %45, %44 ], [ 0, %39 ]
  %43 = icmp slt i64 %42, 2048
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_4_cons_buff_0, ptr @of_in_mainA12_cons_buff_1, ptr @of_in_mainA12_cons_buff_2, ptr @of_in_mainA12_cons_buff_3, ptr @of_in_mainA12_cons_buff_4, ptr @of_in_mainA12_cons_buff_5, ptr @of_out_mainA12_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_4_cons_buff_1, ptr @of_in_mainA12_cons_buff_1, ptr @of_in_mainA12_cons_buff_2, ptr @of_in_mainA12_cons_buff_3, ptr @of_in_mainA12_cons_buff_4, ptr @of_in_mainA12_cons_buff_5, ptr @of_out_mainA12_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %45 = add i64 %42, 2
  br label %41

46:                                               ; preds = %41
  call void @llvm.aie2.release(i32 50, i32 5)
  %47 = add i64 %2, 6
  br label %1

48:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  %49 = load bfloat, ptr @in0_4_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %50

50:                                               ; preds = %53, %48
  %51 = phi i64 [ %54, %53 ], [ 0, %48 ]
  %52 = icmp slt i64 %51, 2048
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_4_cons_buff_1, ptr @of_in_mainA12_cons_buff_0, ptr @of_in_mainA12_cons_buff_1, ptr @of_in_mainA12_cons_buff_2, ptr @of_in_mainA12_cons_buff_3, ptr @of_in_mainA12_cons_buff_4, ptr @of_out_mainA12_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_4_cons_buff_0, ptr @of_in_mainA12_cons_buff_0, ptr @of_in_mainA12_cons_buff_1, ptr @of_in_mainA12_cons_buff_2, ptr @of_in_mainA12_cons_buff_3, ptr @of_in_mainA12_cons_buff_4, ptr @of_out_mainA12_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %54 = add i64 %51, 2
  br label %50

55:                                               ; preds = %50
  call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_3_3() {
  br label %1

1:                                                ; preds = %46, %0
  %2 = phi i64 [ %47, %46 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %48

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  %5 = load bfloat, ptr @in0_9_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %6

6:                                                ; preds = %9, %4
  %7 = phi i64 [ %10, %9 ], [ 0, %4 ]
  %8 = icmp slt i64 %7, 2048
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_9_cons_buff_1, ptr @of_in_mainB31_cons_buff_0, ptr @of_in_mainB31_cons_buff_1, ptr @of_in_mainB31_cons_buff_2, ptr @of_in_mainB31_cons_buff_3, ptr @of_in_mainB31_cons_buff_4, ptr @of_out_mainB31_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_9_cons_buff_0, ptr @of_in_mainB31_cons_buff_0, ptr @of_in_mainB31_cons_buff_1, ptr @of_in_mainB31_cons_buff_2, ptr @of_in_mainB31_cons_buff_3, ptr @of_in_mainB31_cons_buff_4, ptr @of_out_mainB31_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %10 = add i64 %7, 2
  br label %6

11:                                               ; preds = %6
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  %12 = load bfloat, ptr @in0_9_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %13

13:                                               ; preds = %16, %11
  %14 = phi i64 [ %17, %16 ], [ 0, %11 ]
  %15 = icmp slt i64 %14, 2048
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_9_cons_buff_0, ptr @of_in_mainB31_cons_buff_5, ptr @of_in_mainB31_cons_buff_0, ptr @of_in_mainB31_cons_buff_1, ptr @of_in_mainB31_cons_buff_2, ptr @of_in_mainB31_cons_buff_3, ptr @of_out_mainB31_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_9_cons_buff_1, ptr @of_in_mainB31_cons_buff_5, ptr @of_in_mainB31_cons_buff_0, ptr @of_in_mainB31_cons_buff_1, ptr @of_in_mainB31_cons_buff_2, ptr @of_in_mainB31_cons_buff_3, ptr @of_out_mainB31_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %14, 2
  br label %13

18:                                               ; preds = %13
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  %19 = load bfloat, ptr @in0_9_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %20

20:                                               ; preds = %23, %18
  %21 = phi i64 [ %24, %23 ], [ 0, %18 ]
  %22 = icmp slt i64 %21, 2048
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_9_cons_buff_1, ptr @of_in_mainB31_cons_buff_4, ptr @of_in_mainB31_cons_buff_5, ptr @of_in_mainB31_cons_buff_0, ptr @of_in_mainB31_cons_buff_1, ptr @of_in_mainB31_cons_buff_2, ptr @of_out_mainB31_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_9_cons_buff_0, ptr @of_in_mainB31_cons_buff_4, ptr @of_in_mainB31_cons_buff_5, ptr @of_in_mainB31_cons_buff_0, ptr @of_in_mainB31_cons_buff_1, ptr @of_in_mainB31_cons_buff_2, ptr @of_out_mainB31_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %24 = add i64 %21, 2
  br label %20

25:                                               ; preds = %20
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  %26 = load bfloat, ptr @in0_9_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %27

27:                                               ; preds = %30, %25
  %28 = phi i64 [ %31, %30 ], [ 0, %25 ]
  %29 = icmp slt i64 %28, 2048
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_9_cons_buff_0, ptr @of_in_mainB31_cons_buff_3, ptr @of_in_mainB31_cons_buff_4, ptr @of_in_mainB31_cons_buff_5, ptr @of_in_mainB31_cons_buff_0, ptr @of_in_mainB31_cons_buff_1, ptr @of_out_mainB31_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_9_cons_buff_1, ptr @of_in_mainB31_cons_buff_3, ptr @of_in_mainB31_cons_buff_4, ptr @of_in_mainB31_cons_buff_5, ptr @of_in_mainB31_cons_buff_0, ptr @of_in_mainB31_cons_buff_1, ptr @of_out_mainB31_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %31 = add i64 %28, 2
  br label %27

32:                                               ; preds = %27
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  %33 = load bfloat, ptr @in0_9_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %34

34:                                               ; preds = %37, %32
  %35 = phi i64 [ %38, %37 ], [ 0, %32 ]
  %36 = icmp slt i64 %35, 2048
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_9_cons_buff_1, ptr @of_in_mainB31_cons_buff_2, ptr @of_in_mainB31_cons_buff_3, ptr @of_in_mainB31_cons_buff_4, ptr @of_in_mainB31_cons_buff_5, ptr @of_in_mainB31_cons_buff_0, ptr @of_out_mainB31_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_9_cons_buff_0, ptr @of_in_mainB31_cons_buff_2, ptr @of_in_mainB31_cons_buff_3, ptr @of_in_mainB31_cons_buff_4, ptr @of_in_mainB31_cons_buff_5, ptr @of_in_mainB31_cons_buff_0, ptr @of_out_mainB31_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %38 = add i64 %35, 2
  br label %34

39:                                               ; preds = %34
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  %40 = load bfloat, ptr @in0_9_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %41

41:                                               ; preds = %44, %39
  %42 = phi i64 [ %45, %44 ], [ 0, %39 ]
  %43 = icmp slt i64 %42, 2048
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_9_cons_buff_0, ptr @of_in_mainB31_cons_buff_1, ptr @of_in_mainB31_cons_buff_2, ptr @of_in_mainB31_cons_buff_3, ptr @of_in_mainB31_cons_buff_4, ptr @of_in_mainB31_cons_buff_5, ptr @of_out_mainB31_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_9_cons_buff_1, ptr @of_in_mainB31_cons_buff_1, ptr @of_in_mainB31_cons_buff_2, ptr @of_in_mainB31_cons_buff_3, ptr @of_in_mainB31_cons_buff_4, ptr @of_in_mainB31_cons_buff_5, ptr @of_out_mainB31_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %45 = add i64 %42, 2
  br label %41

46:                                               ; preds = %41
  call void @llvm.aie2.release(i32 50, i32 5)
  %47 = add i64 %2, 6
  br label %1

48:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  %49 = load bfloat, ptr @in0_9_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %50

50:                                               ; preds = %53, %48
  %51 = phi i64 [ %54, %53 ], [ 0, %48 ]
  %52 = icmp slt i64 %51, 2048
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_9_cons_buff_1, ptr @of_in_mainB31_cons_buff_0, ptr @of_in_mainB31_cons_buff_1, ptr @of_in_mainB31_cons_buff_2, ptr @of_in_mainB31_cons_buff_3, ptr @of_in_mainB31_cons_buff_4, ptr @of_out_mainB31_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_9_cons_buff_0, ptr @of_in_mainB31_cons_buff_0, ptr @of_in_mainB31_cons_buff_1, ptr @of_in_mainB31_cons_buff_2, ptr @of_in_mainB31_cons_buff_3, ptr @of_in_mainB31_cons_buff_4, ptr @of_out_mainB31_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %54 = add i64 %51, 2
  br label %50

55:                                               ; preds = %50
  call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_1_3() {
  br label %1

1:                                                ; preds = %46, %0
  %2 = phi i64 [ %47, %46 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %48

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  %5 = load bfloat, ptr @in0_3_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %6

6:                                                ; preds = %9, %4
  %7 = phi i64 [ %10, %9 ], [ 0, %4 ]
  %8 = icmp slt i64 %7, 2048
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_3_cons_buff_1, ptr @of_in_mainA11_cons_buff_0, ptr @of_in_mainA11_cons_buff_1, ptr @of_in_mainA11_cons_buff_2, ptr @of_in_mainA11_cons_buff_3, ptr @of_in_mainA11_cons_buff_4, ptr @of_out_mainA11_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_3_cons_buff_0, ptr @of_in_mainA11_cons_buff_0, ptr @of_in_mainA11_cons_buff_1, ptr @of_in_mainA11_cons_buff_2, ptr @of_in_mainA11_cons_buff_3, ptr @of_in_mainA11_cons_buff_4, ptr @of_out_mainA11_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %10 = add i64 %7, 2
  br label %6

11:                                               ; preds = %6
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  %12 = load bfloat, ptr @in0_3_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %13

13:                                               ; preds = %16, %11
  %14 = phi i64 [ %17, %16 ], [ 0, %11 ]
  %15 = icmp slt i64 %14, 2048
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_3_cons_buff_0, ptr @of_in_mainA11_cons_buff_5, ptr @of_in_mainA11_cons_buff_0, ptr @of_in_mainA11_cons_buff_1, ptr @of_in_mainA11_cons_buff_2, ptr @of_in_mainA11_cons_buff_3, ptr @of_out_mainA11_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_3_cons_buff_1, ptr @of_in_mainA11_cons_buff_5, ptr @of_in_mainA11_cons_buff_0, ptr @of_in_mainA11_cons_buff_1, ptr @of_in_mainA11_cons_buff_2, ptr @of_in_mainA11_cons_buff_3, ptr @of_out_mainA11_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %14, 2
  br label %13

18:                                               ; preds = %13
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  %19 = load bfloat, ptr @in0_3_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %20

20:                                               ; preds = %23, %18
  %21 = phi i64 [ %24, %23 ], [ 0, %18 ]
  %22 = icmp slt i64 %21, 2048
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_3_cons_buff_1, ptr @of_in_mainA11_cons_buff_4, ptr @of_in_mainA11_cons_buff_5, ptr @of_in_mainA11_cons_buff_0, ptr @of_in_mainA11_cons_buff_1, ptr @of_in_mainA11_cons_buff_2, ptr @of_out_mainA11_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_3_cons_buff_0, ptr @of_in_mainA11_cons_buff_4, ptr @of_in_mainA11_cons_buff_5, ptr @of_in_mainA11_cons_buff_0, ptr @of_in_mainA11_cons_buff_1, ptr @of_in_mainA11_cons_buff_2, ptr @of_out_mainA11_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %24 = add i64 %21, 2
  br label %20

25:                                               ; preds = %20
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  %26 = load bfloat, ptr @in0_3_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %27

27:                                               ; preds = %30, %25
  %28 = phi i64 [ %31, %30 ], [ 0, %25 ]
  %29 = icmp slt i64 %28, 2048
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_3_cons_buff_0, ptr @of_in_mainA11_cons_buff_3, ptr @of_in_mainA11_cons_buff_4, ptr @of_in_mainA11_cons_buff_5, ptr @of_in_mainA11_cons_buff_0, ptr @of_in_mainA11_cons_buff_1, ptr @of_out_mainA11_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_3_cons_buff_1, ptr @of_in_mainA11_cons_buff_3, ptr @of_in_mainA11_cons_buff_4, ptr @of_in_mainA11_cons_buff_5, ptr @of_in_mainA11_cons_buff_0, ptr @of_in_mainA11_cons_buff_1, ptr @of_out_mainA11_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %31 = add i64 %28, 2
  br label %27

32:                                               ; preds = %27
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  %33 = load bfloat, ptr @in0_3_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %34

34:                                               ; preds = %37, %32
  %35 = phi i64 [ %38, %37 ], [ 0, %32 ]
  %36 = icmp slt i64 %35, 2048
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_3_cons_buff_1, ptr @of_in_mainA11_cons_buff_2, ptr @of_in_mainA11_cons_buff_3, ptr @of_in_mainA11_cons_buff_4, ptr @of_in_mainA11_cons_buff_5, ptr @of_in_mainA11_cons_buff_0, ptr @of_out_mainA11_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_3_cons_buff_0, ptr @of_in_mainA11_cons_buff_2, ptr @of_in_mainA11_cons_buff_3, ptr @of_in_mainA11_cons_buff_4, ptr @of_in_mainA11_cons_buff_5, ptr @of_in_mainA11_cons_buff_0, ptr @of_out_mainA11_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %38 = add i64 %35, 2
  br label %34

39:                                               ; preds = %34
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  %40 = load bfloat, ptr @in0_3_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %41

41:                                               ; preds = %44, %39
  %42 = phi i64 [ %45, %44 ], [ 0, %39 ]
  %43 = icmp slt i64 %42, 2048
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_3_cons_buff_0, ptr @of_in_mainA11_cons_buff_1, ptr @of_in_mainA11_cons_buff_2, ptr @of_in_mainA11_cons_buff_3, ptr @of_in_mainA11_cons_buff_4, ptr @of_in_mainA11_cons_buff_5, ptr @of_out_mainA11_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_3_cons_buff_1, ptr @of_in_mainA11_cons_buff_1, ptr @of_in_mainA11_cons_buff_2, ptr @of_in_mainA11_cons_buff_3, ptr @of_in_mainA11_cons_buff_4, ptr @of_in_mainA11_cons_buff_5, ptr @of_out_mainA11_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %45 = add i64 %42, 2
  br label %41

46:                                               ; preds = %41
  call void @llvm.aie2.release(i32 50, i32 5)
  %47 = add i64 %2, 6
  br label %1

48:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  %49 = load bfloat, ptr @in0_3_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %50

50:                                               ; preds = %53, %48
  %51 = phi i64 [ %54, %53 ], [ 0, %48 ]
  %52 = icmp slt i64 %51, 2048
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_3_cons_buff_1, ptr @of_in_mainA11_cons_buff_0, ptr @of_in_mainA11_cons_buff_1, ptr @of_in_mainA11_cons_buff_2, ptr @of_in_mainA11_cons_buff_3, ptr @of_in_mainA11_cons_buff_4, ptr @of_out_mainA11_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_3_cons_buff_0, ptr @of_in_mainA11_cons_buff_0, ptr @of_in_mainA11_cons_buff_1, ptr @of_in_mainA11_cons_buff_2, ptr @of_in_mainA11_cons_buff_3, ptr @of_in_mainA11_cons_buff_4, ptr @of_out_mainA11_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %54 = add i64 %51, 2
  br label %50

55:                                               ; preds = %50
  call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_2_5() {
  br label %1

1:                                                ; preds = %46, %0
  %2 = phi i64 [ %47, %46 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %48

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  %5 = load bfloat, ptr @in0_8_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %6

6:                                                ; preds = %9, %4
  %7 = phi i64 [ %10, %9 ], [ 0, %4 ]
  %8 = icmp slt i64 %7, 2048
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_8_cons_buff_1, ptr @of_in_mainB23_cons_buff_0, ptr @of_in_mainB23_cons_buff_1, ptr @of_in_mainB23_cons_buff_2, ptr @of_in_mainB23_cons_buff_3, ptr @of_in_mainB23_cons_buff_4, ptr @of_out_mainB23_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_8_cons_buff_0, ptr @of_in_mainB23_cons_buff_0, ptr @of_in_mainB23_cons_buff_1, ptr @of_in_mainB23_cons_buff_2, ptr @of_in_mainB23_cons_buff_3, ptr @of_in_mainB23_cons_buff_4, ptr @of_out_mainB23_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %10 = add i64 %7, 2
  br label %6

11:                                               ; preds = %6
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  %12 = load bfloat, ptr @in0_8_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %13

13:                                               ; preds = %16, %11
  %14 = phi i64 [ %17, %16 ], [ 0, %11 ]
  %15 = icmp slt i64 %14, 2048
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_8_cons_buff_0, ptr @of_in_mainB23_cons_buff_5, ptr @of_in_mainB23_cons_buff_0, ptr @of_in_mainB23_cons_buff_1, ptr @of_in_mainB23_cons_buff_2, ptr @of_in_mainB23_cons_buff_3, ptr @of_out_mainB23_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_8_cons_buff_1, ptr @of_in_mainB23_cons_buff_5, ptr @of_in_mainB23_cons_buff_0, ptr @of_in_mainB23_cons_buff_1, ptr @of_in_mainB23_cons_buff_2, ptr @of_in_mainB23_cons_buff_3, ptr @of_out_mainB23_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %14, 2
  br label %13

18:                                               ; preds = %13
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  %19 = load bfloat, ptr @in0_8_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %20

20:                                               ; preds = %23, %18
  %21 = phi i64 [ %24, %23 ], [ 0, %18 ]
  %22 = icmp slt i64 %21, 2048
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_8_cons_buff_1, ptr @of_in_mainB23_cons_buff_4, ptr @of_in_mainB23_cons_buff_5, ptr @of_in_mainB23_cons_buff_0, ptr @of_in_mainB23_cons_buff_1, ptr @of_in_mainB23_cons_buff_2, ptr @of_out_mainB23_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_8_cons_buff_0, ptr @of_in_mainB23_cons_buff_4, ptr @of_in_mainB23_cons_buff_5, ptr @of_in_mainB23_cons_buff_0, ptr @of_in_mainB23_cons_buff_1, ptr @of_in_mainB23_cons_buff_2, ptr @of_out_mainB23_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %24 = add i64 %21, 2
  br label %20

25:                                               ; preds = %20
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  %26 = load bfloat, ptr @in0_8_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %27

27:                                               ; preds = %30, %25
  %28 = phi i64 [ %31, %30 ], [ 0, %25 ]
  %29 = icmp slt i64 %28, 2048
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_8_cons_buff_0, ptr @of_in_mainB23_cons_buff_3, ptr @of_in_mainB23_cons_buff_4, ptr @of_in_mainB23_cons_buff_5, ptr @of_in_mainB23_cons_buff_0, ptr @of_in_mainB23_cons_buff_1, ptr @of_out_mainB23_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_8_cons_buff_1, ptr @of_in_mainB23_cons_buff_3, ptr @of_in_mainB23_cons_buff_4, ptr @of_in_mainB23_cons_buff_5, ptr @of_in_mainB23_cons_buff_0, ptr @of_in_mainB23_cons_buff_1, ptr @of_out_mainB23_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %31 = add i64 %28, 2
  br label %27

32:                                               ; preds = %27
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  %33 = load bfloat, ptr @in0_8_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %34

34:                                               ; preds = %37, %32
  %35 = phi i64 [ %38, %37 ], [ 0, %32 ]
  %36 = icmp slt i64 %35, 2048
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_8_cons_buff_1, ptr @of_in_mainB23_cons_buff_2, ptr @of_in_mainB23_cons_buff_3, ptr @of_in_mainB23_cons_buff_4, ptr @of_in_mainB23_cons_buff_5, ptr @of_in_mainB23_cons_buff_0, ptr @of_out_mainB23_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_8_cons_buff_0, ptr @of_in_mainB23_cons_buff_2, ptr @of_in_mainB23_cons_buff_3, ptr @of_in_mainB23_cons_buff_4, ptr @of_in_mainB23_cons_buff_5, ptr @of_in_mainB23_cons_buff_0, ptr @of_out_mainB23_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %38 = add i64 %35, 2
  br label %34

39:                                               ; preds = %34
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  %40 = load bfloat, ptr @in0_8_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %41

41:                                               ; preds = %44, %39
  %42 = phi i64 [ %45, %44 ], [ 0, %39 ]
  %43 = icmp slt i64 %42, 2048
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_8_cons_buff_0, ptr @of_in_mainB23_cons_buff_1, ptr @of_in_mainB23_cons_buff_2, ptr @of_in_mainB23_cons_buff_3, ptr @of_in_mainB23_cons_buff_4, ptr @of_in_mainB23_cons_buff_5, ptr @of_out_mainB23_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_8_cons_buff_1, ptr @of_in_mainB23_cons_buff_1, ptr @of_in_mainB23_cons_buff_2, ptr @of_in_mainB23_cons_buff_3, ptr @of_in_mainB23_cons_buff_4, ptr @of_in_mainB23_cons_buff_5, ptr @of_out_mainB23_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %45 = add i64 %42, 2
  br label %41

46:                                               ; preds = %41
  call void @llvm.aie2.release(i32 50, i32 5)
  %47 = add i64 %2, 6
  br label %1

48:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  %49 = load bfloat, ptr @in0_8_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %50

50:                                               ; preds = %53, %48
  %51 = phi i64 [ %54, %53 ], [ 0, %48 ]
  %52 = icmp slt i64 %51, 2048
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_8_cons_buff_1, ptr @of_in_mainB23_cons_buff_0, ptr @of_in_mainB23_cons_buff_1, ptr @of_in_mainB23_cons_buff_2, ptr @of_in_mainB23_cons_buff_3, ptr @of_in_mainB23_cons_buff_4, ptr @of_out_mainB23_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_8_cons_buff_0, ptr @of_in_mainB23_cons_buff_0, ptr @of_in_mainB23_cons_buff_1, ptr @of_in_mainB23_cons_buff_2, ptr @of_in_mainB23_cons_buff_3, ptr @of_in_mainB23_cons_buff_4, ptr @of_out_mainB23_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %54 = add i64 %51, 2
  br label %50

55:                                               ; preds = %50
  call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_0_5() {
  br label %1

1:                                                ; preds = %46, %0
  %2 = phi i64 [ %47, %46 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %48

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  %5 = load bfloat, ptr @in0_2_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %6

6:                                                ; preds = %9, %4
  %7 = phi i64 [ %10, %9 ], [ 0, %4 ]
  %8 = icmp slt i64 %7, 2048
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_2_cons_buff_1, ptr @of_in_mainA03_cons_buff_0, ptr @of_in_mainA03_cons_buff_1, ptr @of_in_mainA03_cons_buff_2, ptr @of_in_mainA03_cons_buff_3, ptr @of_in_mainA03_cons_buff_4, ptr @of_out_mainA03_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_2_cons_buff_0, ptr @of_in_mainA03_cons_buff_0, ptr @of_in_mainA03_cons_buff_1, ptr @of_in_mainA03_cons_buff_2, ptr @of_in_mainA03_cons_buff_3, ptr @of_in_mainA03_cons_buff_4, ptr @of_out_mainA03_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %10 = add i64 %7, 2
  br label %6

11:                                               ; preds = %6
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  %12 = load bfloat, ptr @in0_2_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %13

13:                                               ; preds = %16, %11
  %14 = phi i64 [ %17, %16 ], [ 0, %11 ]
  %15 = icmp slt i64 %14, 2048
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_2_cons_buff_0, ptr @of_in_mainA03_cons_buff_5, ptr @of_in_mainA03_cons_buff_0, ptr @of_in_mainA03_cons_buff_1, ptr @of_in_mainA03_cons_buff_2, ptr @of_in_mainA03_cons_buff_3, ptr @of_out_mainA03_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_2_cons_buff_1, ptr @of_in_mainA03_cons_buff_5, ptr @of_in_mainA03_cons_buff_0, ptr @of_in_mainA03_cons_buff_1, ptr @of_in_mainA03_cons_buff_2, ptr @of_in_mainA03_cons_buff_3, ptr @of_out_mainA03_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %14, 2
  br label %13

18:                                               ; preds = %13
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  %19 = load bfloat, ptr @in0_2_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %20

20:                                               ; preds = %23, %18
  %21 = phi i64 [ %24, %23 ], [ 0, %18 ]
  %22 = icmp slt i64 %21, 2048
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_2_cons_buff_1, ptr @of_in_mainA03_cons_buff_4, ptr @of_in_mainA03_cons_buff_5, ptr @of_in_mainA03_cons_buff_0, ptr @of_in_mainA03_cons_buff_1, ptr @of_in_mainA03_cons_buff_2, ptr @of_out_mainA03_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_2_cons_buff_0, ptr @of_in_mainA03_cons_buff_4, ptr @of_in_mainA03_cons_buff_5, ptr @of_in_mainA03_cons_buff_0, ptr @of_in_mainA03_cons_buff_1, ptr @of_in_mainA03_cons_buff_2, ptr @of_out_mainA03_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %24 = add i64 %21, 2
  br label %20

25:                                               ; preds = %20
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  %26 = load bfloat, ptr @in0_2_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %27

27:                                               ; preds = %30, %25
  %28 = phi i64 [ %31, %30 ], [ 0, %25 ]
  %29 = icmp slt i64 %28, 2048
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_2_cons_buff_0, ptr @of_in_mainA03_cons_buff_3, ptr @of_in_mainA03_cons_buff_4, ptr @of_in_mainA03_cons_buff_5, ptr @of_in_mainA03_cons_buff_0, ptr @of_in_mainA03_cons_buff_1, ptr @of_out_mainA03_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_2_cons_buff_1, ptr @of_in_mainA03_cons_buff_3, ptr @of_in_mainA03_cons_buff_4, ptr @of_in_mainA03_cons_buff_5, ptr @of_in_mainA03_cons_buff_0, ptr @of_in_mainA03_cons_buff_1, ptr @of_out_mainA03_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %31 = add i64 %28, 2
  br label %27

32:                                               ; preds = %27
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  %33 = load bfloat, ptr @in0_2_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %34

34:                                               ; preds = %37, %32
  %35 = phi i64 [ %38, %37 ], [ 0, %32 ]
  %36 = icmp slt i64 %35, 2048
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_2_cons_buff_1, ptr @of_in_mainA03_cons_buff_2, ptr @of_in_mainA03_cons_buff_3, ptr @of_in_mainA03_cons_buff_4, ptr @of_in_mainA03_cons_buff_5, ptr @of_in_mainA03_cons_buff_0, ptr @of_out_mainA03_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_2_cons_buff_0, ptr @of_in_mainA03_cons_buff_2, ptr @of_in_mainA03_cons_buff_3, ptr @of_in_mainA03_cons_buff_4, ptr @of_in_mainA03_cons_buff_5, ptr @of_in_mainA03_cons_buff_0, ptr @of_out_mainA03_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %38 = add i64 %35, 2
  br label %34

39:                                               ; preds = %34
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  %40 = load bfloat, ptr @in0_2_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %41

41:                                               ; preds = %44, %39
  %42 = phi i64 [ %45, %44 ], [ 0, %39 ]
  %43 = icmp slt i64 %42, 2048
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_2_cons_buff_0, ptr @of_in_mainA03_cons_buff_1, ptr @of_in_mainA03_cons_buff_2, ptr @of_in_mainA03_cons_buff_3, ptr @of_in_mainA03_cons_buff_4, ptr @of_in_mainA03_cons_buff_5, ptr @of_out_mainA03_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_2_cons_buff_1, ptr @of_in_mainA03_cons_buff_1, ptr @of_in_mainA03_cons_buff_2, ptr @of_in_mainA03_cons_buff_3, ptr @of_in_mainA03_cons_buff_4, ptr @of_in_mainA03_cons_buff_5, ptr @of_out_mainA03_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %45 = add i64 %42, 2
  br label %41

46:                                               ; preds = %41
  call void @llvm.aie2.release(i32 50, i32 5)
  %47 = add i64 %2, 6
  br label %1

48:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  %49 = load bfloat, ptr @in0_2_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %50

50:                                               ; preds = %53, %48
  %51 = phi i64 [ %54, %53 ], [ 0, %48 ]
  %52 = icmp slt i64 %51, 2048
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_2_cons_buff_1, ptr @of_in_mainA03_cons_buff_0, ptr @of_in_mainA03_cons_buff_1, ptr @of_in_mainA03_cons_buff_2, ptr @of_in_mainA03_cons_buff_3, ptr @of_in_mainA03_cons_buff_4, ptr @of_out_mainA03_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_2_cons_buff_0, ptr @of_in_mainA03_cons_buff_0, ptr @of_in_mainA03_cons_buff_1, ptr @of_in_mainA03_cons_buff_2, ptr @of_in_mainA03_cons_buff_3, ptr @of_in_mainA03_cons_buff_4, ptr @of_out_mainA03_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %54 = add i64 %51, 2
  br label %50

55:                                               ; preds = %50
  call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_2_4() {
  br label %1

1:                                                ; preds = %46, %0
  %2 = phi i64 [ %47, %46 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %48

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  %5 = load bfloat, ptr @in0_7_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %6

6:                                                ; preds = %9, %4
  %7 = phi i64 [ %10, %9 ], [ 0, %4 ]
  %8 = icmp slt i64 %7, 2048
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_7_cons_buff_1, ptr @of_in_mainB22_cons_buff_0, ptr @of_in_mainB22_cons_buff_1, ptr @of_in_mainB22_cons_buff_2, ptr @of_in_mainB22_cons_buff_3, ptr @of_in_mainB22_cons_buff_4, ptr @of_out_mainB22_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_7_cons_buff_0, ptr @of_in_mainB22_cons_buff_0, ptr @of_in_mainB22_cons_buff_1, ptr @of_in_mainB22_cons_buff_2, ptr @of_in_mainB22_cons_buff_3, ptr @of_in_mainB22_cons_buff_4, ptr @of_out_mainB22_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %10 = add i64 %7, 2
  br label %6

11:                                               ; preds = %6
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  %12 = load bfloat, ptr @in0_7_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %13

13:                                               ; preds = %16, %11
  %14 = phi i64 [ %17, %16 ], [ 0, %11 ]
  %15 = icmp slt i64 %14, 2048
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_7_cons_buff_0, ptr @of_in_mainB22_cons_buff_5, ptr @of_in_mainB22_cons_buff_0, ptr @of_in_mainB22_cons_buff_1, ptr @of_in_mainB22_cons_buff_2, ptr @of_in_mainB22_cons_buff_3, ptr @of_out_mainB22_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_7_cons_buff_1, ptr @of_in_mainB22_cons_buff_5, ptr @of_in_mainB22_cons_buff_0, ptr @of_in_mainB22_cons_buff_1, ptr @of_in_mainB22_cons_buff_2, ptr @of_in_mainB22_cons_buff_3, ptr @of_out_mainB22_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %14, 2
  br label %13

18:                                               ; preds = %13
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  %19 = load bfloat, ptr @in0_7_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %20

20:                                               ; preds = %23, %18
  %21 = phi i64 [ %24, %23 ], [ 0, %18 ]
  %22 = icmp slt i64 %21, 2048
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_7_cons_buff_1, ptr @of_in_mainB22_cons_buff_4, ptr @of_in_mainB22_cons_buff_5, ptr @of_in_mainB22_cons_buff_0, ptr @of_in_mainB22_cons_buff_1, ptr @of_in_mainB22_cons_buff_2, ptr @of_out_mainB22_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_7_cons_buff_0, ptr @of_in_mainB22_cons_buff_4, ptr @of_in_mainB22_cons_buff_5, ptr @of_in_mainB22_cons_buff_0, ptr @of_in_mainB22_cons_buff_1, ptr @of_in_mainB22_cons_buff_2, ptr @of_out_mainB22_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %24 = add i64 %21, 2
  br label %20

25:                                               ; preds = %20
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  %26 = load bfloat, ptr @in0_7_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %27

27:                                               ; preds = %30, %25
  %28 = phi i64 [ %31, %30 ], [ 0, %25 ]
  %29 = icmp slt i64 %28, 2048
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_7_cons_buff_0, ptr @of_in_mainB22_cons_buff_3, ptr @of_in_mainB22_cons_buff_4, ptr @of_in_mainB22_cons_buff_5, ptr @of_in_mainB22_cons_buff_0, ptr @of_in_mainB22_cons_buff_1, ptr @of_out_mainB22_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_7_cons_buff_1, ptr @of_in_mainB22_cons_buff_3, ptr @of_in_mainB22_cons_buff_4, ptr @of_in_mainB22_cons_buff_5, ptr @of_in_mainB22_cons_buff_0, ptr @of_in_mainB22_cons_buff_1, ptr @of_out_mainB22_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %31 = add i64 %28, 2
  br label %27

32:                                               ; preds = %27
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  %33 = load bfloat, ptr @in0_7_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %34

34:                                               ; preds = %37, %32
  %35 = phi i64 [ %38, %37 ], [ 0, %32 ]
  %36 = icmp slt i64 %35, 2048
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_7_cons_buff_1, ptr @of_in_mainB22_cons_buff_2, ptr @of_in_mainB22_cons_buff_3, ptr @of_in_mainB22_cons_buff_4, ptr @of_in_mainB22_cons_buff_5, ptr @of_in_mainB22_cons_buff_0, ptr @of_out_mainB22_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_7_cons_buff_0, ptr @of_in_mainB22_cons_buff_2, ptr @of_in_mainB22_cons_buff_3, ptr @of_in_mainB22_cons_buff_4, ptr @of_in_mainB22_cons_buff_5, ptr @of_in_mainB22_cons_buff_0, ptr @of_out_mainB22_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %38 = add i64 %35, 2
  br label %34

39:                                               ; preds = %34
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  %40 = load bfloat, ptr @in0_7_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %41

41:                                               ; preds = %44, %39
  %42 = phi i64 [ %45, %44 ], [ 0, %39 ]
  %43 = icmp slt i64 %42, 2048
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_7_cons_buff_0, ptr @of_in_mainB22_cons_buff_1, ptr @of_in_mainB22_cons_buff_2, ptr @of_in_mainB22_cons_buff_3, ptr @of_in_mainB22_cons_buff_4, ptr @of_in_mainB22_cons_buff_5, ptr @of_out_mainB22_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_7_cons_buff_1, ptr @of_in_mainB22_cons_buff_1, ptr @of_in_mainB22_cons_buff_2, ptr @of_in_mainB22_cons_buff_3, ptr @of_in_mainB22_cons_buff_4, ptr @of_in_mainB22_cons_buff_5, ptr @of_out_mainB22_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %45 = add i64 %42, 2
  br label %41

46:                                               ; preds = %41
  call void @llvm.aie2.release(i32 50, i32 5)
  %47 = add i64 %2, 6
  br label %1

48:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  %49 = load bfloat, ptr @in0_7_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %50

50:                                               ; preds = %53, %48
  %51 = phi i64 [ %54, %53 ], [ 0, %48 ]
  %52 = icmp slt i64 %51, 2048
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_7_cons_buff_1, ptr @of_in_mainB22_cons_buff_0, ptr @of_in_mainB22_cons_buff_1, ptr @of_in_mainB22_cons_buff_2, ptr @of_in_mainB22_cons_buff_3, ptr @of_in_mainB22_cons_buff_4, ptr @of_out_mainB22_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_7_cons_buff_0, ptr @of_in_mainB22_cons_buff_0, ptr @of_in_mainB22_cons_buff_1, ptr @of_in_mainB22_cons_buff_2, ptr @of_in_mainB22_cons_buff_3, ptr @of_in_mainB22_cons_buff_4, ptr @of_out_mainB22_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %54 = add i64 %51, 2
  br label %50

55:                                               ; preds = %50
  call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_0_4() {
  br label %1

1:                                                ; preds = %46, %0
  %2 = phi i64 [ %47, %46 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %48

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  %5 = load bfloat, ptr @in0_1_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %6

6:                                                ; preds = %9, %4
  %7 = phi i64 [ %10, %9 ], [ 0, %4 ]
  %8 = icmp slt i64 %7, 2048
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_1_cons_buff_1, ptr @of_in_mainA02_cons_buff_0, ptr @of_in_mainA02_cons_buff_1, ptr @of_in_mainA02_cons_buff_2, ptr @of_in_mainA02_cons_buff_3, ptr @of_in_mainA02_cons_buff_4, ptr @of_out_mainA02_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_1_cons_buff_0, ptr @of_in_mainA02_cons_buff_0, ptr @of_in_mainA02_cons_buff_1, ptr @of_in_mainA02_cons_buff_2, ptr @of_in_mainA02_cons_buff_3, ptr @of_in_mainA02_cons_buff_4, ptr @of_out_mainA02_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %10 = add i64 %7, 2
  br label %6

11:                                               ; preds = %6
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  %12 = load bfloat, ptr @in0_1_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %13

13:                                               ; preds = %16, %11
  %14 = phi i64 [ %17, %16 ], [ 0, %11 ]
  %15 = icmp slt i64 %14, 2048
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_1_cons_buff_0, ptr @of_in_mainA02_cons_buff_5, ptr @of_in_mainA02_cons_buff_0, ptr @of_in_mainA02_cons_buff_1, ptr @of_in_mainA02_cons_buff_2, ptr @of_in_mainA02_cons_buff_3, ptr @of_out_mainA02_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_1_cons_buff_1, ptr @of_in_mainA02_cons_buff_5, ptr @of_in_mainA02_cons_buff_0, ptr @of_in_mainA02_cons_buff_1, ptr @of_in_mainA02_cons_buff_2, ptr @of_in_mainA02_cons_buff_3, ptr @of_out_mainA02_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %14, 2
  br label %13

18:                                               ; preds = %13
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  %19 = load bfloat, ptr @in0_1_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %20

20:                                               ; preds = %23, %18
  %21 = phi i64 [ %24, %23 ], [ 0, %18 ]
  %22 = icmp slt i64 %21, 2048
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_1_cons_buff_1, ptr @of_in_mainA02_cons_buff_4, ptr @of_in_mainA02_cons_buff_5, ptr @of_in_mainA02_cons_buff_0, ptr @of_in_mainA02_cons_buff_1, ptr @of_in_mainA02_cons_buff_2, ptr @of_out_mainA02_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_1_cons_buff_0, ptr @of_in_mainA02_cons_buff_4, ptr @of_in_mainA02_cons_buff_5, ptr @of_in_mainA02_cons_buff_0, ptr @of_in_mainA02_cons_buff_1, ptr @of_in_mainA02_cons_buff_2, ptr @of_out_mainA02_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %24 = add i64 %21, 2
  br label %20

25:                                               ; preds = %20
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  %26 = load bfloat, ptr @in0_1_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %27

27:                                               ; preds = %30, %25
  %28 = phi i64 [ %31, %30 ], [ 0, %25 ]
  %29 = icmp slt i64 %28, 2048
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_1_cons_buff_0, ptr @of_in_mainA02_cons_buff_3, ptr @of_in_mainA02_cons_buff_4, ptr @of_in_mainA02_cons_buff_5, ptr @of_in_mainA02_cons_buff_0, ptr @of_in_mainA02_cons_buff_1, ptr @of_out_mainA02_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_1_cons_buff_1, ptr @of_in_mainA02_cons_buff_3, ptr @of_in_mainA02_cons_buff_4, ptr @of_in_mainA02_cons_buff_5, ptr @of_in_mainA02_cons_buff_0, ptr @of_in_mainA02_cons_buff_1, ptr @of_out_mainA02_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %31 = add i64 %28, 2
  br label %27

32:                                               ; preds = %27
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  %33 = load bfloat, ptr @in0_1_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %34

34:                                               ; preds = %37, %32
  %35 = phi i64 [ %38, %37 ], [ 0, %32 ]
  %36 = icmp slt i64 %35, 2048
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_1_cons_buff_1, ptr @of_in_mainA02_cons_buff_2, ptr @of_in_mainA02_cons_buff_3, ptr @of_in_mainA02_cons_buff_4, ptr @of_in_mainA02_cons_buff_5, ptr @of_in_mainA02_cons_buff_0, ptr @of_out_mainA02_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_1_cons_buff_0, ptr @of_in_mainA02_cons_buff_2, ptr @of_in_mainA02_cons_buff_3, ptr @of_in_mainA02_cons_buff_4, ptr @of_in_mainA02_cons_buff_5, ptr @of_in_mainA02_cons_buff_0, ptr @of_out_mainA02_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %38 = add i64 %35, 2
  br label %34

39:                                               ; preds = %34
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  %40 = load bfloat, ptr @in0_1_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %41

41:                                               ; preds = %44, %39
  %42 = phi i64 [ %45, %44 ], [ 0, %39 ]
  %43 = icmp slt i64 %42, 2048
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_1_cons_buff_0, ptr @of_in_mainA02_cons_buff_1, ptr @of_in_mainA02_cons_buff_2, ptr @of_in_mainA02_cons_buff_3, ptr @of_in_mainA02_cons_buff_4, ptr @of_in_mainA02_cons_buff_5, ptr @of_out_mainA02_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_1_cons_buff_1, ptr @of_in_mainA02_cons_buff_1, ptr @of_in_mainA02_cons_buff_2, ptr @of_in_mainA02_cons_buff_3, ptr @of_in_mainA02_cons_buff_4, ptr @of_in_mainA02_cons_buff_5, ptr @of_out_mainA02_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %45 = add i64 %42, 2
  br label %41

46:                                               ; preds = %41
  call void @llvm.aie2.release(i32 50, i32 5)
  %47 = add i64 %2, 6
  br label %1

48:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  %49 = load bfloat, ptr @in0_1_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %50

50:                                               ; preds = %53, %48
  %51 = phi i64 [ %54, %53 ], [ 0, %48 ]
  %52 = icmp slt i64 %51, 2048
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_1_cons_buff_1, ptr @of_in_mainA02_cons_buff_0, ptr @of_in_mainA02_cons_buff_1, ptr @of_in_mainA02_cons_buff_2, ptr @of_in_mainA02_cons_buff_3, ptr @of_in_mainA02_cons_buff_4, ptr @of_out_mainA02_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_1_cons_buff_0, ptr @of_in_mainA02_cons_buff_0, ptr @of_in_mainA02_cons_buff_1, ptr @of_in_mainA02_cons_buff_2, ptr @of_in_mainA02_cons_buff_3, ptr @of_in_mainA02_cons_buff_4, ptr @of_out_mainA02_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %54 = add i64 %51, 2
  br label %50

55:                                               ; preds = %50
  call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_2_3() {
  br label %1

1:                                                ; preds = %46, %0
  %2 = phi i64 [ %47, %46 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %48

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  %5 = load bfloat, ptr @in0_6_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %6

6:                                                ; preds = %9, %4
  %7 = phi i64 [ %10, %9 ], [ 0, %4 ]
  %8 = icmp slt i64 %7, 2048
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_6_cons_buff_1, ptr @of_in_mainB21_cons_buff_0, ptr @of_in_mainB21_cons_buff_1, ptr @of_in_mainB21_cons_buff_2, ptr @of_in_mainB21_cons_buff_3, ptr @of_in_mainB21_cons_buff_4, ptr @of_out_mainB21_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_6_cons_buff_0, ptr @of_in_mainB21_cons_buff_0, ptr @of_in_mainB21_cons_buff_1, ptr @of_in_mainB21_cons_buff_2, ptr @of_in_mainB21_cons_buff_3, ptr @of_in_mainB21_cons_buff_4, ptr @of_out_mainB21_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %10 = add i64 %7, 2
  br label %6

11:                                               ; preds = %6
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  %12 = load bfloat, ptr @in0_6_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %13

13:                                               ; preds = %16, %11
  %14 = phi i64 [ %17, %16 ], [ 0, %11 ]
  %15 = icmp slt i64 %14, 2048
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_6_cons_buff_0, ptr @of_in_mainB21_cons_buff_5, ptr @of_in_mainB21_cons_buff_0, ptr @of_in_mainB21_cons_buff_1, ptr @of_in_mainB21_cons_buff_2, ptr @of_in_mainB21_cons_buff_3, ptr @of_out_mainB21_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_6_cons_buff_1, ptr @of_in_mainB21_cons_buff_5, ptr @of_in_mainB21_cons_buff_0, ptr @of_in_mainB21_cons_buff_1, ptr @of_in_mainB21_cons_buff_2, ptr @of_in_mainB21_cons_buff_3, ptr @of_out_mainB21_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %14, 2
  br label %13

18:                                               ; preds = %13
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  %19 = load bfloat, ptr @in0_6_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %20

20:                                               ; preds = %23, %18
  %21 = phi i64 [ %24, %23 ], [ 0, %18 ]
  %22 = icmp slt i64 %21, 2048
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_6_cons_buff_1, ptr @of_in_mainB21_cons_buff_4, ptr @of_in_mainB21_cons_buff_5, ptr @of_in_mainB21_cons_buff_0, ptr @of_in_mainB21_cons_buff_1, ptr @of_in_mainB21_cons_buff_2, ptr @of_out_mainB21_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_6_cons_buff_0, ptr @of_in_mainB21_cons_buff_4, ptr @of_in_mainB21_cons_buff_5, ptr @of_in_mainB21_cons_buff_0, ptr @of_in_mainB21_cons_buff_1, ptr @of_in_mainB21_cons_buff_2, ptr @of_out_mainB21_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %24 = add i64 %21, 2
  br label %20

25:                                               ; preds = %20
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  %26 = load bfloat, ptr @in0_6_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %27

27:                                               ; preds = %30, %25
  %28 = phi i64 [ %31, %30 ], [ 0, %25 ]
  %29 = icmp slt i64 %28, 2048
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_6_cons_buff_0, ptr @of_in_mainB21_cons_buff_3, ptr @of_in_mainB21_cons_buff_4, ptr @of_in_mainB21_cons_buff_5, ptr @of_in_mainB21_cons_buff_0, ptr @of_in_mainB21_cons_buff_1, ptr @of_out_mainB21_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_6_cons_buff_1, ptr @of_in_mainB21_cons_buff_3, ptr @of_in_mainB21_cons_buff_4, ptr @of_in_mainB21_cons_buff_5, ptr @of_in_mainB21_cons_buff_0, ptr @of_in_mainB21_cons_buff_1, ptr @of_out_mainB21_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %31 = add i64 %28, 2
  br label %27

32:                                               ; preds = %27
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  %33 = load bfloat, ptr @in0_6_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %34

34:                                               ; preds = %37, %32
  %35 = phi i64 [ %38, %37 ], [ 0, %32 ]
  %36 = icmp slt i64 %35, 2048
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_6_cons_buff_1, ptr @of_in_mainB21_cons_buff_2, ptr @of_in_mainB21_cons_buff_3, ptr @of_in_mainB21_cons_buff_4, ptr @of_in_mainB21_cons_buff_5, ptr @of_in_mainB21_cons_buff_0, ptr @of_out_mainB21_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_6_cons_buff_0, ptr @of_in_mainB21_cons_buff_2, ptr @of_in_mainB21_cons_buff_3, ptr @of_in_mainB21_cons_buff_4, ptr @of_in_mainB21_cons_buff_5, ptr @of_in_mainB21_cons_buff_0, ptr @of_out_mainB21_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %38 = add i64 %35, 2
  br label %34

39:                                               ; preds = %34
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  %40 = load bfloat, ptr @in0_6_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %41

41:                                               ; preds = %44, %39
  %42 = phi i64 [ %45, %44 ], [ 0, %39 ]
  %43 = icmp slt i64 %42, 2048
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_6_cons_buff_0, ptr @of_in_mainB21_cons_buff_1, ptr @of_in_mainB21_cons_buff_2, ptr @of_in_mainB21_cons_buff_3, ptr @of_in_mainB21_cons_buff_4, ptr @of_in_mainB21_cons_buff_5, ptr @of_out_mainB21_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_6_cons_buff_1, ptr @of_in_mainB21_cons_buff_1, ptr @of_in_mainB21_cons_buff_2, ptr @of_in_mainB21_cons_buff_3, ptr @of_in_mainB21_cons_buff_4, ptr @of_in_mainB21_cons_buff_5, ptr @of_out_mainB21_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %45 = add i64 %42, 2
  br label %41

46:                                               ; preds = %41
  call void @llvm.aie2.release(i32 50, i32 5)
  %47 = add i64 %2, 6
  br label %1

48:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  %49 = load bfloat, ptr @in0_6_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %50

50:                                               ; preds = %53, %48
  %51 = phi i64 [ %54, %53 ], [ 0, %48 ]
  %52 = icmp slt i64 %51, 2048
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_6_cons_buff_1, ptr @of_in_mainB21_cons_buff_0, ptr @of_in_mainB21_cons_buff_1, ptr @of_in_mainB21_cons_buff_2, ptr @of_in_mainB21_cons_buff_3, ptr @of_in_mainB21_cons_buff_4, ptr @of_out_mainB21_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_6_cons_buff_0, ptr @of_in_mainB21_cons_buff_0, ptr @of_in_mainB21_cons_buff_1, ptr @of_in_mainB21_cons_buff_2, ptr @of_in_mainB21_cons_buff_3, ptr @of_in_mainB21_cons_buff_4, ptr @of_out_mainB21_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %54 = add i64 %51, 2
  br label %50

55:                                               ; preds = %50
  call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_0_3() {
  br label %1

1:                                                ; preds = %46, %0
  %2 = phi i64 [ %47, %46 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %48

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  %5 = load bfloat, ptr @in0_0_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %6

6:                                                ; preds = %9, %4
  %7 = phi i64 [ %10, %9 ], [ 0, %4 ]
  %8 = icmp slt i64 %7, 2048
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_0_cons_buff_1, ptr @of_in_mainA01_cons_buff_0, ptr @of_in_mainA01_cons_buff_1, ptr @of_in_mainA01_cons_buff_2, ptr @of_in_mainA01_cons_buff_3, ptr @of_in_mainA01_cons_buff_4, ptr @of_out_mainA01_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %5, ptr @in0_0_cons_buff_0, ptr @of_in_mainA01_cons_buff_0, ptr @of_in_mainA01_cons_buff_1, ptr @of_in_mainA01_cons_buff_2, ptr @of_in_mainA01_cons_buff_3, ptr @of_in_mainA01_cons_buff_4, ptr @of_out_mainA01_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %10 = add i64 %7, 2
  br label %6

11:                                               ; preds = %6
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  %12 = load bfloat, ptr @in0_0_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %13

13:                                               ; preds = %16, %11
  %14 = phi i64 [ %17, %16 ], [ 0, %11 ]
  %15 = icmp slt i64 %14, 2048
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_0_cons_buff_0, ptr @of_in_mainA01_cons_buff_5, ptr @of_in_mainA01_cons_buff_0, ptr @of_in_mainA01_cons_buff_1, ptr @of_in_mainA01_cons_buff_2, ptr @of_in_mainA01_cons_buff_3, ptr @of_out_mainA01_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %12, ptr @in0_0_cons_buff_1, ptr @of_in_mainA01_cons_buff_5, ptr @of_in_mainA01_cons_buff_0, ptr @of_in_mainA01_cons_buff_1, ptr @of_in_mainA01_cons_buff_2, ptr @of_in_mainA01_cons_buff_3, ptr @of_out_mainA01_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %14, 2
  br label %13

18:                                               ; preds = %13
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  %19 = load bfloat, ptr @in0_0_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %20

20:                                               ; preds = %23, %18
  %21 = phi i64 [ %24, %23 ], [ 0, %18 ]
  %22 = icmp slt i64 %21, 2048
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_0_cons_buff_1, ptr @of_in_mainA01_cons_buff_4, ptr @of_in_mainA01_cons_buff_5, ptr @of_in_mainA01_cons_buff_0, ptr @of_in_mainA01_cons_buff_1, ptr @of_in_mainA01_cons_buff_2, ptr @of_out_mainA01_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %19, ptr @in0_0_cons_buff_0, ptr @of_in_mainA01_cons_buff_4, ptr @of_in_mainA01_cons_buff_5, ptr @of_in_mainA01_cons_buff_0, ptr @of_in_mainA01_cons_buff_1, ptr @of_in_mainA01_cons_buff_2, ptr @of_out_mainA01_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %24 = add i64 %21, 2
  br label %20

25:                                               ; preds = %20
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  %26 = load bfloat, ptr @in0_0_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %27

27:                                               ; preds = %30, %25
  %28 = phi i64 [ %31, %30 ], [ 0, %25 ]
  %29 = icmp slt i64 %28, 2048
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_0_cons_buff_0, ptr @of_in_mainA01_cons_buff_3, ptr @of_in_mainA01_cons_buff_4, ptr @of_in_mainA01_cons_buff_5, ptr @of_in_mainA01_cons_buff_0, ptr @of_in_mainA01_cons_buff_1, ptr @of_out_mainA01_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %26, ptr @in0_0_cons_buff_1, ptr @of_in_mainA01_cons_buff_3, ptr @of_in_mainA01_cons_buff_4, ptr @of_in_mainA01_cons_buff_5, ptr @of_in_mainA01_cons_buff_0, ptr @of_in_mainA01_cons_buff_1, ptr @of_out_mainA01_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %31 = add i64 %28, 2
  br label %27

32:                                               ; preds = %27
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  %33 = load bfloat, ptr @in0_0_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %34

34:                                               ; preds = %37, %32
  %35 = phi i64 [ %38, %37 ], [ 0, %32 ]
  %36 = icmp slt i64 %35, 2048
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_0_cons_buff_1, ptr @of_in_mainA01_cons_buff_2, ptr @of_in_mainA01_cons_buff_3, ptr @of_in_mainA01_cons_buff_4, ptr @of_in_mainA01_cons_buff_5, ptr @of_in_mainA01_cons_buff_0, ptr @of_out_mainA01_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %33, ptr @in0_0_cons_buff_0, ptr @of_in_mainA01_cons_buff_2, ptr @of_in_mainA01_cons_buff_3, ptr @of_in_mainA01_cons_buff_4, ptr @of_in_mainA01_cons_buff_5, ptr @of_in_mainA01_cons_buff_0, ptr @of_out_mainA01_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %38 = add i64 %35, 2
  br label %34

39:                                               ; preds = %34
  call void @llvm.aie2.release(i32 50, i32 5)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  %40 = load bfloat, ptr @in0_0_cons_buff_1, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %41

41:                                               ; preds = %44, %39
  %42 = phi i64 [ %45, %44 ], [ 0, %39 ]
  %43 = icmp slt i64 %42, 2048
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_0_cons_buff_0, ptr @of_in_mainA01_cons_buff_1, ptr @of_in_mainA01_cons_buff_2, ptr @of_in_mainA01_cons_buff_3, ptr @of_in_mainA01_cons_buff_4, ptr @of_in_mainA01_cons_buff_5, ptr @of_out_mainA01_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %40, ptr @in0_0_cons_buff_1, ptr @of_in_mainA01_cons_buff_1, ptr @of_in_mainA01_cons_buff_2, ptr @of_in_mainA01_cons_buff_3, ptr @of_in_mainA01_cons_buff_4, ptr @of_in_mainA01_cons_buff_5, ptr @of_out_mainA01_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %45 = add i64 %42, 2
  br label %41

46:                                               ; preds = %41
  call void @llvm.aie2.release(i32 50, i32 5)
  %47 = add i64 %2, 6
  br label %1

48:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  %49 = load bfloat, ptr @in0_0_cons_buff_0, align 2
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %50

50:                                               ; preds = %53, %48
  %51 = phi i64 [ %54, %53 ], [ 0, %48 ]
  %52 = icmp slt i64 %51, 2048
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_0_cons_buff_1, ptr @of_in_mainA01_cons_buff_0, ptr @of_in_mainA01_cons_buff_1, ptr @of_in_mainA01_cons_buff_2, ptr @of_in_mainA01_cons_buff_3, ptr @of_in_mainA01_cons_buff_4, ptr @of_out_mainA01_buff_0, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  call void @main_kernel(bfloat %49, ptr @in0_0_cons_buff_0, ptr @of_in_mainA01_cons_buff_0, ptr @of_in_mainA01_cons_buff_1, ptr @of_in_mainA01_cons_buff_2, ptr @of_in_mainA01_cons_buff_3, ptr @of_in_mainA01_cons_buff_4, ptr @of_out_mainA01_buff_1, i32 768)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %54 = add i64 %51, 2
  br label %50

55:                                               ; preds = %50
  call void @llvm.aie2.release(i32 50, i32 5)
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
  %6 = icmp slt i64 %5, 2048
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out1_cons_buff_0, i64 32) ]
  call void @mean(ptr @out1_cons_buff_0, ptr @out2_cons_buff_0, ptr @out_buff_0, i32 32)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out1_cons_buff_1, i64 32) ]
  call void @mean(ptr @out1_cons_buff_1, ptr @out2_cons_buff_1, ptr @out_buff_1, i32 32)
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
