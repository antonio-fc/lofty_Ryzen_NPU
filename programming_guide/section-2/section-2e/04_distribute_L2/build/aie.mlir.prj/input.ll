; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2"

@in_cons_buff_1 = external global [24 x i32]
@in_cons_buff_0 = external global [24 x i32]
@in0_cons_buff_1 = external global [8 x i32]
@in0_cons_buff_0 = external global [8 x i32]
@in1_cons_buff_1 = external global [8 x i32]
@in1_cons_buff_0 = external global [8 x i32]
@in2_cons_buff_1 = external global [8 x i32]
@in2_cons_buff_0 = external global [8 x i32]
@in2_cons = external global [8 x i32]
@in2 = external global [8 x i32]
@in1_cons = external global [8 x i32]
@in1 = external global [8 x i32]
@in0_cons = external global [8 x i32]
@in0 = external global [8 x i32]
@in_cons = external global [24 x i32]
@in = external global [24 x i32]

declare void @debug_i32(i32)

declare void @llvm.aie2.put.ms(i32, i32)

declare { i32, i32 } @llvm.aie2.get.ss()

declare void @llvm.aie2.mcd.write.vec(<16 x i32>, i32)

declare <16 x i32> @llvm.aie2.scd.read.vec(i32)

declare void @llvm.aie2.acquire(i32, i32)

declare void @llvm.aie2.release(i32, i32)

define void @core_0_4() {
  br label %1

1:                                                ; preds = %22, %0
  %2 = phi i64 [ %23, %22 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 8
  br i1 %3, label %4, label %24

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %12, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  %9 = getelementptr i32, ptr @in2_cons_buff_0, i64 %6
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_0, i64 32) ]
  store i32 %11, ptr %9, align 4
  %12 = add i64 %6, 1
  br label %5

13:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi i64 [ %21, %17 ], [ 0, %13 ]
  %16 = icmp slt i64 %15, 8
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  %18 = getelementptr i32, ptr @in2_cons_buff_1, i64 %15
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @in2_cons_buff_1, i64 32) ]
  store i32 %20, ptr %18, align 4
  %21 = add i64 %15, 1
  br label %14

22:                                               ; preds = %14
  call void @llvm.aie2.release(i32 48, i32 1)
  %23 = add i64 %2, 2
  br label %1

24:                                               ; preds = %1
  ret void
}

define void @core_0_3() {
  br label %1

1:                                                ; preds = %22, %0
  %2 = phi i64 [ %23, %22 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 8
  br i1 %3, label %4, label %24

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %12, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  %9 = getelementptr i32, ptr @in1_cons_buff_0, i64 %6
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  store i32 %11, ptr %9, align 4
  %12 = add i64 %6, 1
  br label %5

13:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi i64 [ %21, %17 ], [ 0, %13 ]
  %16 = icmp slt i64 %15, 8
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  %18 = getelementptr i32, ptr @in1_cons_buff_1, i64 %15
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  store i32 %20, ptr %18, align 4
  %21 = add i64 %15, 1
  br label %14

22:                                               ; preds = %14
  call void @llvm.aie2.release(i32 48, i32 1)
  %23 = add i64 %2, 2
  br label %1

24:                                               ; preds = %1
  ret void
}

define void @core_0_2() {
  br label %1

1:                                                ; preds = %22, %0
  %2 = phi i64 [ %23, %22 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 8
  br i1 %3, label %4, label %24

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %12, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  %9 = getelementptr i32, ptr @in0_cons_buff_0, i64 %6
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  store i32 %11, ptr %9, align 4
  %12 = add i64 %6, 1
  br label %5

13:                                               ; preds = %5
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %14

14:                                               ; preds = %17, %13
  %15 = phi i64 [ %21, %17 ], [ 0, %13 ]
  %16 = icmp slt i64 %15, 8
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  %18 = getelementptr i32, ptr @in0_cons_buff_1, i64 %15
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  store i32 %20, ptr %18, align 4
  %21 = add i64 %15, 1
  br label %14

22:                                               ; preds = %14
  call void @llvm.aie2.release(i32 48, i32 1)
  %23 = add i64 %2, 2
  br label %1

24:                                               ; preds = %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
