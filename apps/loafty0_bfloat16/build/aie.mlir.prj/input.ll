; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2"

@in0_5_cons_buff_1 = external global [24 x bfloat]
@in0_5_cons_buff_0 = external global [24 x bfloat]
@in0_4_cons_buff_1 = external global [24 x bfloat]
@in0_4_cons_buff_0 = external global [24 x bfloat]
@in0_3_cons_buff_1 = external global [24 x bfloat]
@in0_3_cons_buff_0 = external global [24 x bfloat]
@in0_2_cons_buff_1 = external global [24 x bfloat]
@in0_2_cons_buff_0 = external global [24 x bfloat]
@in0_1_cons_buff_1 = external global [24 x bfloat]
@in0_1_cons_buff_0 = external global [24 x bfloat]
@in0_0_cons_buff_1 = external global [24 x bfloat]
@in0_0_cons_buff_0 = external global [24 x bfloat]
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
@sub2mean_buff_1 = external global [4608 x bfloat]
@sub2mean_buff_0 = external global [4608 x bfloat]
@out_buff_1 = external global [8 x bfloat]
@out_buff_0 = external global [8 x bfloat]
@out_cons = external global [8 x bfloat]
@out = external global [8 x bfloat]
@sub2mean = external global [4608 x bfloat]
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
@in0_0_cons = external global [24 x bfloat]
@in0_1_cons = external global [24 x bfloat]
@in0_2_cons = external global [24 x bfloat]
@in0_3_cons = external global [24 x bfloat]
@in0_4_cons = external global [24 x bfloat]
@in0_5_cons = external global [24 x bfloat]
@in0 = external global [24 x bfloat]

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
  %3 = icmp slt i64 %2, 9223372036854775807
  br i1 %3, label %4, label %11

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 2048
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @sub2mean_buff_0, ptr @out_buff_0, i32 0, i32 288)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @sub2mean_buff_1, ptr @out_buff_0, i32 1, i32 288)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @sub2mean_buff_0, ptr @out_buff_0, i32 2, i32 288)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @sub2mean_buff_1, ptr @out_buff_0, i32 3, i32 288)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @sub2mean_buff_0, ptr @out_buff_0, i32 4, i32 288)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @sub2mean_buff_1, ptr @out_buff_0, i32 5, i32 288)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @sub2mean_buff_0, ptr @out_buff_0, i32 6, i32 288)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @sub2mean_buff_1, ptr @out_buff_0, i32 7, i32 288)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @sub2mean_buff_0, ptr @out_buff_1, i32 0, i32 288)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @sub2mean_buff_1, ptr @out_buff_1, i32 1, i32 288)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @sub2mean_buff_0, ptr @out_buff_1, i32 2, i32 288)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @sub2mean_buff_1, ptr @out_buff_1, i32 3, i32 288)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @sub2mean_buff_0, ptr @out_buff_1, i32 4, i32 288)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @sub2mean_buff_1, ptr @out_buff_1, i32 5, i32 288)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_0, i64 32) ]
  call void @mean(ptr @sub2mean_buff_0, ptr @out_buff_1, i32 6, i32 288)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @sub2mean_buff_1, i64 32) ]
  call void @mean(ptr @sub2mean_buff_1, ptr @out_buff_1, i32 7, i32 288)
  call void @llvm.aie2.release(i32 16, i32 1)
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
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.release(i32 49, i32 1)
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
