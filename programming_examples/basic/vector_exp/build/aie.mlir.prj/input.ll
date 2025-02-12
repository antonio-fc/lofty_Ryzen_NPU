; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2"

@inA_cons_buff_1 = external global [4096 x bfloat]
@inA_cons_buff_0 = external global [4096 x bfloat]
@memA0_cons_buff_1 = external global [1024 x bfloat]
@memA0_cons_buff_0 = external global [1024 x bfloat]
@memA1_cons_buff_1 = external global [1024 x bfloat]
@memA1_cons_buff_0 = external global [1024 x bfloat]
@memA2_cons_buff_1 = external global [1024 x bfloat]
@memA2_cons_buff_0 = external global [1024 x bfloat]
@memA3_cons_buff_1 = external global [1024 x bfloat]
@memA3_cons_buff_0 = external global [1024 x bfloat]
@memC0_buff_1 = external global [1024 x bfloat]
@memC0_buff_0 = external global [1024 x bfloat]
@memC1_buff_1 = external global [1024 x bfloat]
@memC1_buff_0 = external global [1024 x bfloat]
@memC2_buff_1 = external global [1024 x bfloat]
@memC2_buff_0 = external global [1024 x bfloat]
@memC3_buff_1 = external global [1024 x bfloat]
@memC3_buff_0 = external global [1024 x bfloat]
@outC_buff_1 = external global [4096 x bfloat]
@outC_buff_0 = external global [4096 x bfloat]
@outC_cons = external global [4096 x bfloat]
@outC = external global [4096 x bfloat]
@memC3_cons = external global [1024 x bfloat]
@memC3 = external global [1024 x bfloat]
@memC2_cons = external global [1024 x bfloat]
@memC2 = external global [1024 x bfloat]
@memC1_cons = external global [1024 x bfloat]
@memC1 = external global [1024 x bfloat]
@memC0_cons = external global [1024 x bfloat]
@memC0 = external global [1024 x bfloat]
@memA3_cons = external global [1024 x bfloat]
@memA3 = external global [1024 x bfloat]
@memA2_cons = external global [1024 x bfloat]
@memA2 = external global [1024 x bfloat]
@memA1_cons = external global [1024 x bfloat]
@memA1 = external global [1024 x bfloat]
@memA0_cons = external global [1024 x bfloat]
@memA0 = external global [1024 x bfloat]
@inA_cons = external global [4096 x bfloat]
@inA = external global [4096 x bfloat]

declare void @debug_i32(i32)

declare void @llvm.aie2.put.ms(i32, i32)

declare { i32, i32 } @llvm.aie2.get.ss()

declare void @llvm.aie2.mcd.write.vec(<16 x i32>, i32)

declare <16 x i32> @llvm.aie2.scd.read.vec(i32)

declare void @llvm.aie2.acquire(i32, i32)

declare void @llvm.aie2.release(i32, i32)

declare void @exp_bf16_1024(ptr, ptr)

define void @core_0_5() {
  br label %1

1:                                                ; preds = %17, %0
  %2 = phi i64 [ %18, %17 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %19

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %16, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 16
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  %8 = and i64 ptrtoint (ptr @memC3_buff_0 to i64), 31
  %9 = icmp eq i64 %8, 0
  call void @llvm.assume(i1 %9)
  %10 = and i64 ptrtoint (ptr @memA3_cons_buff_0 to i64), 31
  %11 = icmp eq i64 %10, 0
  call void @llvm.assume(i1 %11)
  call void @exp_bf16_1024(ptr @memA3_cons_buff_0, ptr @memC3_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  %12 = and i64 ptrtoint (ptr @memC3_buff_1 to i64), 31
  %13 = icmp eq i64 %12, 0
  call void @llvm.assume(i1 %13)
  %14 = and i64 ptrtoint (ptr @memA3_cons_buff_1 to i64), 31
  %15 = icmp eq i64 %14, 0
  call void @llvm.assume(i1 %15)
  call void @exp_bf16_1024(ptr @memA3_cons_buff_1, ptr @memC3_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %16 = add i64 %5, 2
  br label %4

17:                                               ; preds = %4
  %18 = add i64 %2, 1
  br label %1

19:                                               ; preds = %1
  ret void
}

define void @core_0_4() {
  br label %1

1:                                                ; preds = %17, %0
  %2 = phi i64 [ %18, %17 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %19

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %16, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 16
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  %8 = and i64 ptrtoint (ptr @memC2_buff_0 to i64), 31
  %9 = icmp eq i64 %8, 0
  call void @llvm.assume(i1 %9)
  %10 = and i64 ptrtoint (ptr @memA2_cons_buff_0 to i64), 31
  %11 = icmp eq i64 %10, 0
  call void @llvm.assume(i1 %11)
  call void @exp_bf16_1024(ptr @memA2_cons_buff_0, ptr @memC2_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  %12 = and i64 ptrtoint (ptr @memC2_buff_1 to i64), 31
  %13 = icmp eq i64 %12, 0
  call void @llvm.assume(i1 %13)
  %14 = and i64 ptrtoint (ptr @memA2_cons_buff_1 to i64), 31
  %15 = icmp eq i64 %14, 0
  call void @llvm.assume(i1 %15)
  call void @exp_bf16_1024(ptr @memA2_cons_buff_1, ptr @memC2_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %16 = add i64 %5, 2
  br label %4

17:                                               ; preds = %4
  %18 = add i64 %2, 1
  br label %1

19:                                               ; preds = %1
  ret void
}

define void @core_0_3() {
  br label %1

1:                                                ; preds = %17, %0
  %2 = phi i64 [ %18, %17 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %19

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %16, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 16
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  %8 = and i64 ptrtoint (ptr @memC1_buff_0 to i64), 31
  %9 = icmp eq i64 %8, 0
  call void @llvm.assume(i1 %9)
  %10 = and i64 ptrtoint (ptr @memA1_cons_buff_0 to i64), 31
  %11 = icmp eq i64 %10, 0
  call void @llvm.assume(i1 %11)
  call void @exp_bf16_1024(ptr @memA1_cons_buff_0, ptr @memC1_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  %12 = and i64 ptrtoint (ptr @memC1_buff_1 to i64), 31
  %13 = icmp eq i64 %12, 0
  call void @llvm.assume(i1 %13)
  %14 = and i64 ptrtoint (ptr @memA1_cons_buff_1 to i64), 31
  %15 = icmp eq i64 %14, 0
  call void @llvm.assume(i1 %15)
  call void @exp_bf16_1024(ptr @memA1_cons_buff_1, ptr @memC1_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %16 = add i64 %5, 2
  br label %4

17:                                               ; preds = %4
  %18 = add i64 %2, 1
  br label %1

19:                                               ; preds = %1
  ret void
}

define void @core_0_2() {
  br label %1

1:                                                ; preds = %17, %0
  %2 = phi i64 [ %18, %17 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 4294967295
  br i1 %3, label %4, label %19

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %16, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 16
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  %8 = and i64 ptrtoint (ptr @memC0_buff_0 to i64), 31
  %9 = icmp eq i64 %8, 0
  call void @llvm.assume(i1 %9)
  %10 = and i64 ptrtoint (ptr @memA0_cons_buff_0 to i64), 31
  %11 = icmp eq i64 %10, 0
  call void @llvm.assume(i1 %11)
  call void @exp_bf16_1024(ptr @memA0_cons_buff_0, ptr @memC0_buff_0)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  %12 = and i64 ptrtoint (ptr @memC0_buff_1 to i64), 31
  %13 = icmp eq i64 %12, 0
  call void @llvm.assume(i1 %13)
  %14 = and i64 ptrtoint (ptr @memA0_cons_buff_1 to i64), 31
  %15 = icmp eq i64 %14, 0
  call void @llvm.assume(i1 %15)
  call void @exp_bf16_1024(ptr @memA0_cons_buff_1, ptr @memC0_buff_1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %16 = add i64 %5, 2
  br label %4

17:                                               ; preds = %4
  %18 = add i64 %2, 1
  br label %1

19:                                               ; preds = %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
