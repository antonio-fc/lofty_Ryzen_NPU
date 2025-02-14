; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2"

@inA_cons_buff_1 = external global [4608 x bfloat]
@inA_cons_buff_0 = external global [4608 x bfloat]
@memA0_cons_buff_1 = external global [768 x bfloat]
@memA0_cons_buff_0 = external global [768 x bfloat]
@memA1_cons_buff_1 = external global [768 x bfloat]
@memA1_cons_buff_0 = external global [768 x bfloat]
@memA2_cons_buff_1 = external global [768 x bfloat]
@memA2_cons_buff_0 = external global [768 x bfloat]
@memA3_cons_buff_1 = external global [768 x bfloat]
@memA3_cons_buff_0 = external global [768 x bfloat]
@memA4_cons_buff_1 = external global [768 x bfloat]
@memA4_cons_buff_0 = external global [768 x bfloat]
@memA5_cons_buff_1 = external global [768 x bfloat]
@memA5_cons_buff_0 = external global [768 x bfloat]
@memC0_buff_1 = external global [768 x bfloat]
@memC0_buff_0 = external global [768 x bfloat]
@memC1_buff_1 = external global [768 x bfloat]
@memC1_buff_0 = external global [768 x bfloat]
@memC2_buff_1 = external global [768 x bfloat]
@memC2_buff_0 = external global [768 x bfloat]
@memC3_buff_1 = external global [768 x bfloat]
@memC3_buff_0 = external global [768 x bfloat]
@memC4_buff_1 = external global [768 x bfloat]
@memC4_buff_0 = external global [768 x bfloat]
@memC5_buff_1 = external global [768 x bfloat]
@memC5_buff_0 = external global [768 x bfloat]
@outC_buff_1 = external global [4608 x bfloat]
@outC_buff_0 = external global [4608 x bfloat]
@outC_cons = external global [4608 x bfloat]
@outC = external global [4608 x bfloat]
@memC5_cons = external global [768 x bfloat]
@memC5 = external global [768 x bfloat]
@memC4_cons = external global [768 x bfloat]
@memC4 = external global [768 x bfloat]
@memC3_cons = external global [768 x bfloat]
@memC3 = external global [768 x bfloat]
@memC2_cons = external global [768 x bfloat]
@memC2 = external global [768 x bfloat]
@memC1_cons = external global [768 x bfloat]
@memC1 = external global [768 x bfloat]
@memC0_cons = external global [768 x bfloat]
@memC0 = external global [768 x bfloat]
@memA5_cons = external global [768 x bfloat]
@memA5 = external global [768 x bfloat]
@memA4_cons = external global [768 x bfloat]
@memA4 = external global [768 x bfloat]
@memA3_cons = external global [768 x bfloat]
@memA3 = external global [768 x bfloat]
@memA2_cons = external global [768 x bfloat]
@memA2 = external global [768 x bfloat]
@memA1_cons = external global [768 x bfloat]
@memA1 = external global [768 x bfloat]
@memA0_cons = external global [768 x bfloat]
@memA0 = external global [768 x bfloat]
@inA_cons = external global [4608 x bfloat]
@inA = external global [4608 x bfloat]

declare void @debug_i32(i32)

declare void @llvm.aie2.put.ms(i32, i32)

declare { i32, i32 } @llvm.aie2.get.ss()

declare void @llvm.aie2.mcd.write.vec(<16 x i32>, i32)

declare <16 x i32> @llvm.aie2.scd.read.vec(i32)

declare void @llvm.aie2.acquire(i32, i32)

declare void @llvm.aie2.release(i32, i32)

declare void @passthrough(ptr, ptr, bfloat)

define void @core_3_4() {
  br label %1

1:                                                ; preds = %85, %0
  %2 = phi i64 [ %86, %85 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %87

4:                                                ; preds = %29, %1
  %5 = phi i64 [ %30, %29 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 4
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %15, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 768
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  %12 = getelementptr bfloat, ptr @memA5_cons_buff_0, i64 %9
  %13 = load bfloat, ptr %12, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  %14 = getelementptr bfloat, ptr @memC5_buff_0, i64 %9
  store bfloat %13, ptr %14, align 2
  %15 = add i64 %9, 1
  br label %8

16:                                               ; preds = %8
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %17

17:                                               ; preds = %20, %16
  %18 = phi i64 [ %28, %20 ], [ 0, %16 ]
  %19 = icmp slt i64 %18, 768
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_1, i64 32) ]
  %21 = getelementptr bfloat, ptr @memA5_cons_buff_1, i64 %18
  %22 = load bfloat, ptr %21, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_1, i64 32) ]
  %23 = getelementptr bfloat, ptr @memC5_buff_1, i64 %18
  store bfloat %22, ptr %23, align 2
  %24 = add i64 %18, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_1, i64 32) ]
  %25 = getelementptr bfloat, ptr @memA5_cons_buff_1, i64 %24
  %26 = load bfloat, ptr %25, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_1, i64 32) ]
  %27 = getelementptr bfloat, ptr @memC5_buff_1, i64 %24
  store bfloat %26, ptr %27, align 2
  %28 = add i64 %18, 2
  br label %17

29:                                               ; preds = %17
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %30 = add i64 %5, 2
  br label %4

31:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %43, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 768
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  %36 = getelementptr bfloat, ptr @memA5_cons_buff_0, i64 %33
  %37 = load bfloat, ptr %36, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  %38 = getelementptr bfloat, ptr @memC5_buff_0, i64 %33
  store bfloat %37, ptr %38, align 2
  %39 = add i64 %33, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  %40 = getelementptr bfloat, ptr @memA5_cons_buff_0, i64 %39
  %41 = load bfloat, ptr %40, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  %42 = getelementptr bfloat, ptr @memC5_buff_0, i64 %39
  store bfloat %41, ptr %42, align 2
  %43 = add i64 %33, 2
  br label %32

44:                                               ; preds = %32
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  br label %45

45:                                               ; preds = %70, %44
  %46 = phi i64 [ %71, %70 ], [ 0, %44 ]
  %47 = icmp slt i64 %46, 4
  br i1 %47, label %48, label %72

48:                                               ; preds = %45
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %49

49:                                               ; preds = %52, %48
  %50 = phi i64 [ %56, %52 ], [ 0, %48 ]
  %51 = icmp slt i64 %50, 768
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_1, i64 32) ]
  %53 = getelementptr bfloat, ptr @memA5_cons_buff_1, i64 %50
  %54 = load bfloat, ptr %53, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_1, i64 32) ]
  %55 = getelementptr bfloat, ptr @memC5_buff_1, i64 %50
  store bfloat %54, ptr %55, align 2
  %56 = add i64 %50, 1
  br label %49

57:                                               ; preds = %49
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %58

58:                                               ; preds = %61, %57
  %59 = phi i64 [ %69, %61 ], [ 0, %57 ]
  %60 = icmp slt i64 %59, 768
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  %62 = getelementptr bfloat, ptr @memA5_cons_buff_0, i64 %59
  %63 = load bfloat, ptr %62, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  %64 = getelementptr bfloat, ptr @memC5_buff_0, i64 %59
  store bfloat %63, ptr %64, align 2
  %65 = add i64 %59, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  %66 = getelementptr bfloat, ptr @memA5_cons_buff_0, i64 %65
  %67 = load bfloat, ptr %66, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  %68 = getelementptr bfloat, ptr @memC5_buff_0, i64 %65
  store bfloat %67, ptr %68, align 2
  %69 = add i64 %59, 2
  br label %58

70:                                               ; preds = %58
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %71 = add i64 %46, 2
  br label %45

72:                                               ; preds = %45
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %73

73:                                               ; preds = %76, %72
  %74 = phi i64 [ %84, %76 ], [ 0, %72 ]
  %75 = icmp slt i64 %74, 768
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_1, i64 32) ]
  %77 = getelementptr bfloat, ptr @memA5_cons_buff_1, i64 %74
  %78 = load bfloat, ptr %77, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_1, i64 32) ]
  %79 = getelementptr bfloat, ptr @memC5_buff_1, i64 %74
  store bfloat %78, ptr %79, align 2
  %80 = add i64 %74, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_1, i64 32) ]
  %81 = getelementptr bfloat, ptr @memA5_cons_buff_1, i64 %80
  %82 = load bfloat, ptr %81, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_1, i64 32) ]
  %83 = getelementptr bfloat, ptr @memC5_buff_1, i64 %80
  store bfloat %82, ptr %83, align 2
  %84 = add i64 %74, 2
  br label %73

85:                                               ; preds = %73
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %86 = add i64 %2, 2
  br label %1

87:                                               ; preds = %112, %1
  %88 = phi i64 [ %113, %112 ], [ 0, %1 ]
  %89 = icmp slt i64 %88, 4
  br i1 %89, label %90, label %114

90:                                               ; preds = %87
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %91

91:                                               ; preds = %94, %90
  %92 = phi i64 [ %98, %94 ], [ 0, %90 ]
  %93 = icmp slt i64 %92, 768
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  %95 = getelementptr bfloat, ptr @memA5_cons_buff_0, i64 %92
  %96 = load bfloat, ptr %95, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  %97 = getelementptr bfloat, ptr @memC5_buff_0, i64 %92
  store bfloat %96, ptr %97, align 2
  %98 = add i64 %92, 1
  br label %91

99:                                               ; preds = %91
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %100

100:                                              ; preds = %103, %99
  %101 = phi i64 [ %111, %103 ], [ 0, %99 ]
  %102 = icmp slt i64 %101, 768
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_1, i64 32) ]
  %104 = getelementptr bfloat, ptr @memA5_cons_buff_1, i64 %101
  %105 = load bfloat, ptr %104, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_1, i64 32) ]
  %106 = getelementptr bfloat, ptr @memC5_buff_1, i64 %101
  store bfloat %105, ptr %106, align 2
  %107 = add i64 %101, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_1, i64 32) ]
  %108 = getelementptr bfloat, ptr @memA5_cons_buff_1, i64 %107
  %109 = load bfloat, ptr %108, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_1, i64 32) ]
  %110 = getelementptr bfloat, ptr @memC5_buff_1, i64 %107
  store bfloat %109, ptr %110, align 2
  %111 = add i64 %101, 2
  br label %100

112:                                              ; preds = %100
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %113 = add i64 %88, 2
  br label %87

114:                                              ; preds = %87
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %115

115:                                              ; preds = %118, %114
  %116 = phi i64 [ %126, %118 ], [ 0, %114 ]
  %117 = icmp slt i64 %116, 768
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  %119 = getelementptr bfloat, ptr @memA5_cons_buff_0, i64 %116
  %120 = load bfloat, ptr %119, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  %121 = getelementptr bfloat, ptr @memC5_buff_0, i64 %116
  store bfloat %120, ptr %121, align 2
  %122 = add i64 %116, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  %123 = getelementptr bfloat, ptr @memA5_cons_buff_0, i64 %122
  %124 = load bfloat, ptr %123, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  %125 = getelementptr bfloat, ptr @memC5_buff_0, i64 %122
  store bfloat %124, ptr %125, align 2
  %126 = add i64 %116, 2
  br label %115

127:                                              ; preds = %115
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

define void @core_3_3() {
  br label %1

1:                                                ; preds = %85, %0
  %2 = phi i64 [ %86, %85 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %87

4:                                                ; preds = %29, %1
  %5 = phi i64 [ %30, %29 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 4
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %15, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 768
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  %12 = getelementptr bfloat, ptr @memA4_cons_buff_0, i64 %9
  %13 = load bfloat, ptr %12, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  %14 = getelementptr bfloat, ptr @memC4_buff_0, i64 %9
  store bfloat %13, ptr %14, align 2
  %15 = add i64 %9, 1
  br label %8

16:                                               ; preds = %8
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %17

17:                                               ; preds = %20, %16
  %18 = phi i64 [ %28, %20 ], [ 0, %16 ]
  %19 = icmp slt i64 %18, 768
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_1, i64 32) ]
  %21 = getelementptr bfloat, ptr @memA4_cons_buff_1, i64 %18
  %22 = load bfloat, ptr %21, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_1, i64 32) ]
  %23 = getelementptr bfloat, ptr @memC4_buff_1, i64 %18
  store bfloat %22, ptr %23, align 2
  %24 = add i64 %18, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_1, i64 32) ]
  %25 = getelementptr bfloat, ptr @memA4_cons_buff_1, i64 %24
  %26 = load bfloat, ptr %25, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_1, i64 32) ]
  %27 = getelementptr bfloat, ptr @memC4_buff_1, i64 %24
  store bfloat %26, ptr %27, align 2
  %28 = add i64 %18, 2
  br label %17

29:                                               ; preds = %17
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %30 = add i64 %5, 2
  br label %4

31:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %43, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 768
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  %36 = getelementptr bfloat, ptr @memA4_cons_buff_0, i64 %33
  %37 = load bfloat, ptr %36, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  %38 = getelementptr bfloat, ptr @memC4_buff_0, i64 %33
  store bfloat %37, ptr %38, align 2
  %39 = add i64 %33, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  %40 = getelementptr bfloat, ptr @memA4_cons_buff_0, i64 %39
  %41 = load bfloat, ptr %40, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  %42 = getelementptr bfloat, ptr @memC4_buff_0, i64 %39
  store bfloat %41, ptr %42, align 2
  %43 = add i64 %33, 2
  br label %32

44:                                               ; preds = %32
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  br label %45

45:                                               ; preds = %70, %44
  %46 = phi i64 [ %71, %70 ], [ 0, %44 ]
  %47 = icmp slt i64 %46, 4
  br i1 %47, label %48, label %72

48:                                               ; preds = %45
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %49

49:                                               ; preds = %52, %48
  %50 = phi i64 [ %56, %52 ], [ 0, %48 ]
  %51 = icmp slt i64 %50, 768
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_1, i64 32) ]
  %53 = getelementptr bfloat, ptr @memA4_cons_buff_1, i64 %50
  %54 = load bfloat, ptr %53, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_1, i64 32) ]
  %55 = getelementptr bfloat, ptr @memC4_buff_1, i64 %50
  store bfloat %54, ptr %55, align 2
  %56 = add i64 %50, 1
  br label %49

57:                                               ; preds = %49
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %58

58:                                               ; preds = %61, %57
  %59 = phi i64 [ %69, %61 ], [ 0, %57 ]
  %60 = icmp slt i64 %59, 768
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  %62 = getelementptr bfloat, ptr @memA4_cons_buff_0, i64 %59
  %63 = load bfloat, ptr %62, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  %64 = getelementptr bfloat, ptr @memC4_buff_0, i64 %59
  store bfloat %63, ptr %64, align 2
  %65 = add i64 %59, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  %66 = getelementptr bfloat, ptr @memA4_cons_buff_0, i64 %65
  %67 = load bfloat, ptr %66, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  %68 = getelementptr bfloat, ptr @memC4_buff_0, i64 %65
  store bfloat %67, ptr %68, align 2
  %69 = add i64 %59, 2
  br label %58

70:                                               ; preds = %58
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %71 = add i64 %46, 2
  br label %45

72:                                               ; preds = %45
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %73

73:                                               ; preds = %76, %72
  %74 = phi i64 [ %84, %76 ], [ 0, %72 ]
  %75 = icmp slt i64 %74, 768
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_1, i64 32) ]
  %77 = getelementptr bfloat, ptr @memA4_cons_buff_1, i64 %74
  %78 = load bfloat, ptr %77, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_1, i64 32) ]
  %79 = getelementptr bfloat, ptr @memC4_buff_1, i64 %74
  store bfloat %78, ptr %79, align 2
  %80 = add i64 %74, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_1, i64 32) ]
  %81 = getelementptr bfloat, ptr @memA4_cons_buff_1, i64 %80
  %82 = load bfloat, ptr %81, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_1, i64 32) ]
  %83 = getelementptr bfloat, ptr @memC4_buff_1, i64 %80
  store bfloat %82, ptr %83, align 2
  %84 = add i64 %74, 2
  br label %73

85:                                               ; preds = %73
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %86 = add i64 %2, 2
  br label %1

87:                                               ; preds = %112, %1
  %88 = phi i64 [ %113, %112 ], [ 0, %1 ]
  %89 = icmp slt i64 %88, 4
  br i1 %89, label %90, label %114

90:                                               ; preds = %87
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %91

91:                                               ; preds = %94, %90
  %92 = phi i64 [ %98, %94 ], [ 0, %90 ]
  %93 = icmp slt i64 %92, 768
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  %95 = getelementptr bfloat, ptr @memA4_cons_buff_0, i64 %92
  %96 = load bfloat, ptr %95, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  %97 = getelementptr bfloat, ptr @memC4_buff_0, i64 %92
  store bfloat %96, ptr %97, align 2
  %98 = add i64 %92, 1
  br label %91

99:                                               ; preds = %91
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %100

100:                                              ; preds = %103, %99
  %101 = phi i64 [ %111, %103 ], [ 0, %99 ]
  %102 = icmp slt i64 %101, 768
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_1, i64 32) ]
  %104 = getelementptr bfloat, ptr @memA4_cons_buff_1, i64 %101
  %105 = load bfloat, ptr %104, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_1, i64 32) ]
  %106 = getelementptr bfloat, ptr @memC4_buff_1, i64 %101
  store bfloat %105, ptr %106, align 2
  %107 = add i64 %101, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_1, i64 32) ]
  %108 = getelementptr bfloat, ptr @memA4_cons_buff_1, i64 %107
  %109 = load bfloat, ptr %108, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_1, i64 32) ]
  %110 = getelementptr bfloat, ptr @memC4_buff_1, i64 %107
  store bfloat %109, ptr %110, align 2
  %111 = add i64 %101, 2
  br label %100

112:                                              ; preds = %100
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %113 = add i64 %88, 2
  br label %87

114:                                              ; preds = %87
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %115

115:                                              ; preds = %118, %114
  %116 = phi i64 [ %126, %118 ], [ 0, %114 ]
  %117 = icmp slt i64 %116, 768
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  %119 = getelementptr bfloat, ptr @memA4_cons_buff_0, i64 %116
  %120 = load bfloat, ptr %119, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  %121 = getelementptr bfloat, ptr @memC4_buff_0, i64 %116
  store bfloat %120, ptr %121, align 2
  %122 = add i64 %116, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  %123 = getelementptr bfloat, ptr @memA4_cons_buff_0, i64 %122
  %124 = load bfloat, ptr %123, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  %125 = getelementptr bfloat, ptr @memC4_buff_0, i64 %122
  store bfloat %124, ptr %125, align 2
  %126 = add i64 %116, 2
  br label %115

127:                                              ; preds = %115
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

define void @core_3_2() {
  br label %1

1:                                                ; preds = %85, %0
  %2 = phi i64 [ %86, %85 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %87

4:                                                ; preds = %29, %1
  %5 = phi i64 [ %30, %29 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 4
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %15, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 768
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  %12 = getelementptr bfloat, ptr @memA3_cons_buff_0, i64 %9
  %13 = load bfloat, ptr %12, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  %14 = getelementptr bfloat, ptr @memC3_buff_0, i64 %9
  store bfloat %13, ptr %14, align 2
  %15 = add i64 %9, 1
  br label %8

16:                                               ; preds = %8
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %17

17:                                               ; preds = %20, %16
  %18 = phi i64 [ %28, %20 ], [ 0, %16 ]
  %19 = icmp slt i64 %18, 768
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  %21 = getelementptr bfloat, ptr @memA3_cons_buff_1, i64 %18
  %22 = load bfloat, ptr %21, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  %23 = getelementptr bfloat, ptr @memC3_buff_1, i64 %18
  store bfloat %22, ptr %23, align 2
  %24 = add i64 %18, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  %25 = getelementptr bfloat, ptr @memA3_cons_buff_1, i64 %24
  %26 = load bfloat, ptr %25, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  %27 = getelementptr bfloat, ptr @memC3_buff_1, i64 %24
  store bfloat %26, ptr %27, align 2
  %28 = add i64 %18, 2
  br label %17

29:                                               ; preds = %17
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %30 = add i64 %5, 2
  br label %4

31:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %43, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 768
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  %36 = getelementptr bfloat, ptr @memA3_cons_buff_0, i64 %33
  %37 = load bfloat, ptr %36, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  %38 = getelementptr bfloat, ptr @memC3_buff_0, i64 %33
  store bfloat %37, ptr %38, align 2
  %39 = add i64 %33, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  %40 = getelementptr bfloat, ptr @memA3_cons_buff_0, i64 %39
  %41 = load bfloat, ptr %40, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  %42 = getelementptr bfloat, ptr @memC3_buff_0, i64 %39
  store bfloat %41, ptr %42, align 2
  %43 = add i64 %33, 2
  br label %32

44:                                               ; preds = %32
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  br label %45

45:                                               ; preds = %70, %44
  %46 = phi i64 [ %71, %70 ], [ 0, %44 ]
  %47 = icmp slt i64 %46, 4
  br i1 %47, label %48, label %72

48:                                               ; preds = %45
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %49

49:                                               ; preds = %52, %48
  %50 = phi i64 [ %56, %52 ], [ 0, %48 ]
  %51 = icmp slt i64 %50, 768
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  %53 = getelementptr bfloat, ptr @memA3_cons_buff_1, i64 %50
  %54 = load bfloat, ptr %53, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  %55 = getelementptr bfloat, ptr @memC3_buff_1, i64 %50
  store bfloat %54, ptr %55, align 2
  %56 = add i64 %50, 1
  br label %49

57:                                               ; preds = %49
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %58

58:                                               ; preds = %61, %57
  %59 = phi i64 [ %69, %61 ], [ 0, %57 ]
  %60 = icmp slt i64 %59, 768
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  %62 = getelementptr bfloat, ptr @memA3_cons_buff_0, i64 %59
  %63 = load bfloat, ptr %62, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  %64 = getelementptr bfloat, ptr @memC3_buff_0, i64 %59
  store bfloat %63, ptr %64, align 2
  %65 = add i64 %59, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  %66 = getelementptr bfloat, ptr @memA3_cons_buff_0, i64 %65
  %67 = load bfloat, ptr %66, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  %68 = getelementptr bfloat, ptr @memC3_buff_0, i64 %65
  store bfloat %67, ptr %68, align 2
  %69 = add i64 %59, 2
  br label %58

70:                                               ; preds = %58
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %71 = add i64 %46, 2
  br label %45

72:                                               ; preds = %45
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %73

73:                                               ; preds = %76, %72
  %74 = phi i64 [ %84, %76 ], [ 0, %72 ]
  %75 = icmp slt i64 %74, 768
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  %77 = getelementptr bfloat, ptr @memA3_cons_buff_1, i64 %74
  %78 = load bfloat, ptr %77, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  %79 = getelementptr bfloat, ptr @memC3_buff_1, i64 %74
  store bfloat %78, ptr %79, align 2
  %80 = add i64 %74, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  %81 = getelementptr bfloat, ptr @memA3_cons_buff_1, i64 %80
  %82 = load bfloat, ptr %81, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  %83 = getelementptr bfloat, ptr @memC3_buff_1, i64 %80
  store bfloat %82, ptr %83, align 2
  %84 = add i64 %74, 2
  br label %73

85:                                               ; preds = %73
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %86 = add i64 %2, 2
  br label %1

87:                                               ; preds = %112, %1
  %88 = phi i64 [ %113, %112 ], [ 0, %1 ]
  %89 = icmp slt i64 %88, 4
  br i1 %89, label %90, label %114

90:                                               ; preds = %87
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %91

91:                                               ; preds = %94, %90
  %92 = phi i64 [ %98, %94 ], [ 0, %90 ]
  %93 = icmp slt i64 %92, 768
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  %95 = getelementptr bfloat, ptr @memA3_cons_buff_0, i64 %92
  %96 = load bfloat, ptr %95, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  %97 = getelementptr bfloat, ptr @memC3_buff_0, i64 %92
  store bfloat %96, ptr %97, align 2
  %98 = add i64 %92, 1
  br label %91

99:                                               ; preds = %91
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %100

100:                                              ; preds = %103, %99
  %101 = phi i64 [ %111, %103 ], [ 0, %99 ]
  %102 = icmp slt i64 %101, 768
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  %104 = getelementptr bfloat, ptr @memA3_cons_buff_1, i64 %101
  %105 = load bfloat, ptr %104, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  %106 = getelementptr bfloat, ptr @memC3_buff_1, i64 %101
  store bfloat %105, ptr %106, align 2
  %107 = add i64 %101, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  %108 = getelementptr bfloat, ptr @memA3_cons_buff_1, i64 %107
  %109 = load bfloat, ptr %108, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  %110 = getelementptr bfloat, ptr @memC3_buff_1, i64 %107
  store bfloat %109, ptr %110, align 2
  %111 = add i64 %101, 2
  br label %100

112:                                              ; preds = %100
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %113 = add i64 %88, 2
  br label %87

114:                                              ; preds = %87
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %115

115:                                              ; preds = %118, %114
  %116 = phi i64 [ %126, %118 ], [ 0, %114 ]
  %117 = icmp slt i64 %116, 768
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  %119 = getelementptr bfloat, ptr @memA3_cons_buff_0, i64 %116
  %120 = load bfloat, ptr %119, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  %121 = getelementptr bfloat, ptr @memC3_buff_0, i64 %116
  store bfloat %120, ptr %121, align 2
  %122 = add i64 %116, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  %123 = getelementptr bfloat, ptr @memA3_cons_buff_0, i64 %122
  %124 = load bfloat, ptr %123, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  %125 = getelementptr bfloat, ptr @memC3_buff_0, i64 %122
  store bfloat %124, ptr %125, align 2
  %126 = add i64 %116, 2
  br label %115

127:                                              ; preds = %115
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

define void @core_2_4() {
  br label %1

1:                                                ; preds = %85, %0
  %2 = phi i64 [ %86, %85 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %87

4:                                                ; preds = %29, %1
  %5 = phi i64 [ %30, %29 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 4
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %15, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 768
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  %12 = getelementptr bfloat, ptr @memA2_cons_buff_0, i64 %9
  %13 = load bfloat, ptr %12, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  %14 = getelementptr bfloat, ptr @memC2_buff_0, i64 %9
  store bfloat %13, ptr %14, align 2
  %15 = add i64 %9, 1
  br label %8

16:                                               ; preds = %8
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %17

17:                                               ; preds = %20, %16
  %18 = phi i64 [ %28, %20 ], [ 0, %16 ]
  %19 = icmp slt i64 %18, 768
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  %21 = getelementptr bfloat, ptr @memA2_cons_buff_1, i64 %18
  %22 = load bfloat, ptr %21, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  %23 = getelementptr bfloat, ptr @memC2_buff_1, i64 %18
  store bfloat %22, ptr %23, align 2
  %24 = add i64 %18, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  %25 = getelementptr bfloat, ptr @memA2_cons_buff_1, i64 %24
  %26 = load bfloat, ptr %25, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  %27 = getelementptr bfloat, ptr @memC2_buff_1, i64 %24
  store bfloat %26, ptr %27, align 2
  %28 = add i64 %18, 2
  br label %17

29:                                               ; preds = %17
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %30 = add i64 %5, 2
  br label %4

31:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %43, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 768
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  %36 = getelementptr bfloat, ptr @memA2_cons_buff_0, i64 %33
  %37 = load bfloat, ptr %36, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  %38 = getelementptr bfloat, ptr @memC2_buff_0, i64 %33
  store bfloat %37, ptr %38, align 2
  %39 = add i64 %33, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  %40 = getelementptr bfloat, ptr @memA2_cons_buff_0, i64 %39
  %41 = load bfloat, ptr %40, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  %42 = getelementptr bfloat, ptr @memC2_buff_0, i64 %39
  store bfloat %41, ptr %42, align 2
  %43 = add i64 %33, 2
  br label %32

44:                                               ; preds = %32
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  br label %45

45:                                               ; preds = %70, %44
  %46 = phi i64 [ %71, %70 ], [ 0, %44 ]
  %47 = icmp slt i64 %46, 4
  br i1 %47, label %48, label %72

48:                                               ; preds = %45
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %49

49:                                               ; preds = %52, %48
  %50 = phi i64 [ %56, %52 ], [ 0, %48 ]
  %51 = icmp slt i64 %50, 768
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  %53 = getelementptr bfloat, ptr @memA2_cons_buff_1, i64 %50
  %54 = load bfloat, ptr %53, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  %55 = getelementptr bfloat, ptr @memC2_buff_1, i64 %50
  store bfloat %54, ptr %55, align 2
  %56 = add i64 %50, 1
  br label %49

57:                                               ; preds = %49
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %58

58:                                               ; preds = %61, %57
  %59 = phi i64 [ %69, %61 ], [ 0, %57 ]
  %60 = icmp slt i64 %59, 768
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  %62 = getelementptr bfloat, ptr @memA2_cons_buff_0, i64 %59
  %63 = load bfloat, ptr %62, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  %64 = getelementptr bfloat, ptr @memC2_buff_0, i64 %59
  store bfloat %63, ptr %64, align 2
  %65 = add i64 %59, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  %66 = getelementptr bfloat, ptr @memA2_cons_buff_0, i64 %65
  %67 = load bfloat, ptr %66, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  %68 = getelementptr bfloat, ptr @memC2_buff_0, i64 %65
  store bfloat %67, ptr %68, align 2
  %69 = add i64 %59, 2
  br label %58

70:                                               ; preds = %58
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %71 = add i64 %46, 2
  br label %45

72:                                               ; preds = %45
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %73

73:                                               ; preds = %76, %72
  %74 = phi i64 [ %84, %76 ], [ 0, %72 ]
  %75 = icmp slt i64 %74, 768
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  %77 = getelementptr bfloat, ptr @memA2_cons_buff_1, i64 %74
  %78 = load bfloat, ptr %77, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  %79 = getelementptr bfloat, ptr @memC2_buff_1, i64 %74
  store bfloat %78, ptr %79, align 2
  %80 = add i64 %74, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  %81 = getelementptr bfloat, ptr @memA2_cons_buff_1, i64 %80
  %82 = load bfloat, ptr %81, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  %83 = getelementptr bfloat, ptr @memC2_buff_1, i64 %80
  store bfloat %82, ptr %83, align 2
  %84 = add i64 %74, 2
  br label %73

85:                                               ; preds = %73
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %86 = add i64 %2, 2
  br label %1

87:                                               ; preds = %112, %1
  %88 = phi i64 [ %113, %112 ], [ 0, %1 ]
  %89 = icmp slt i64 %88, 4
  br i1 %89, label %90, label %114

90:                                               ; preds = %87
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %91

91:                                               ; preds = %94, %90
  %92 = phi i64 [ %98, %94 ], [ 0, %90 ]
  %93 = icmp slt i64 %92, 768
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  %95 = getelementptr bfloat, ptr @memA2_cons_buff_0, i64 %92
  %96 = load bfloat, ptr %95, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  %97 = getelementptr bfloat, ptr @memC2_buff_0, i64 %92
  store bfloat %96, ptr %97, align 2
  %98 = add i64 %92, 1
  br label %91

99:                                               ; preds = %91
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %100

100:                                              ; preds = %103, %99
  %101 = phi i64 [ %111, %103 ], [ 0, %99 ]
  %102 = icmp slt i64 %101, 768
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  %104 = getelementptr bfloat, ptr @memA2_cons_buff_1, i64 %101
  %105 = load bfloat, ptr %104, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  %106 = getelementptr bfloat, ptr @memC2_buff_1, i64 %101
  store bfloat %105, ptr %106, align 2
  %107 = add i64 %101, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  %108 = getelementptr bfloat, ptr @memA2_cons_buff_1, i64 %107
  %109 = load bfloat, ptr %108, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  %110 = getelementptr bfloat, ptr @memC2_buff_1, i64 %107
  store bfloat %109, ptr %110, align 2
  %111 = add i64 %101, 2
  br label %100

112:                                              ; preds = %100
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %113 = add i64 %88, 2
  br label %87

114:                                              ; preds = %87
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %115

115:                                              ; preds = %118, %114
  %116 = phi i64 [ %126, %118 ], [ 0, %114 ]
  %117 = icmp slt i64 %116, 768
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  %119 = getelementptr bfloat, ptr @memA2_cons_buff_0, i64 %116
  %120 = load bfloat, ptr %119, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  %121 = getelementptr bfloat, ptr @memC2_buff_0, i64 %116
  store bfloat %120, ptr %121, align 2
  %122 = add i64 %116, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  %123 = getelementptr bfloat, ptr @memA2_cons_buff_0, i64 %122
  %124 = load bfloat, ptr %123, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  %125 = getelementptr bfloat, ptr @memC2_buff_0, i64 %122
  store bfloat %124, ptr %125, align 2
  %126 = add i64 %116, 2
  br label %115

127:                                              ; preds = %115
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

define void @core_2_3() {
  br label %1

1:                                                ; preds = %85, %0
  %2 = phi i64 [ %86, %85 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %87

4:                                                ; preds = %29, %1
  %5 = phi i64 [ %30, %29 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 4
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %15, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 768
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  %12 = getelementptr bfloat, ptr @memA1_cons_buff_0, i64 %9
  %13 = load bfloat, ptr %12, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  %14 = getelementptr bfloat, ptr @memC1_buff_0, i64 %9
  store bfloat %13, ptr %14, align 2
  %15 = add i64 %9, 1
  br label %8

16:                                               ; preds = %8
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %17

17:                                               ; preds = %20, %16
  %18 = phi i64 [ %28, %20 ], [ 0, %16 ]
  %19 = icmp slt i64 %18, 768
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  %21 = getelementptr bfloat, ptr @memA1_cons_buff_1, i64 %18
  %22 = load bfloat, ptr %21, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  %23 = getelementptr bfloat, ptr @memC1_buff_1, i64 %18
  store bfloat %22, ptr %23, align 2
  %24 = add i64 %18, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  %25 = getelementptr bfloat, ptr @memA1_cons_buff_1, i64 %24
  %26 = load bfloat, ptr %25, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  %27 = getelementptr bfloat, ptr @memC1_buff_1, i64 %24
  store bfloat %26, ptr %27, align 2
  %28 = add i64 %18, 2
  br label %17

29:                                               ; preds = %17
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %30 = add i64 %5, 2
  br label %4

31:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %43, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 768
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  %36 = getelementptr bfloat, ptr @memA1_cons_buff_0, i64 %33
  %37 = load bfloat, ptr %36, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  %38 = getelementptr bfloat, ptr @memC1_buff_0, i64 %33
  store bfloat %37, ptr %38, align 2
  %39 = add i64 %33, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  %40 = getelementptr bfloat, ptr @memA1_cons_buff_0, i64 %39
  %41 = load bfloat, ptr %40, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  %42 = getelementptr bfloat, ptr @memC1_buff_0, i64 %39
  store bfloat %41, ptr %42, align 2
  %43 = add i64 %33, 2
  br label %32

44:                                               ; preds = %32
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  br label %45

45:                                               ; preds = %70, %44
  %46 = phi i64 [ %71, %70 ], [ 0, %44 ]
  %47 = icmp slt i64 %46, 4
  br i1 %47, label %48, label %72

48:                                               ; preds = %45
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %49

49:                                               ; preds = %52, %48
  %50 = phi i64 [ %56, %52 ], [ 0, %48 ]
  %51 = icmp slt i64 %50, 768
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  %53 = getelementptr bfloat, ptr @memA1_cons_buff_1, i64 %50
  %54 = load bfloat, ptr %53, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  %55 = getelementptr bfloat, ptr @memC1_buff_1, i64 %50
  store bfloat %54, ptr %55, align 2
  %56 = add i64 %50, 1
  br label %49

57:                                               ; preds = %49
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %58

58:                                               ; preds = %61, %57
  %59 = phi i64 [ %69, %61 ], [ 0, %57 ]
  %60 = icmp slt i64 %59, 768
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  %62 = getelementptr bfloat, ptr @memA1_cons_buff_0, i64 %59
  %63 = load bfloat, ptr %62, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  %64 = getelementptr bfloat, ptr @memC1_buff_0, i64 %59
  store bfloat %63, ptr %64, align 2
  %65 = add i64 %59, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  %66 = getelementptr bfloat, ptr @memA1_cons_buff_0, i64 %65
  %67 = load bfloat, ptr %66, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  %68 = getelementptr bfloat, ptr @memC1_buff_0, i64 %65
  store bfloat %67, ptr %68, align 2
  %69 = add i64 %59, 2
  br label %58

70:                                               ; preds = %58
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %71 = add i64 %46, 2
  br label %45

72:                                               ; preds = %45
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %73

73:                                               ; preds = %76, %72
  %74 = phi i64 [ %84, %76 ], [ 0, %72 ]
  %75 = icmp slt i64 %74, 768
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  %77 = getelementptr bfloat, ptr @memA1_cons_buff_1, i64 %74
  %78 = load bfloat, ptr %77, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  %79 = getelementptr bfloat, ptr @memC1_buff_1, i64 %74
  store bfloat %78, ptr %79, align 2
  %80 = add i64 %74, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  %81 = getelementptr bfloat, ptr @memA1_cons_buff_1, i64 %80
  %82 = load bfloat, ptr %81, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  %83 = getelementptr bfloat, ptr @memC1_buff_1, i64 %80
  store bfloat %82, ptr %83, align 2
  %84 = add i64 %74, 2
  br label %73

85:                                               ; preds = %73
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %86 = add i64 %2, 2
  br label %1

87:                                               ; preds = %112, %1
  %88 = phi i64 [ %113, %112 ], [ 0, %1 ]
  %89 = icmp slt i64 %88, 4
  br i1 %89, label %90, label %114

90:                                               ; preds = %87
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %91

91:                                               ; preds = %94, %90
  %92 = phi i64 [ %98, %94 ], [ 0, %90 ]
  %93 = icmp slt i64 %92, 768
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  %95 = getelementptr bfloat, ptr @memA1_cons_buff_0, i64 %92
  %96 = load bfloat, ptr %95, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  %97 = getelementptr bfloat, ptr @memC1_buff_0, i64 %92
  store bfloat %96, ptr %97, align 2
  %98 = add i64 %92, 1
  br label %91

99:                                               ; preds = %91
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %100

100:                                              ; preds = %103, %99
  %101 = phi i64 [ %111, %103 ], [ 0, %99 ]
  %102 = icmp slt i64 %101, 768
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  %104 = getelementptr bfloat, ptr @memA1_cons_buff_1, i64 %101
  %105 = load bfloat, ptr %104, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  %106 = getelementptr bfloat, ptr @memC1_buff_1, i64 %101
  store bfloat %105, ptr %106, align 2
  %107 = add i64 %101, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  %108 = getelementptr bfloat, ptr @memA1_cons_buff_1, i64 %107
  %109 = load bfloat, ptr %108, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  %110 = getelementptr bfloat, ptr @memC1_buff_1, i64 %107
  store bfloat %109, ptr %110, align 2
  %111 = add i64 %101, 2
  br label %100

112:                                              ; preds = %100
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %113 = add i64 %88, 2
  br label %87

114:                                              ; preds = %87
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %115

115:                                              ; preds = %118, %114
  %116 = phi i64 [ %126, %118 ], [ 0, %114 ]
  %117 = icmp slt i64 %116, 768
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  %119 = getelementptr bfloat, ptr @memA1_cons_buff_0, i64 %116
  %120 = load bfloat, ptr %119, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  %121 = getelementptr bfloat, ptr @memC1_buff_0, i64 %116
  store bfloat %120, ptr %121, align 2
  %122 = add i64 %116, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  %123 = getelementptr bfloat, ptr @memA1_cons_buff_0, i64 %122
  %124 = load bfloat, ptr %123, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  %125 = getelementptr bfloat, ptr @memC1_buff_0, i64 %122
  store bfloat %124, ptr %125, align 2
  %126 = add i64 %116, 2
  br label %115

127:                                              ; preds = %115
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

define void @core_2_2() {
  br label %1

1:                                                ; preds = %85, %0
  %2 = phi i64 [ %86, %85 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %87

4:                                                ; preds = %29, %1
  %5 = phi i64 [ %30, %29 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 4
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %15, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 768
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  %12 = getelementptr bfloat, ptr @memA0_cons_buff_0, i64 %9
  %13 = load bfloat, ptr %12, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  %14 = getelementptr bfloat, ptr @memC0_buff_0, i64 %9
  store bfloat %13, ptr %14, align 2
  %15 = add i64 %9, 1
  br label %8

16:                                               ; preds = %8
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %17

17:                                               ; preds = %20, %16
  %18 = phi i64 [ %28, %20 ], [ 0, %16 ]
  %19 = icmp slt i64 %18, 768
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  %21 = getelementptr bfloat, ptr @memA0_cons_buff_1, i64 %18
  %22 = load bfloat, ptr %21, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  %23 = getelementptr bfloat, ptr @memC0_buff_1, i64 %18
  store bfloat %22, ptr %23, align 2
  %24 = add i64 %18, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  %25 = getelementptr bfloat, ptr @memA0_cons_buff_1, i64 %24
  %26 = load bfloat, ptr %25, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  %27 = getelementptr bfloat, ptr @memC0_buff_1, i64 %24
  store bfloat %26, ptr %27, align 2
  %28 = add i64 %18, 2
  br label %17

29:                                               ; preds = %17
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %30 = add i64 %5, 2
  br label %4

31:                                               ; preds = %4
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %43, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 768
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  %36 = getelementptr bfloat, ptr @memA0_cons_buff_0, i64 %33
  %37 = load bfloat, ptr %36, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  %38 = getelementptr bfloat, ptr @memC0_buff_0, i64 %33
  store bfloat %37, ptr %38, align 2
  %39 = add i64 %33, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  %40 = getelementptr bfloat, ptr @memA0_cons_buff_0, i64 %39
  %41 = load bfloat, ptr %40, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  %42 = getelementptr bfloat, ptr @memC0_buff_0, i64 %39
  store bfloat %41, ptr %42, align 2
  %43 = add i64 %33, 2
  br label %32

44:                                               ; preds = %32
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  br label %45

45:                                               ; preds = %70, %44
  %46 = phi i64 [ %71, %70 ], [ 0, %44 ]
  %47 = icmp slt i64 %46, 4
  br i1 %47, label %48, label %72

48:                                               ; preds = %45
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %49

49:                                               ; preds = %52, %48
  %50 = phi i64 [ %56, %52 ], [ 0, %48 ]
  %51 = icmp slt i64 %50, 768
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  %53 = getelementptr bfloat, ptr @memA0_cons_buff_1, i64 %50
  %54 = load bfloat, ptr %53, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  %55 = getelementptr bfloat, ptr @memC0_buff_1, i64 %50
  store bfloat %54, ptr %55, align 2
  %56 = add i64 %50, 1
  br label %49

57:                                               ; preds = %49
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %58

58:                                               ; preds = %61, %57
  %59 = phi i64 [ %69, %61 ], [ 0, %57 ]
  %60 = icmp slt i64 %59, 768
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  %62 = getelementptr bfloat, ptr @memA0_cons_buff_0, i64 %59
  %63 = load bfloat, ptr %62, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  %64 = getelementptr bfloat, ptr @memC0_buff_0, i64 %59
  store bfloat %63, ptr %64, align 2
  %65 = add i64 %59, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  %66 = getelementptr bfloat, ptr @memA0_cons_buff_0, i64 %65
  %67 = load bfloat, ptr %66, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  %68 = getelementptr bfloat, ptr @memC0_buff_0, i64 %65
  store bfloat %67, ptr %68, align 2
  %69 = add i64 %59, 2
  br label %58

70:                                               ; preds = %58
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %71 = add i64 %46, 2
  br label %45

72:                                               ; preds = %45
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %73

73:                                               ; preds = %76, %72
  %74 = phi i64 [ %84, %76 ], [ 0, %72 ]
  %75 = icmp slt i64 %74, 768
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  %77 = getelementptr bfloat, ptr @memA0_cons_buff_1, i64 %74
  %78 = load bfloat, ptr %77, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  %79 = getelementptr bfloat, ptr @memC0_buff_1, i64 %74
  store bfloat %78, ptr %79, align 2
  %80 = add i64 %74, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  %81 = getelementptr bfloat, ptr @memA0_cons_buff_1, i64 %80
  %82 = load bfloat, ptr %81, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  %83 = getelementptr bfloat, ptr @memC0_buff_1, i64 %80
  store bfloat %82, ptr %83, align 2
  %84 = add i64 %74, 2
  br label %73

85:                                               ; preds = %73
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %86 = add i64 %2, 2
  br label %1

87:                                               ; preds = %112, %1
  %88 = phi i64 [ %113, %112 ], [ 0, %1 ]
  %89 = icmp slt i64 %88, 4
  br i1 %89, label %90, label %114

90:                                               ; preds = %87
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %91

91:                                               ; preds = %94, %90
  %92 = phi i64 [ %98, %94 ], [ 0, %90 ]
  %93 = icmp slt i64 %92, 768
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  %95 = getelementptr bfloat, ptr @memA0_cons_buff_0, i64 %92
  %96 = load bfloat, ptr %95, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  %97 = getelementptr bfloat, ptr @memC0_buff_0, i64 %92
  store bfloat %96, ptr %97, align 2
  %98 = add i64 %92, 1
  br label %91

99:                                               ; preds = %91
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %100

100:                                              ; preds = %103, %99
  %101 = phi i64 [ %111, %103 ], [ 0, %99 ]
  %102 = icmp slt i64 %101, 768
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  %104 = getelementptr bfloat, ptr @memA0_cons_buff_1, i64 %101
  %105 = load bfloat, ptr %104, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  %106 = getelementptr bfloat, ptr @memC0_buff_1, i64 %101
  store bfloat %105, ptr %106, align 2
  %107 = add i64 %101, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  %108 = getelementptr bfloat, ptr @memA0_cons_buff_1, i64 %107
  %109 = load bfloat, ptr %108, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  %110 = getelementptr bfloat, ptr @memC0_buff_1, i64 %107
  store bfloat %109, ptr %110, align 2
  %111 = add i64 %101, 2
  br label %100

112:                                              ; preds = %100
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  %113 = add i64 %88, 2
  br label %87

114:                                              ; preds = %87
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %115

115:                                              ; preds = %118, %114
  %116 = phi i64 [ %126, %118 ], [ 0, %114 ]
  %117 = icmp slt i64 %116, 768
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  %119 = getelementptr bfloat, ptr @memA0_cons_buff_0, i64 %116
  %120 = load bfloat, ptr %119, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  %121 = getelementptr bfloat, ptr @memC0_buff_0, i64 %116
  store bfloat %120, ptr %121, align 2
  %122 = add i64 %116, 1
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  %123 = getelementptr bfloat, ptr @memA0_cons_buff_0, i64 %122
  %124 = load bfloat, ptr %123, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  %125 = getelementptr bfloat, ptr @memC0_buff_0, i64 %122
  store bfloat %124, ptr %125, align 2
  %126 = add i64 %116, 2
  br label %115

127:                                              ; preds = %115
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
