; ModuleID = '/notebooks/my_mlir-aie/apps/loafty1_bfloat16/build/aie.mlir.prj/input.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

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

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

; Function Attrs: nounwind
define void @core_3_4() local_unnamed_addr #0 {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %145
  %1 = phi i64 [ 0, %0 ], [ %146, %145 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC5_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA5_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_1, i64 32) ]
  br label %2

2:                                                ; preds = %2, %.preheader12
  %3 = phi i64 [ 0, %.preheader12 ], [ %23, %2 ]
  %4 = trunc nuw i64 %3 to i20
  %5 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %4
  %6 = getelementptr bfloat, ptr @memC5_buff_1, i20 %4
  %7 = load <2 x bfloat>, ptr %5, align 16
  store <2 x bfloat> %7, ptr %6, align 16
  %8 = trunc i64 %3 to i20
  %9 = or disjoint i20 %8, 2
  %10 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %9
  %11 = getelementptr bfloat, ptr @memC5_buff_1, i20 %9
  %12 = load <2 x bfloat>, ptr %10, align 4
  store <2 x bfloat> %12, ptr %11, align 4
  %13 = trunc i64 %3 to i20
  %14 = or disjoint i20 %13, 4
  %15 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %14
  %16 = getelementptr bfloat, ptr @memC5_buff_1, i20 %14
  %17 = load <2 x bfloat>, ptr %15, align 8
  store <2 x bfloat> %17, ptr %16, align 8
  %18 = or disjoint i64 %3, 6
  %19 = trunc nuw i64 %18 to i20
  %20 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %19
  %21 = getelementptr bfloat, ptr @memC5_buff_1, i20 %19
  %22 = load <2 x bfloat>, ptr %20, align 4
  store <2 x bfloat> %22, ptr %21, align 4
  %23 = add nuw nsw i64 %3, 8
  %24 = icmp ult i64 %18, 766
  br i1 %24, label %2, label %25

25:                                               ; preds = %2
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC5_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA5_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_1, i64 32) ]
  br label %26

26:                                               ; preds = %26, %25
  %27 = phi i64 [ 0, %25 ], [ %47, %26 ]
  %28 = trunc nuw i64 %27 to i20
  %29 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %28
  %30 = getelementptr bfloat, ptr @memC5_buff_1, i20 %28
  %31 = load <2 x bfloat>, ptr %29, align 16
  store <2 x bfloat> %31, ptr %30, align 16
  %32 = trunc i64 %27 to i20
  %33 = or disjoint i20 %32, 2
  %34 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %33
  %35 = getelementptr bfloat, ptr @memC5_buff_1, i20 %33
  %36 = load <2 x bfloat>, ptr %34, align 4
  store <2 x bfloat> %36, ptr %35, align 4
  %37 = trunc i64 %27 to i20
  %38 = or disjoint i20 %37, 4
  %39 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %38
  %40 = getelementptr bfloat, ptr @memC5_buff_1, i20 %38
  %41 = load <2 x bfloat>, ptr %39, align 8
  store <2 x bfloat> %41, ptr %40, align 8
  %42 = or disjoint i64 %27, 6
  %43 = trunc nuw i64 %42 to i20
  %44 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %43
  %45 = getelementptr bfloat, ptr @memC5_buff_1, i20 %43
  %46 = load <2 x bfloat>, ptr %44, align 4
  store <2 x bfloat> %46, ptr %45, align 4
  %47 = add nuw nsw i64 %27, 8
  %48 = icmp ult i64 %42, 766
  br i1 %48, label %26, label %49

49:                                               ; preds = %26
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  br label %50

50:                                               ; preds = %50, %49
  %51 = phi i64 [ 0, %49 ], [ %71, %50 ]
  %52 = trunc nuw i64 %51 to i20
  %53 = getelementptr bfloat, ptr @memA5_cons_buff_0, i20 %52
  %54 = getelementptr bfloat, ptr @memC5_buff_0, i20 %52
  %55 = load <2 x bfloat>, ptr %53, align 16
  store <2 x bfloat> %55, ptr %54, align 16
  %56 = trunc i64 %51 to i20
  %57 = or disjoint i20 %56, 2
  %58 = getelementptr bfloat, ptr @memA5_cons_buff_0, i20 %57
  %59 = getelementptr bfloat, ptr @memC5_buff_0, i20 %57
  %60 = load <2 x bfloat>, ptr %58, align 4
  store <2 x bfloat> %60, ptr %59, align 4
  %61 = trunc i64 %51 to i20
  %62 = or disjoint i20 %61, 4
  %63 = getelementptr bfloat, ptr @memA5_cons_buff_0, i20 %62
  %64 = getelementptr bfloat, ptr @memC5_buff_0, i20 %62
  %65 = load <2 x bfloat>, ptr %63, align 8
  store <2 x bfloat> %65, ptr %64, align 8
  %66 = or disjoint i64 %51, 6
  %67 = trunc nuw i64 %66 to i20
  %68 = getelementptr bfloat, ptr @memA5_cons_buff_0, i20 %67
  %69 = getelementptr bfloat, ptr @memC5_buff_0, i20 %67
  %70 = load <2 x bfloat>, ptr %68, align 4
  store <2 x bfloat> %70, ptr %69, align 4
  %71 = add nuw nsw i64 %51, 8
  %72 = icmp ult i64 %66, 766
  br i1 %72, label %50, label %73

73:                                               ; preds = %50
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC5_buff_1, ptr noundef nonnull align 32 dereferenceable(1536) @memA5_cons_buff_1, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  br label %74

74:                                               ; preds = %74, %73
  %75 = phi i64 [ 0, %73 ], [ %95, %74 ]
  %76 = trunc nuw i64 %75 to i20
  %77 = getelementptr bfloat, ptr @memA5_cons_buff_0, i20 %76
  %78 = getelementptr bfloat, ptr @memC5_buff_0, i20 %76
  %79 = load <2 x bfloat>, ptr %77, align 16
  store <2 x bfloat> %79, ptr %78, align 16
  %80 = trunc i64 %75 to i20
  %81 = or disjoint i20 %80, 2
  %82 = getelementptr bfloat, ptr @memA5_cons_buff_0, i20 %81
  %83 = getelementptr bfloat, ptr @memC5_buff_0, i20 %81
  %84 = load <2 x bfloat>, ptr %82, align 4
  store <2 x bfloat> %84, ptr %83, align 4
  %85 = trunc i64 %75 to i20
  %86 = or disjoint i20 %85, 4
  %87 = getelementptr bfloat, ptr @memA5_cons_buff_0, i20 %86
  %88 = getelementptr bfloat, ptr @memC5_buff_0, i20 %86
  %89 = load <2 x bfloat>, ptr %87, align 8
  store <2 x bfloat> %89, ptr %88, align 8
  %90 = or disjoint i64 %75, 6
  %91 = trunc nuw i64 %90 to i20
  %92 = getelementptr bfloat, ptr @memA5_cons_buff_0, i20 %91
  %93 = getelementptr bfloat, ptr @memC5_buff_0, i20 %91
  %94 = load <2 x bfloat>, ptr %92, align 4
  store <2 x bfloat> %94, ptr %93, align 4
  %95 = add nuw nsw i64 %75, 8
  %96 = icmp ult i64 %90, 766
  br i1 %96, label %74, label %97

97:                                               ; preds = %74
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC5_buff_1, ptr noundef nonnull align 32 dereferenceable(1536) @memA5_cons_buff_1, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  br label %98

98:                                               ; preds = %98, %97
  %99 = phi i64 [ 0, %97 ], [ %119, %98 ]
  %100 = trunc nuw i64 %99 to i20
  %101 = getelementptr bfloat, ptr @memA5_cons_buff_0, i20 %100
  %102 = getelementptr bfloat, ptr @memC5_buff_0, i20 %100
  %103 = load <2 x bfloat>, ptr %101, align 16
  store <2 x bfloat> %103, ptr %102, align 16
  %104 = trunc i64 %99 to i20
  %105 = or disjoint i20 %104, 2
  %106 = getelementptr bfloat, ptr @memA5_cons_buff_0, i20 %105
  %107 = getelementptr bfloat, ptr @memC5_buff_0, i20 %105
  %108 = load <2 x bfloat>, ptr %106, align 4
  store <2 x bfloat> %108, ptr %107, align 4
  %109 = trunc i64 %99 to i20
  %110 = or disjoint i20 %109, 4
  %111 = getelementptr bfloat, ptr @memA5_cons_buff_0, i20 %110
  %112 = getelementptr bfloat, ptr @memC5_buff_0, i20 %110
  %113 = load <2 x bfloat>, ptr %111, align 8
  store <2 x bfloat> %113, ptr %112, align 8
  %114 = or disjoint i64 %99, 6
  %115 = trunc nuw i64 %114 to i20
  %116 = getelementptr bfloat, ptr @memA5_cons_buff_0, i20 %115
  %117 = getelementptr bfloat, ptr @memC5_buff_0, i20 %115
  %118 = load <2 x bfloat>, ptr %116, align 4
  store <2 x bfloat> %118, ptr %117, align 4
  %119 = add nuw nsw i64 %99, 8
  %120 = icmp ult i64 %114, 766
  br i1 %120, label %98, label %121

121:                                              ; preds = %98
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_1, i64 32) ]
  br label %122

122:                                              ; preds = %122, %121
  %123 = phi i64 [ 0, %121 ], [ %143, %122 ]
  %124 = trunc nuw i64 %123 to i20
  %125 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %124
  %126 = getelementptr bfloat, ptr @memC5_buff_1, i20 %124
  %127 = load <2 x bfloat>, ptr %125, align 16
  store <2 x bfloat> %127, ptr %126, align 16
  %128 = trunc i64 %123 to i20
  %129 = or disjoint i20 %128, 2
  %130 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %129
  %131 = getelementptr bfloat, ptr @memC5_buff_1, i20 %129
  %132 = load <2 x bfloat>, ptr %130, align 4
  store <2 x bfloat> %132, ptr %131, align 4
  %133 = trunc i64 %123 to i20
  %134 = or disjoint i20 %133, 4
  %135 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %134
  %136 = getelementptr bfloat, ptr @memC5_buff_1, i20 %134
  %137 = load <2 x bfloat>, ptr %135, align 8
  store <2 x bfloat> %137, ptr %136, align 8
  %138 = or disjoint i64 %123, 6
  %139 = trunc nuw i64 %138 to i20
  %140 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %139
  %141 = getelementptr bfloat, ptr @memC5_buff_1, i20 %139
  %142 = load <2 x bfloat>, ptr %140, align 4
  store <2 x bfloat> %142, ptr %141, align 4
  %143 = add nuw nsw i64 %123, 8
  %144 = icmp ult i64 %138, 766
  br i1 %144, label %122, label %145

145:                                              ; preds = %122
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %146 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %146, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader12

.preheader.preheader:                             ; preds = %145
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC5_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA5_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_1, i64 32) ]
  br label %147

147:                                              ; preds = %147, %.preheader.preheader
  %148 = phi i64 [ 0, %.preheader.preheader ], [ %168, %147 ]
  %149 = trunc nuw i64 %148 to i20
  %150 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %149
  %151 = getelementptr bfloat, ptr @memC5_buff_1, i20 %149
  %152 = load <2 x bfloat>, ptr %150, align 16
  store <2 x bfloat> %152, ptr %151, align 16
  %153 = trunc i64 %148 to i20
  %154 = or disjoint i20 %153, 2
  %155 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %154
  %156 = getelementptr bfloat, ptr @memC5_buff_1, i20 %154
  %157 = load <2 x bfloat>, ptr %155, align 4
  store <2 x bfloat> %157, ptr %156, align 4
  %158 = trunc i64 %148 to i20
  %159 = or disjoint i20 %158, 4
  %160 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %159
  %161 = getelementptr bfloat, ptr @memC5_buff_1, i20 %159
  %162 = load <2 x bfloat>, ptr %160, align 8
  store <2 x bfloat> %162, ptr %161, align 8
  %163 = or disjoint i64 %148, 6
  %164 = trunc nuw i64 %163 to i20
  %165 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %164
  %166 = getelementptr bfloat, ptr @memC5_buff_1, i20 %164
  %167 = load <2 x bfloat>, ptr %165, align 4
  store <2 x bfloat> %167, ptr %166, align 4
  %168 = add nuw nsw i64 %148, 8
  %169 = icmp ult i64 %163, 766
  br i1 %169, label %147, label %.preheader.1

.preheader.1:                                     ; preds = %147
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC5_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA5_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_1, i64 32) ]
  br label %170

170:                                              ; preds = %170, %.preheader.1
  %171 = phi i64 [ 0, %.preheader.1 ], [ %191, %170 ]
  %172 = trunc nuw i64 %171 to i20
  %173 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %172
  %174 = getelementptr bfloat, ptr @memC5_buff_1, i20 %172
  %175 = load <2 x bfloat>, ptr %173, align 16
  store <2 x bfloat> %175, ptr %174, align 16
  %176 = trunc i64 %171 to i20
  %177 = or disjoint i20 %176, 2
  %178 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %177
  %179 = getelementptr bfloat, ptr @memC5_buff_1, i20 %177
  %180 = load <2 x bfloat>, ptr %178, align 4
  store <2 x bfloat> %180, ptr %179, align 4
  %181 = trunc i64 %171 to i20
  %182 = or disjoint i20 %181, 4
  %183 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %182
  %184 = getelementptr bfloat, ptr @memC5_buff_1, i20 %182
  %185 = load <2 x bfloat>, ptr %183, align 8
  store <2 x bfloat> %185, ptr %184, align 8
  %186 = or disjoint i64 %171, 6
  %187 = trunc nuw i64 %186 to i20
  %188 = getelementptr bfloat, ptr @memA5_cons_buff_1, i20 %187
  %189 = getelementptr bfloat, ptr @memC5_buff_1, i20 %187
  %190 = load <2 x bfloat>, ptr %188, align 4
  store <2 x bfloat> %190, ptr %189, align 4
  %191 = add nuw nsw i64 %171, 8
  %192 = icmp ult i64 %186, 766
  br i1 %192, label %170, label %193

193:                                              ; preds = %170
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA5_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC5_buff_0, i64 32) ]
  br label %194

194:                                              ; preds = %194, %193
  %195 = phi i64 [ 0, %193 ], [ %215, %194 ]
  %196 = trunc nuw i64 %195 to i20
  %197 = getelementptr bfloat, ptr @memA5_cons_buff_0, i20 %196
  %198 = getelementptr bfloat, ptr @memC5_buff_0, i20 %196
  %199 = load <2 x bfloat>, ptr %197, align 16
  store <2 x bfloat> %199, ptr %198, align 16
  %200 = trunc i64 %195 to i20
  %201 = or disjoint i20 %200, 2
  %202 = getelementptr bfloat, ptr @memA5_cons_buff_0, i20 %201
  %203 = getelementptr bfloat, ptr @memC5_buff_0, i20 %201
  %204 = load <2 x bfloat>, ptr %202, align 4
  store <2 x bfloat> %204, ptr %203, align 4
  %205 = trunc i64 %195 to i20
  %206 = or disjoint i20 %205, 4
  %207 = getelementptr bfloat, ptr @memA5_cons_buff_0, i20 %206
  %208 = getelementptr bfloat, ptr @memC5_buff_0, i20 %206
  %209 = load <2 x bfloat>, ptr %207, align 8
  store <2 x bfloat> %209, ptr %208, align 8
  %210 = or disjoint i64 %195, 6
  %211 = trunc nuw i64 %210 to i20
  %212 = getelementptr bfloat, ptr @memA5_cons_buff_0, i20 %211
  %213 = getelementptr bfloat, ptr @memC5_buff_0, i20 %211
  %214 = load <2 x bfloat>, ptr %212, align 4
  store <2 x bfloat> %214, ptr %213, align 4
  %215 = add nuw nsw i64 %195, 8
  %216 = icmp ult i64 %210, 766
  br i1 %216, label %194, label %217

217:                                              ; preds = %194
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_3_3() local_unnamed_addr #0 {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %145
  %1 = phi i64 [ 0, %0 ], [ %146, %145 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC4_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA4_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_1, i64 32) ]
  br label %2

2:                                                ; preds = %2, %.preheader12
  %3 = phi i64 [ 0, %.preheader12 ], [ %23, %2 ]
  %4 = trunc nuw i64 %3 to i20
  %5 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %4
  %6 = getelementptr bfloat, ptr @memC4_buff_1, i20 %4
  %7 = load <2 x bfloat>, ptr %5, align 16
  store <2 x bfloat> %7, ptr %6, align 16
  %8 = trunc i64 %3 to i20
  %9 = or disjoint i20 %8, 2
  %10 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %9
  %11 = getelementptr bfloat, ptr @memC4_buff_1, i20 %9
  %12 = load <2 x bfloat>, ptr %10, align 4
  store <2 x bfloat> %12, ptr %11, align 4
  %13 = trunc i64 %3 to i20
  %14 = or disjoint i20 %13, 4
  %15 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %14
  %16 = getelementptr bfloat, ptr @memC4_buff_1, i20 %14
  %17 = load <2 x bfloat>, ptr %15, align 8
  store <2 x bfloat> %17, ptr %16, align 8
  %18 = or disjoint i64 %3, 6
  %19 = trunc nuw i64 %18 to i20
  %20 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %19
  %21 = getelementptr bfloat, ptr @memC4_buff_1, i20 %19
  %22 = load <2 x bfloat>, ptr %20, align 4
  store <2 x bfloat> %22, ptr %21, align 4
  %23 = add nuw nsw i64 %3, 8
  %24 = icmp ult i64 %18, 766
  br i1 %24, label %2, label %25

25:                                               ; preds = %2
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC4_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA4_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_1, i64 32) ]
  br label %26

26:                                               ; preds = %26, %25
  %27 = phi i64 [ 0, %25 ], [ %47, %26 ]
  %28 = trunc nuw i64 %27 to i20
  %29 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %28
  %30 = getelementptr bfloat, ptr @memC4_buff_1, i20 %28
  %31 = load <2 x bfloat>, ptr %29, align 16
  store <2 x bfloat> %31, ptr %30, align 16
  %32 = trunc i64 %27 to i20
  %33 = or disjoint i20 %32, 2
  %34 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %33
  %35 = getelementptr bfloat, ptr @memC4_buff_1, i20 %33
  %36 = load <2 x bfloat>, ptr %34, align 4
  store <2 x bfloat> %36, ptr %35, align 4
  %37 = trunc i64 %27 to i20
  %38 = or disjoint i20 %37, 4
  %39 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %38
  %40 = getelementptr bfloat, ptr @memC4_buff_1, i20 %38
  %41 = load <2 x bfloat>, ptr %39, align 8
  store <2 x bfloat> %41, ptr %40, align 8
  %42 = or disjoint i64 %27, 6
  %43 = trunc nuw i64 %42 to i20
  %44 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %43
  %45 = getelementptr bfloat, ptr @memC4_buff_1, i20 %43
  %46 = load <2 x bfloat>, ptr %44, align 4
  store <2 x bfloat> %46, ptr %45, align 4
  %47 = add nuw nsw i64 %27, 8
  %48 = icmp ult i64 %42, 766
  br i1 %48, label %26, label %49

49:                                               ; preds = %26
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  br label %50

50:                                               ; preds = %50, %49
  %51 = phi i64 [ 0, %49 ], [ %71, %50 ]
  %52 = trunc nuw i64 %51 to i20
  %53 = getelementptr bfloat, ptr @memA4_cons_buff_0, i20 %52
  %54 = getelementptr bfloat, ptr @memC4_buff_0, i20 %52
  %55 = load <2 x bfloat>, ptr %53, align 16
  store <2 x bfloat> %55, ptr %54, align 16
  %56 = trunc i64 %51 to i20
  %57 = or disjoint i20 %56, 2
  %58 = getelementptr bfloat, ptr @memA4_cons_buff_0, i20 %57
  %59 = getelementptr bfloat, ptr @memC4_buff_0, i20 %57
  %60 = load <2 x bfloat>, ptr %58, align 4
  store <2 x bfloat> %60, ptr %59, align 4
  %61 = trunc i64 %51 to i20
  %62 = or disjoint i20 %61, 4
  %63 = getelementptr bfloat, ptr @memA4_cons_buff_0, i20 %62
  %64 = getelementptr bfloat, ptr @memC4_buff_0, i20 %62
  %65 = load <2 x bfloat>, ptr %63, align 8
  store <2 x bfloat> %65, ptr %64, align 8
  %66 = or disjoint i64 %51, 6
  %67 = trunc nuw i64 %66 to i20
  %68 = getelementptr bfloat, ptr @memA4_cons_buff_0, i20 %67
  %69 = getelementptr bfloat, ptr @memC4_buff_0, i20 %67
  %70 = load <2 x bfloat>, ptr %68, align 4
  store <2 x bfloat> %70, ptr %69, align 4
  %71 = add nuw nsw i64 %51, 8
  %72 = icmp ult i64 %66, 766
  br i1 %72, label %50, label %73

73:                                               ; preds = %50
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC4_buff_1, ptr noundef nonnull align 32 dereferenceable(1536) @memA4_cons_buff_1, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  br label %74

74:                                               ; preds = %74, %73
  %75 = phi i64 [ 0, %73 ], [ %95, %74 ]
  %76 = trunc nuw i64 %75 to i20
  %77 = getelementptr bfloat, ptr @memA4_cons_buff_0, i20 %76
  %78 = getelementptr bfloat, ptr @memC4_buff_0, i20 %76
  %79 = load <2 x bfloat>, ptr %77, align 16
  store <2 x bfloat> %79, ptr %78, align 16
  %80 = trunc i64 %75 to i20
  %81 = or disjoint i20 %80, 2
  %82 = getelementptr bfloat, ptr @memA4_cons_buff_0, i20 %81
  %83 = getelementptr bfloat, ptr @memC4_buff_0, i20 %81
  %84 = load <2 x bfloat>, ptr %82, align 4
  store <2 x bfloat> %84, ptr %83, align 4
  %85 = trunc i64 %75 to i20
  %86 = or disjoint i20 %85, 4
  %87 = getelementptr bfloat, ptr @memA4_cons_buff_0, i20 %86
  %88 = getelementptr bfloat, ptr @memC4_buff_0, i20 %86
  %89 = load <2 x bfloat>, ptr %87, align 8
  store <2 x bfloat> %89, ptr %88, align 8
  %90 = or disjoint i64 %75, 6
  %91 = trunc nuw i64 %90 to i20
  %92 = getelementptr bfloat, ptr @memA4_cons_buff_0, i20 %91
  %93 = getelementptr bfloat, ptr @memC4_buff_0, i20 %91
  %94 = load <2 x bfloat>, ptr %92, align 4
  store <2 x bfloat> %94, ptr %93, align 4
  %95 = add nuw nsw i64 %75, 8
  %96 = icmp ult i64 %90, 766
  br i1 %96, label %74, label %97

97:                                               ; preds = %74
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC4_buff_1, ptr noundef nonnull align 32 dereferenceable(1536) @memA4_cons_buff_1, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  br label %98

98:                                               ; preds = %98, %97
  %99 = phi i64 [ 0, %97 ], [ %119, %98 ]
  %100 = trunc nuw i64 %99 to i20
  %101 = getelementptr bfloat, ptr @memA4_cons_buff_0, i20 %100
  %102 = getelementptr bfloat, ptr @memC4_buff_0, i20 %100
  %103 = load <2 x bfloat>, ptr %101, align 16
  store <2 x bfloat> %103, ptr %102, align 16
  %104 = trunc i64 %99 to i20
  %105 = or disjoint i20 %104, 2
  %106 = getelementptr bfloat, ptr @memA4_cons_buff_0, i20 %105
  %107 = getelementptr bfloat, ptr @memC4_buff_0, i20 %105
  %108 = load <2 x bfloat>, ptr %106, align 4
  store <2 x bfloat> %108, ptr %107, align 4
  %109 = trunc i64 %99 to i20
  %110 = or disjoint i20 %109, 4
  %111 = getelementptr bfloat, ptr @memA4_cons_buff_0, i20 %110
  %112 = getelementptr bfloat, ptr @memC4_buff_0, i20 %110
  %113 = load <2 x bfloat>, ptr %111, align 8
  store <2 x bfloat> %113, ptr %112, align 8
  %114 = or disjoint i64 %99, 6
  %115 = trunc nuw i64 %114 to i20
  %116 = getelementptr bfloat, ptr @memA4_cons_buff_0, i20 %115
  %117 = getelementptr bfloat, ptr @memC4_buff_0, i20 %115
  %118 = load <2 x bfloat>, ptr %116, align 4
  store <2 x bfloat> %118, ptr %117, align 4
  %119 = add nuw nsw i64 %99, 8
  %120 = icmp ult i64 %114, 766
  br i1 %120, label %98, label %121

121:                                              ; preds = %98
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_1, i64 32) ]
  br label %122

122:                                              ; preds = %122, %121
  %123 = phi i64 [ 0, %121 ], [ %143, %122 ]
  %124 = trunc nuw i64 %123 to i20
  %125 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %124
  %126 = getelementptr bfloat, ptr @memC4_buff_1, i20 %124
  %127 = load <2 x bfloat>, ptr %125, align 16
  store <2 x bfloat> %127, ptr %126, align 16
  %128 = trunc i64 %123 to i20
  %129 = or disjoint i20 %128, 2
  %130 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %129
  %131 = getelementptr bfloat, ptr @memC4_buff_1, i20 %129
  %132 = load <2 x bfloat>, ptr %130, align 4
  store <2 x bfloat> %132, ptr %131, align 4
  %133 = trunc i64 %123 to i20
  %134 = or disjoint i20 %133, 4
  %135 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %134
  %136 = getelementptr bfloat, ptr @memC4_buff_1, i20 %134
  %137 = load <2 x bfloat>, ptr %135, align 8
  store <2 x bfloat> %137, ptr %136, align 8
  %138 = or disjoint i64 %123, 6
  %139 = trunc nuw i64 %138 to i20
  %140 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %139
  %141 = getelementptr bfloat, ptr @memC4_buff_1, i20 %139
  %142 = load <2 x bfloat>, ptr %140, align 4
  store <2 x bfloat> %142, ptr %141, align 4
  %143 = add nuw nsw i64 %123, 8
  %144 = icmp ult i64 %138, 766
  br i1 %144, label %122, label %145

145:                                              ; preds = %122
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %146 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %146, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader12

.preheader.preheader:                             ; preds = %145
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC4_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA4_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_1, i64 32) ]
  br label %147

147:                                              ; preds = %147, %.preheader.preheader
  %148 = phi i64 [ 0, %.preheader.preheader ], [ %168, %147 ]
  %149 = trunc nuw i64 %148 to i20
  %150 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %149
  %151 = getelementptr bfloat, ptr @memC4_buff_1, i20 %149
  %152 = load <2 x bfloat>, ptr %150, align 16
  store <2 x bfloat> %152, ptr %151, align 16
  %153 = trunc i64 %148 to i20
  %154 = or disjoint i20 %153, 2
  %155 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %154
  %156 = getelementptr bfloat, ptr @memC4_buff_1, i20 %154
  %157 = load <2 x bfloat>, ptr %155, align 4
  store <2 x bfloat> %157, ptr %156, align 4
  %158 = trunc i64 %148 to i20
  %159 = or disjoint i20 %158, 4
  %160 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %159
  %161 = getelementptr bfloat, ptr @memC4_buff_1, i20 %159
  %162 = load <2 x bfloat>, ptr %160, align 8
  store <2 x bfloat> %162, ptr %161, align 8
  %163 = or disjoint i64 %148, 6
  %164 = trunc nuw i64 %163 to i20
  %165 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %164
  %166 = getelementptr bfloat, ptr @memC4_buff_1, i20 %164
  %167 = load <2 x bfloat>, ptr %165, align 4
  store <2 x bfloat> %167, ptr %166, align 4
  %168 = add nuw nsw i64 %148, 8
  %169 = icmp ult i64 %163, 766
  br i1 %169, label %147, label %.preheader.1

.preheader.1:                                     ; preds = %147
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC4_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA4_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_1, i64 32) ]
  br label %170

170:                                              ; preds = %170, %.preheader.1
  %171 = phi i64 [ 0, %.preheader.1 ], [ %191, %170 ]
  %172 = trunc nuw i64 %171 to i20
  %173 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %172
  %174 = getelementptr bfloat, ptr @memC4_buff_1, i20 %172
  %175 = load <2 x bfloat>, ptr %173, align 16
  store <2 x bfloat> %175, ptr %174, align 16
  %176 = trunc i64 %171 to i20
  %177 = or disjoint i20 %176, 2
  %178 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %177
  %179 = getelementptr bfloat, ptr @memC4_buff_1, i20 %177
  %180 = load <2 x bfloat>, ptr %178, align 4
  store <2 x bfloat> %180, ptr %179, align 4
  %181 = trunc i64 %171 to i20
  %182 = or disjoint i20 %181, 4
  %183 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %182
  %184 = getelementptr bfloat, ptr @memC4_buff_1, i20 %182
  %185 = load <2 x bfloat>, ptr %183, align 8
  store <2 x bfloat> %185, ptr %184, align 8
  %186 = or disjoint i64 %171, 6
  %187 = trunc nuw i64 %186 to i20
  %188 = getelementptr bfloat, ptr @memA4_cons_buff_1, i20 %187
  %189 = getelementptr bfloat, ptr @memC4_buff_1, i20 %187
  %190 = load <2 x bfloat>, ptr %188, align 4
  store <2 x bfloat> %190, ptr %189, align 4
  %191 = add nuw nsw i64 %171, 8
  %192 = icmp ult i64 %186, 766
  br i1 %192, label %170, label %193

193:                                              ; preds = %170
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA4_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC4_buff_0, i64 32) ]
  br label %194

194:                                              ; preds = %194, %193
  %195 = phi i64 [ 0, %193 ], [ %215, %194 ]
  %196 = trunc nuw i64 %195 to i20
  %197 = getelementptr bfloat, ptr @memA4_cons_buff_0, i20 %196
  %198 = getelementptr bfloat, ptr @memC4_buff_0, i20 %196
  %199 = load <2 x bfloat>, ptr %197, align 16
  store <2 x bfloat> %199, ptr %198, align 16
  %200 = trunc i64 %195 to i20
  %201 = or disjoint i20 %200, 2
  %202 = getelementptr bfloat, ptr @memA4_cons_buff_0, i20 %201
  %203 = getelementptr bfloat, ptr @memC4_buff_0, i20 %201
  %204 = load <2 x bfloat>, ptr %202, align 4
  store <2 x bfloat> %204, ptr %203, align 4
  %205 = trunc i64 %195 to i20
  %206 = or disjoint i20 %205, 4
  %207 = getelementptr bfloat, ptr @memA4_cons_buff_0, i20 %206
  %208 = getelementptr bfloat, ptr @memC4_buff_0, i20 %206
  %209 = load <2 x bfloat>, ptr %207, align 8
  store <2 x bfloat> %209, ptr %208, align 8
  %210 = or disjoint i64 %195, 6
  %211 = trunc nuw i64 %210 to i20
  %212 = getelementptr bfloat, ptr @memA4_cons_buff_0, i20 %211
  %213 = getelementptr bfloat, ptr @memC4_buff_0, i20 %211
  %214 = load <2 x bfloat>, ptr %212, align 4
  store <2 x bfloat> %214, ptr %213, align 4
  %215 = add nuw nsw i64 %195, 8
  %216 = icmp ult i64 %210, 766
  br i1 %216, label %194, label %217

217:                                              ; preds = %194
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_3_2() local_unnamed_addr #0 {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %145
  %1 = phi i64 [ 0, %0 ], [ %146, %145 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC3_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA3_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  br label %2

2:                                                ; preds = %2, %.preheader12
  %3 = phi i64 [ 0, %.preheader12 ], [ %23, %2 ]
  %4 = trunc nuw i64 %3 to i20
  %5 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %4
  %6 = getelementptr bfloat, ptr @memC3_buff_1, i20 %4
  %7 = load <2 x bfloat>, ptr %5, align 16
  store <2 x bfloat> %7, ptr %6, align 16
  %8 = trunc i64 %3 to i20
  %9 = or disjoint i20 %8, 2
  %10 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %9
  %11 = getelementptr bfloat, ptr @memC3_buff_1, i20 %9
  %12 = load <2 x bfloat>, ptr %10, align 4
  store <2 x bfloat> %12, ptr %11, align 4
  %13 = trunc i64 %3 to i20
  %14 = or disjoint i20 %13, 4
  %15 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %14
  %16 = getelementptr bfloat, ptr @memC3_buff_1, i20 %14
  %17 = load <2 x bfloat>, ptr %15, align 8
  store <2 x bfloat> %17, ptr %16, align 8
  %18 = or disjoint i64 %3, 6
  %19 = trunc nuw i64 %18 to i20
  %20 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %19
  %21 = getelementptr bfloat, ptr @memC3_buff_1, i20 %19
  %22 = load <2 x bfloat>, ptr %20, align 4
  store <2 x bfloat> %22, ptr %21, align 4
  %23 = add nuw nsw i64 %3, 8
  %24 = icmp ult i64 %18, 766
  br i1 %24, label %2, label %25

25:                                               ; preds = %2
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC3_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA3_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  br label %26

26:                                               ; preds = %26, %25
  %27 = phi i64 [ 0, %25 ], [ %47, %26 ]
  %28 = trunc nuw i64 %27 to i20
  %29 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %28
  %30 = getelementptr bfloat, ptr @memC3_buff_1, i20 %28
  %31 = load <2 x bfloat>, ptr %29, align 16
  store <2 x bfloat> %31, ptr %30, align 16
  %32 = trunc i64 %27 to i20
  %33 = or disjoint i20 %32, 2
  %34 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %33
  %35 = getelementptr bfloat, ptr @memC3_buff_1, i20 %33
  %36 = load <2 x bfloat>, ptr %34, align 4
  store <2 x bfloat> %36, ptr %35, align 4
  %37 = trunc i64 %27 to i20
  %38 = or disjoint i20 %37, 4
  %39 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %38
  %40 = getelementptr bfloat, ptr @memC3_buff_1, i20 %38
  %41 = load <2 x bfloat>, ptr %39, align 8
  store <2 x bfloat> %41, ptr %40, align 8
  %42 = or disjoint i64 %27, 6
  %43 = trunc nuw i64 %42 to i20
  %44 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %43
  %45 = getelementptr bfloat, ptr @memC3_buff_1, i20 %43
  %46 = load <2 x bfloat>, ptr %44, align 4
  store <2 x bfloat> %46, ptr %45, align 4
  %47 = add nuw nsw i64 %27, 8
  %48 = icmp ult i64 %42, 766
  br i1 %48, label %26, label %49

49:                                               ; preds = %26
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  br label %50

50:                                               ; preds = %50, %49
  %51 = phi i64 [ 0, %49 ], [ %71, %50 ]
  %52 = trunc nuw i64 %51 to i20
  %53 = getelementptr bfloat, ptr @memA3_cons_buff_0, i20 %52
  %54 = getelementptr bfloat, ptr @memC3_buff_0, i20 %52
  %55 = load <2 x bfloat>, ptr %53, align 16
  store <2 x bfloat> %55, ptr %54, align 16
  %56 = trunc i64 %51 to i20
  %57 = or disjoint i20 %56, 2
  %58 = getelementptr bfloat, ptr @memA3_cons_buff_0, i20 %57
  %59 = getelementptr bfloat, ptr @memC3_buff_0, i20 %57
  %60 = load <2 x bfloat>, ptr %58, align 4
  store <2 x bfloat> %60, ptr %59, align 4
  %61 = trunc i64 %51 to i20
  %62 = or disjoint i20 %61, 4
  %63 = getelementptr bfloat, ptr @memA3_cons_buff_0, i20 %62
  %64 = getelementptr bfloat, ptr @memC3_buff_0, i20 %62
  %65 = load <2 x bfloat>, ptr %63, align 8
  store <2 x bfloat> %65, ptr %64, align 8
  %66 = or disjoint i64 %51, 6
  %67 = trunc nuw i64 %66 to i20
  %68 = getelementptr bfloat, ptr @memA3_cons_buff_0, i20 %67
  %69 = getelementptr bfloat, ptr @memC3_buff_0, i20 %67
  %70 = load <2 x bfloat>, ptr %68, align 4
  store <2 x bfloat> %70, ptr %69, align 4
  %71 = add nuw nsw i64 %51, 8
  %72 = icmp ult i64 %66, 766
  br i1 %72, label %50, label %73

73:                                               ; preds = %50
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC3_buff_1, ptr noundef nonnull align 32 dereferenceable(1536) @memA3_cons_buff_1, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  br label %74

74:                                               ; preds = %74, %73
  %75 = phi i64 [ 0, %73 ], [ %95, %74 ]
  %76 = trunc nuw i64 %75 to i20
  %77 = getelementptr bfloat, ptr @memA3_cons_buff_0, i20 %76
  %78 = getelementptr bfloat, ptr @memC3_buff_0, i20 %76
  %79 = load <2 x bfloat>, ptr %77, align 16
  store <2 x bfloat> %79, ptr %78, align 16
  %80 = trunc i64 %75 to i20
  %81 = or disjoint i20 %80, 2
  %82 = getelementptr bfloat, ptr @memA3_cons_buff_0, i20 %81
  %83 = getelementptr bfloat, ptr @memC3_buff_0, i20 %81
  %84 = load <2 x bfloat>, ptr %82, align 4
  store <2 x bfloat> %84, ptr %83, align 4
  %85 = trunc i64 %75 to i20
  %86 = or disjoint i20 %85, 4
  %87 = getelementptr bfloat, ptr @memA3_cons_buff_0, i20 %86
  %88 = getelementptr bfloat, ptr @memC3_buff_0, i20 %86
  %89 = load <2 x bfloat>, ptr %87, align 8
  store <2 x bfloat> %89, ptr %88, align 8
  %90 = or disjoint i64 %75, 6
  %91 = trunc nuw i64 %90 to i20
  %92 = getelementptr bfloat, ptr @memA3_cons_buff_0, i20 %91
  %93 = getelementptr bfloat, ptr @memC3_buff_0, i20 %91
  %94 = load <2 x bfloat>, ptr %92, align 4
  store <2 x bfloat> %94, ptr %93, align 4
  %95 = add nuw nsw i64 %75, 8
  %96 = icmp ult i64 %90, 766
  br i1 %96, label %74, label %97

97:                                               ; preds = %74
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC3_buff_1, ptr noundef nonnull align 32 dereferenceable(1536) @memA3_cons_buff_1, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  br label %98

98:                                               ; preds = %98, %97
  %99 = phi i64 [ 0, %97 ], [ %119, %98 ]
  %100 = trunc nuw i64 %99 to i20
  %101 = getelementptr bfloat, ptr @memA3_cons_buff_0, i20 %100
  %102 = getelementptr bfloat, ptr @memC3_buff_0, i20 %100
  %103 = load <2 x bfloat>, ptr %101, align 16
  store <2 x bfloat> %103, ptr %102, align 16
  %104 = trunc i64 %99 to i20
  %105 = or disjoint i20 %104, 2
  %106 = getelementptr bfloat, ptr @memA3_cons_buff_0, i20 %105
  %107 = getelementptr bfloat, ptr @memC3_buff_0, i20 %105
  %108 = load <2 x bfloat>, ptr %106, align 4
  store <2 x bfloat> %108, ptr %107, align 4
  %109 = trunc i64 %99 to i20
  %110 = or disjoint i20 %109, 4
  %111 = getelementptr bfloat, ptr @memA3_cons_buff_0, i20 %110
  %112 = getelementptr bfloat, ptr @memC3_buff_0, i20 %110
  %113 = load <2 x bfloat>, ptr %111, align 8
  store <2 x bfloat> %113, ptr %112, align 8
  %114 = or disjoint i64 %99, 6
  %115 = trunc nuw i64 %114 to i20
  %116 = getelementptr bfloat, ptr @memA3_cons_buff_0, i20 %115
  %117 = getelementptr bfloat, ptr @memC3_buff_0, i20 %115
  %118 = load <2 x bfloat>, ptr %116, align 4
  store <2 x bfloat> %118, ptr %117, align 4
  %119 = add nuw nsw i64 %99, 8
  %120 = icmp ult i64 %114, 766
  br i1 %120, label %98, label %121

121:                                              ; preds = %98
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  br label %122

122:                                              ; preds = %122, %121
  %123 = phi i64 [ 0, %121 ], [ %143, %122 ]
  %124 = trunc nuw i64 %123 to i20
  %125 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %124
  %126 = getelementptr bfloat, ptr @memC3_buff_1, i20 %124
  %127 = load <2 x bfloat>, ptr %125, align 16
  store <2 x bfloat> %127, ptr %126, align 16
  %128 = trunc i64 %123 to i20
  %129 = or disjoint i20 %128, 2
  %130 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %129
  %131 = getelementptr bfloat, ptr @memC3_buff_1, i20 %129
  %132 = load <2 x bfloat>, ptr %130, align 4
  store <2 x bfloat> %132, ptr %131, align 4
  %133 = trunc i64 %123 to i20
  %134 = or disjoint i20 %133, 4
  %135 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %134
  %136 = getelementptr bfloat, ptr @memC3_buff_1, i20 %134
  %137 = load <2 x bfloat>, ptr %135, align 8
  store <2 x bfloat> %137, ptr %136, align 8
  %138 = or disjoint i64 %123, 6
  %139 = trunc nuw i64 %138 to i20
  %140 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %139
  %141 = getelementptr bfloat, ptr @memC3_buff_1, i20 %139
  %142 = load <2 x bfloat>, ptr %140, align 4
  store <2 x bfloat> %142, ptr %141, align 4
  %143 = add nuw nsw i64 %123, 8
  %144 = icmp ult i64 %138, 766
  br i1 %144, label %122, label %145

145:                                              ; preds = %122
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %146 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %146, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader12

.preheader.preheader:                             ; preds = %145
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC3_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA3_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  br label %147

147:                                              ; preds = %147, %.preheader.preheader
  %148 = phi i64 [ 0, %.preheader.preheader ], [ %168, %147 ]
  %149 = trunc nuw i64 %148 to i20
  %150 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %149
  %151 = getelementptr bfloat, ptr @memC3_buff_1, i20 %149
  %152 = load <2 x bfloat>, ptr %150, align 16
  store <2 x bfloat> %152, ptr %151, align 16
  %153 = trunc i64 %148 to i20
  %154 = or disjoint i20 %153, 2
  %155 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %154
  %156 = getelementptr bfloat, ptr @memC3_buff_1, i20 %154
  %157 = load <2 x bfloat>, ptr %155, align 4
  store <2 x bfloat> %157, ptr %156, align 4
  %158 = trunc i64 %148 to i20
  %159 = or disjoint i20 %158, 4
  %160 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %159
  %161 = getelementptr bfloat, ptr @memC3_buff_1, i20 %159
  %162 = load <2 x bfloat>, ptr %160, align 8
  store <2 x bfloat> %162, ptr %161, align 8
  %163 = or disjoint i64 %148, 6
  %164 = trunc nuw i64 %163 to i20
  %165 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %164
  %166 = getelementptr bfloat, ptr @memC3_buff_1, i20 %164
  %167 = load <2 x bfloat>, ptr %165, align 4
  store <2 x bfloat> %167, ptr %166, align 4
  %168 = add nuw nsw i64 %148, 8
  %169 = icmp ult i64 %163, 766
  br i1 %169, label %147, label %.preheader.1

.preheader.1:                                     ; preds = %147
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC3_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA3_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  br label %170

170:                                              ; preds = %170, %.preheader.1
  %171 = phi i64 [ 0, %.preheader.1 ], [ %191, %170 ]
  %172 = trunc nuw i64 %171 to i20
  %173 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %172
  %174 = getelementptr bfloat, ptr @memC3_buff_1, i20 %172
  %175 = load <2 x bfloat>, ptr %173, align 16
  store <2 x bfloat> %175, ptr %174, align 16
  %176 = trunc i64 %171 to i20
  %177 = or disjoint i20 %176, 2
  %178 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %177
  %179 = getelementptr bfloat, ptr @memC3_buff_1, i20 %177
  %180 = load <2 x bfloat>, ptr %178, align 4
  store <2 x bfloat> %180, ptr %179, align 4
  %181 = trunc i64 %171 to i20
  %182 = or disjoint i20 %181, 4
  %183 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %182
  %184 = getelementptr bfloat, ptr @memC3_buff_1, i20 %182
  %185 = load <2 x bfloat>, ptr %183, align 8
  store <2 x bfloat> %185, ptr %184, align 8
  %186 = or disjoint i64 %171, 6
  %187 = trunc nuw i64 %186 to i20
  %188 = getelementptr bfloat, ptr @memA3_cons_buff_1, i20 %187
  %189 = getelementptr bfloat, ptr @memC3_buff_1, i20 %187
  %190 = load <2 x bfloat>, ptr %188, align 4
  store <2 x bfloat> %190, ptr %189, align 4
  %191 = add nuw nsw i64 %171, 8
  %192 = icmp ult i64 %186, 766
  br i1 %192, label %170, label %193

193:                                              ; preds = %170
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  br label %194

194:                                              ; preds = %194, %193
  %195 = phi i64 [ 0, %193 ], [ %215, %194 ]
  %196 = trunc nuw i64 %195 to i20
  %197 = getelementptr bfloat, ptr @memA3_cons_buff_0, i20 %196
  %198 = getelementptr bfloat, ptr @memC3_buff_0, i20 %196
  %199 = load <2 x bfloat>, ptr %197, align 16
  store <2 x bfloat> %199, ptr %198, align 16
  %200 = trunc i64 %195 to i20
  %201 = or disjoint i20 %200, 2
  %202 = getelementptr bfloat, ptr @memA3_cons_buff_0, i20 %201
  %203 = getelementptr bfloat, ptr @memC3_buff_0, i20 %201
  %204 = load <2 x bfloat>, ptr %202, align 4
  store <2 x bfloat> %204, ptr %203, align 4
  %205 = trunc i64 %195 to i20
  %206 = or disjoint i20 %205, 4
  %207 = getelementptr bfloat, ptr @memA3_cons_buff_0, i20 %206
  %208 = getelementptr bfloat, ptr @memC3_buff_0, i20 %206
  %209 = load <2 x bfloat>, ptr %207, align 8
  store <2 x bfloat> %209, ptr %208, align 8
  %210 = or disjoint i64 %195, 6
  %211 = trunc nuw i64 %210 to i20
  %212 = getelementptr bfloat, ptr @memA3_cons_buff_0, i20 %211
  %213 = getelementptr bfloat, ptr @memC3_buff_0, i20 %211
  %214 = load <2 x bfloat>, ptr %212, align 4
  store <2 x bfloat> %214, ptr %213, align 4
  %215 = add nuw nsw i64 %195, 8
  %216 = icmp ult i64 %210, 766
  br i1 %216, label %194, label %217

217:                                              ; preds = %194
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_2_4() local_unnamed_addr #0 {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %145
  %1 = phi i64 [ 0, %0 ], [ %146, %145 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC2_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA2_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  br label %2

2:                                                ; preds = %2, %.preheader12
  %3 = phi i64 [ 0, %.preheader12 ], [ %23, %2 ]
  %4 = trunc nuw i64 %3 to i20
  %5 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %4
  %6 = getelementptr bfloat, ptr @memC2_buff_1, i20 %4
  %7 = load <2 x bfloat>, ptr %5, align 16
  store <2 x bfloat> %7, ptr %6, align 16
  %8 = trunc i64 %3 to i20
  %9 = or disjoint i20 %8, 2
  %10 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %9
  %11 = getelementptr bfloat, ptr @memC2_buff_1, i20 %9
  %12 = load <2 x bfloat>, ptr %10, align 4
  store <2 x bfloat> %12, ptr %11, align 4
  %13 = trunc i64 %3 to i20
  %14 = or disjoint i20 %13, 4
  %15 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %14
  %16 = getelementptr bfloat, ptr @memC2_buff_1, i20 %14
  %17 = load <2 x bfloat>, ptr %15, align 8
  store <2 x bfloat> %17, ptr %16, align 8
  %18 = or disjoint i64 %3, 6
  %19 = trunc nuw i64 %18 to i20
  %20 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %19
  %21 = getelementptr bfloat, ptr @memC2_buff_1, i20 %19
  %22 = load <2 x bfloat>, ptr %20, align 4
  store <2 x bfloat> %22, ptr %21, align 4
  %23 = add nuw nsw i64 %3, 8
  %24 = icmp ult i64 %18, 766
  br i1 %24, label %2, label %25

25:                                               ; preds = %2
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC2_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA2_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  br label %26

26:                                               ; preds = %26, %25
  %27 = phi i64 [ 0, %25 ], [ %47, %26 ]
  %28 = trunc nuw i64 %27 to i20
  %29 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %28
  %30 = getelementptr bfloat, ptr @memC2_buff_1, i20 %28
  %31 = load <2 x bfloat>, ptr %29, align 16
  store <2 x bfloat> %31, ptr %30, align 16
  %32 = trunc i64 %27 to i20
  %33 = or disjoint i20 %32, 2
  %34 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %33
  %35 = getelementptr bfloat, ptr @memC2_buff_1, i20 %33
  %36 = load <2 x bfloat>, ptr %34, align 4
  store <2 x bfloat> %36, ptr %35, align 4
  %37 = trunc i64 %27 to i20
  %38 = or disjoint i20 %37, 4
  %39 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %38
  %40 = getelementptr bfloat, ptr @memC2_buff_1, i20 %38
  %41 = load <2 x bfloat>, ptr %39, align 8
  store <2 x bfloat> %41, ptr %40, align 8
  %42 = or disjoint i64 %27, 6
  %43 = trunc nuw i64 %42 to i20
  %44 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %43
  %45 = getelementptr bfloat, ptr @memC2_buff_1, i20 %43
  %46 = load <2 x bfloat>, ptr %44, align 4
  store <2 x bfloat> %46, ptr %45, align 4
  %47 = add nuw nsw i64 %27, 8
  %48 = icmp ult i64 %42, 766
  br i1 %48, label %26, label %49

49:                                               ; preds = %26
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  br label %50

50:                                               ; preds = %50, %49
  %51 = phi i64 [ 0, %49 ], [ %71, %50 ]
  %52 = trunc nuw i64 %51 to i20
  %53 = getelementptr bfloat, ptr @memA2_cons_buff_0, i20 %52
  %54 = getelementptr bfloat, ptr @memC2_buff_0, i20 %52
  %55 = load <2 x bfloat>, ptr %53, align 16
  store <2 x bfloat> %55, ptr %54, align 16
  %56 = trunc i64 %51 to i20
  %57 = or disjoint i20 %56, 2
  %58 = getelementptr bfloat, ptr @memA2_cons_buff_0, i20 %57
  %59 = getelementptr bfloat, ptr @memC2_buff_0, i20 %57
  %60 = load <2 x bfloat>, ptr %58, align 4
  store <2 x bfloat> %60, ptr %59, align 4
  %61 = trunc i64 %51 to i20
  %62 = or disjoint i20 %61, 4
  %63 = getelementptr bfloat, ptr @memA2_cons_buff_0, i20 %62
  %64 = getelementptr bfloat, ptr @memC2_buff_0, i20 %62
  %65 = load <2 x bfloat>, ptr %63, align 8
  store <2 x bfloat> %65, ptr %64, align 8
  %66 = or disjoint i64 %51, 6
  %67 = trunc nuw i64 %66 to i20
  %68 = getelementptr bfloat, ptr @memA2_cons_buff_0, i20 %67
  %69 = getelementptr bfloat, ptr @memC2_buff_0, i20 %67
  %70 = load <2 x bfloat>, ptr %68, align 4
  store <2 x bfloat> %70, ptr %69, align 4
  %71 = add nuw nsw i64 %51, 8
  %72 = icmp ult i64 %66, 766
  br i1 %72, label %50, label %73

73:                                               ; preds = %50
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC2_buff_1, ptr noundef nonnull align 32 dereferenceable(1536) @memA2_cons_buff_1, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  br label %74

74:                                               ; preds = %74, %73
  %75 = phi i64 [ 0, %73 ], [ %95, %74 ]
  %76 = trunc nuw i64 %75 to i20
  %77 = getelementptr bfloat, ptr @memA2_cons_buff_0, i20 %76
  %78 = getelementptr bfloat, ptr @memC2_buff_0, i20 %76
  %79 = load <2 x bfloat>, ptr %77, align 16
  store <2 x bfloat> %79, ptr %78, align 16
  %80 = trunc i64 %75 to i20
  %81 = or disjoint i20 %80, 2
  %82 = getelementptr bfloat, ptr @memA2_cons_buff_0, i20 %81
  %83 = getelementptr bfloat, ptr @memC2_buff_0, i20 %81
  %84 = load <2 x bfloat>, ptr %82, align 4
  store <2 x bfloat> %84, ptr %83, align 4
  %85 = trunc i64 %75 to i20
  %86 = or disjoint i20 %85, 4
  %87 = getelementptr bfloat, ptr @memA2_cons_buff_0, i20 %86
  %88 = getelementptr bfloat, ptr @memC2_buff_0, i20 %86
  %89 = load <2 x bfloat>, ptr %87, align 8
  store <2 x bfloat> %89, ptr %88, align 8
  %90 = or disjoint i64 %75, 6
  %91 = trunc nuw i64 %90 to i20
  %92 = getelementptr bfloat, ptr @memA2_cons_buff_0, i20 %91
  %93 = getelementptr bfloat, ptr @memC2_buff_0, i20 %91
  %94 = load <2 x bfloat>, ptr %92, align 4
  store <2 x bfloat> %94, ptr %93, align 4
  %95 = add nuw nsw i64 %75, 8
  %96 = icmp ult i64 %90, 766
  br i1 %96, label %74, label %97

97:                                               ; preds = %74
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC2_buff_1, ptr noundef nonnull align 32 dereferenceable(1536) @memA2_cons_buff_1, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  br label %98

98:                                               ; preds = %98, %97
  %99 = phi i64 [ 0, %97 ], [ %119, %98 ]
  %100 = trunc nuw i64 %99 to i20
  %101 = getelementptr bfloat, ptr @memA2_cons_buff_0, i20 %100
  %102 = getelementptr bfloat, ptr @memC2_buff_0, i20 %100
  %103 = load <2 x bfloat>, ptr %101, align 16
  store <2 x bfloat> %103, ptr %102, align 16
  %104 = trunc i64 %99 to i20
  %105 = or disjoint i20 %104, 2
  %106 = getelementptr bfloat, ptr @memA2_cons_buff_0, i20 %105
  %107 = getelementptr bfloat, ptr @memC2_buff_0, i20 %105
  %108 = load <2 x bfloat>, ptr %106, align 4
  store <2 x bfloat> %108, ptr %107, align 4
  %109 = trunc i64 %99 to i20
  %110 = or disjoint i20 %109, 4
  %111 = getelementptr bfloat, ptr @memA2_cons_buff_0, i20 %110
  %112 = getelementptr bfloat, ptr @memC2_buff_0, i20 %110
  %113 = load <2 x bfloat>, ptr %111, align 8
  store <2 x bfloat> %113, ptr %112, align 8
  %114 = or disjoint i64 %99, 6
  %115 = trunc nuw i64 %114 to i20
  %116 = getelementptr bfloat, ptr @memA2_cons_buff_0, i20 %115
  %117 = getelementptr bfloat, ptr @memC2_buff_0, i20 %115
  %118 = load <2 x bfloat>, ptr %116, align 4
  store <2 x bfloat> %118, ptr %117, align 4
  %119 = add nuw nsw i64 %99, 8
  %120 = icmp ult i64 %114, 766
  br i1 %120, label %98, label %121

121:                                              ; preds = %98
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  br label %122

122:                                              ; preds = %122, %121
  %123 = phi i64 [ 0, %121 ], [ %143, %122 ]
  %124 = trunc nuw i64 %123 to i20
  %125 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %124
  %126 = getelementptr bfloat, ptr @memC2_buff_1, i20 %124
  %127 = load <2 x bfloat>, ptr %125, align 16
  store <2 x bfloat> %127, ptr %126, align 16
  %128 = trunc i64 %123 to i20
  %129 = or disjoint i20 %128, 2
  %130 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %129
  %131 = getelementptr bfloat, ptr @memC2_buff_1, i20 %129
  %132 = load <2 x bfloat>, ptr %130, align 4
  store <2 x bfloat> %132, ptr %131, align 4
  %133 = trunc i64 %123 to i20
  %134 = or disjoint i20 %133, 4
  %135 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %134
  %136 = getelementptr bfloat, ptr @memC2_buff_1, i20 %134
  %137 = load <2 x bfloat>, ptr %135, align 8
  store <2 x bfloat> %137, ptr %136, align 8
  %138 = or disjoint i64 %123, 6
  %139 = trunc nuw i64 %138 to i20
  %140 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %139
  %141 = getelementptr bfloat, ptr @memC2_buff_1, i20 %139
  %142 = load <2 x bfloat>, ptr %140, align 4
  store <2 x bfloat> %142, ptr %141, align 4
  %143 = add nuw nsw i64 %123, 8
  %144 = icmp ult i64 %138, 766
  br i1 %144, label %122, label %145

145:                                              ; preds = %122
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %146 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %146, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader12

.preheader.preheader:                             ; preds = %145
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC2_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA2_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  br label %147

147:                                              ; preds = %147, %.preheader.preheader
  %148 = phi i64 [ 0, %.preheader.preheader ], [ %168, %147 ]
  %149 = trunc nuw i64 %148 to i20
  %150 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %149
  %151 = getelementptr bfloat, ptr @memC2_buff_1, i20 %149
  %152 = load <2 x bfloat>, ptr %150, align 16
  store <2 x bfloat> %152, ptr %151, align 16
  %153 = trunc i64 %148 to i20
  %154 = or disjoint i20 %153, 2
  %155 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %154
  %156 = getelementptr bfloat, ptr @memC2_buff_1, i20 %154
  %157 = load <2 x bfloat>, ptr %155, align 4
  store <2 x bfloat> %157, ptr %156, align 4
  %158 = trunc i64 %148 to i20
  %159 = or disjoint i20 %158, 4
  %160 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %159
  %161 = getelementptr bfloat, ptr @memC2_buff_1, i20 %159
  %162 = load <2 x bfloat>, ptr %160, align 8
  store <2 x bfloat> %162, ptr %161, align 8
  %163 = or disjoint i64 %148, 6
  %164 = trunc nuw i64 %163 to i20
  %165 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %164
  %166 = getelementptr bfloat, ptr @memC2_buff_1, i20 %164
  %167 = load <2 x bfloat>, ptr %165, align 4
  store <2 x bfloat> %167, ptr %166, align 4
  %168 = add nuw nsw i64 %148, 8
  %169 = icmp ult i64 %163, 766
  br i1 %169, label %147, label %.preheader.1

.preheader.1:                                     ; preds = %147
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC2_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA2_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  br label %170

170:                                              ; preds = %170, %.preheader.1
  %171 = phi i64 [ 0, %.preheader.1 ], [ %191, %170 ]
  %172 = trunc nuw i64 %171 to i20
  %173 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %172
  %174 = getelementptr bfloat, ptr @memC2_buff_1, i20 %172
  %175 = load <2 x bfloat>, ptr %173, align 16
  store <2 x bfloat> %175, ptr %174, align 16
  %176 = trunc i64 %171 to i20
  %177 = or disjoint i20 %176, 2
  %178 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %177
  %179 = getelementptr bfloat, ptr @memC2_buff_1, i20 %177
  %180 = load <2 x bfloat>, ptr %178, align 4
  store <2 x bfloat> %180, ptr %179, align 4
  %181 = trunc i64 %171 to i20
  %182 = or disjoint i20 %181, 4
  %183 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %182
  %184 = getelementptr bfloat, ptr @memC2_buff_1, i20 %182
  %185 = load <2 x bfloat>, ptr %183, align 8
  store <2 x bfloat> %185, ptr %184, align 8
  %186 = or disjoint i64 %171, 6
  %187 = trunc nuw i64 %186 to i20
  %188 = getelementptr bfloat, ptr @memA2_cons_buff_1, i20 %187
  %189 = getelementptr bfloat, ptr @memC2_buff_1, i20 %187
  %190 = load <2 x bfloat>, ptr %188, align 4
  store <2 x bfloat> %190, ptr %189, align 4
  %191 = add nuw nsw i64 %171, 8
  %192 = icmp ult i64 %186, 766
  br i1 %192, label %170, label %193

193:                                              ; preds = %170
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  br label %194

194:                                              ; preds = %194, %193
  %195 = phi i64 [ 0, %193 ], [ %215, %194 ]
  %196 = trunc nuw i64 %195 to i20
  %197 = getelementptr bfloat, ptr @memA2_cons_buff_0, i20 %196
  %198 = getelementptr bfloat, ptr @memC2_buff_0, i20 %196
  %199 = load <2 x bfloat>, ptr %197, align 16
  store <2 x bfloat> %199, ptr %198, align 16
  %200 = trunc i64 %195 to i20
  %201 = or disjoint i20 %200, 2
  %202 = getelementptr bfloat, ptr @memA2_cons_buff_0, i20 %201
  %203 = getelementptr bfloat, ptr @memC2_buff_0, i20 %201
  %204 = load <2 x bfloat>, ptr %202, align 4
  store <2 x bfloat> %204, ptr %203, align 4
  %205 = trunc i64 %195 to i20
  %206 = or disjoint i20 %205, 4
  %207 = getelementptr bfloat, ptr @memA2_cons_buff_0, i20 %206
  %208 = getelementptr bfloat, ptr @memC2_buff_0, i20 %206
  %209 = load <2 x bfloat>, ptr %207, align 8
  store <2 x bfloat> %209, ptr %208, align 8
  %210 = or disjoint i64 %195, 6
  %211 = trunc nuw i64 %210 to i20
  %212 = getelementptr bfloat, ptr @memA2_cons_buff_0, i20 %211
  %213 = getelementptr bfloat, ptr @memC2_buff_0, i20 %211
  %214 = load <2 x bfloat>, ptr %212, align 4
  store <2 x bfloat> %214, ptr %213, align 4
  %215 = add nuw nsw i64 %195, 8
  %216 = icmp ult i64 %210, 766
  br i1 %216, label %194, label %217

217:                                              ; preds = %194
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_2_3() local_unnamed_addr #0 {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %145
  %1 = phi i64 [ 0, %0 ], [ %146, %145 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC1_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA1_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  br label %2

2:                                                ; preds = %2, %.preheader12
  %3 = phi i64 [ 0, %.preheader12 ], [ %23, %2 ]
  %4 = trunc nuw i64 %3 to i20
  %5 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %4
  %6 = getelementptr bfloat, ptr @memC1_buff_1, i20 %4
  %7 = load <2 x bfloat>, ptr %5, align 16
  store <2 x bfloat> %7, ptr %6, align 16
  %8 = trunc i64 %3 to i20
  %9 = or disjoint i20 %8, 2
  %10 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %9
  %11 = getelementptr bfloat, ptr @memC1_buff_1, i20 %9
  %12 = load <2 x bfloat>, ptr %10, align 4
  store <2 x bfloat> %12, ptr %11, align 4
  %13 = trunc i64 %3 to i20
  %14 = or disjoint i20 %13, 4
  %15 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %14
  %16 = getelementptr bfloat, ptr @memC1_buff_1, i20 %14
  %17 = load <2 x bfloat>, ptr %15, align 8
  store <2 x bfloat> %17, ptr %16, align 8
  %18 = or disjoint i64 %3, 6
  %19 = trunc nuw i64 %18 to i20
  %20 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %19
  %21 = getelementptr bfloat, ptr @memC1_buff_1, i20 %19
  %22 = load <2 x bfloat>, ptr %20, align 4
  store <2 x bfloat> %22, ptr %21, align 4
  %23 = add nuw nsw i64 %3, 8
  %24 = icmp ult i64 %18, 766
  br i1 %24, label %2, label %25

25:                                               ; preds = %2
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC1_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA1_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  br label %26

26:                                               ; preds = %26, %25
  %27 = phi i64 [ 0, %25 ], [ %47, %26 ]
  %28 = trunc nuw i64 %27 to i20
  %29 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %28
  %30 = getelementptr bfloat, ptr @memC1_buff_1, i20 %28
  %31 = load <2 x bfloat>, ptr %29, align 16
  store <2 x bfloat> %31, ptr %30, align 16
  %32 = trunc i64 %27 to i20
  %33 = or disjoint i20 %32, 2
  %34 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %33
  %35 = getelementptr bfloat, ptr @memC1_buff_1, i20 %33
  %36 = load <2 x bfloat>, ptr %34, align 4
  store <2 x bfloat> %36, ptr %35, align 4
  %37 = trunc i64 %27 to i20
  %38 = or disjoint i20 %37, 4
  %39 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %38
  %40 = getelementptr bfloat, ptr @memC1_buff_1, i20 %38
  %41 = load <2 x bfloat>, ptr %39, align 8
  store <2 x bfloat> %41, ptr %40, align 8
  %42 = or disjoint i64 %27, 6
  %43 = trunc nuw i64 %42 to i20
  %44 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %43
  %45 = getelementptr bfloat, ptr @memC1_buff_1, i20 %43
  %46 = load <2 x bfloat>, ptr %44, align 4
  store <2 x bfloat> %46, ptr %45, align 4
  %47 = add nuw nsw i64 %27, 8
  %48 = icmp ult i64 %42, 766
  br i1 %48, label %26, label %49

49:                                               ; preds = %26
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  br label %50

50:                                               ; preds = %50, %49
  %51 = phi i64 [ 0, %49 ], [ %71, %50 ]
  %52 = trunc nuw i64 %51 to i20
  %53 = getelementptr bfloat, ptr @memA1_cons_buff_0, i20 %52
  %54 = getelementptr bfloat, ptr @memC1_buff_0, i20 %52
  %55 = load <2 x bfloat>, ptr %53, align 16
  store <2 x bfloat> %55, ptr %54, align 16
  %56 = trunc i64 %51 to i20
  %57 = or disjoint i20 %56, 2
  %58 = getelementptr bfloat, ptr @memA1_cons_buff_0, i20 %57
  %59 = getelementptr bfloat, ptr @memC1_buff_0, i20 %57
  %60 = load <2 x bfloat>, ptr %58, align 4
  store <2 x bfloat> %60, ptr %59, align 4
  %61 = trunc i64 %51 to i20
  %62 = or disjoint i20 %61, 4
  %63 = getelementptr bfloat, ptr @memA1_cons_buff_0, i20 %62
  %64 = getelementptr bfloat, ptr @memC1_buff_0, i20 %62
  %65 = load <2 x bfloat>, ptr %63, align 8
  store <2 x bfloat> %65, ptr %64, align 8
  %66 = or disjoint i64 %51, 6
  %67 = trunc nuw i64 %66 to i20
  %68 = getelementptr bfloat, ptr @memA1_cons_buff_0, i20 %67
  %69 = getelementptr bfloat, ptr @memC1_buff_0, i20 %67
  %70 = load <2 x bfloat>, ptr %68, align 4
  store <2 x bfloat> %70, ptr %69, align 4
  %71 = add nuw nsw i64 %51, 8
  %72 = icmp ult i64 %66, 766
  br i1 %72, label %50, label %73

73:                                               ; preds = %50
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC1_buff_1, ptr noundef nonnull align 32 dereferenceable(1536) @memA1_cons_buff_1, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  br label %74

74:                                               ; preds = %74, %73
  %75 = phi i64 [ 0, %73 ], [ %95, %74 ]
  %76 = trunc nuw i64 %75 to i20
  %77 = getelementptr bfloat, ptr @memA1_cons_buff_0, i20 %76
  %78 = getelementptr bfloat, ptr @memC1_buff_0, i20 %76
  %79 = load <2 x bfloat>, ptr %77, align 16
  store <2 x bfloat> %79, ptr %78, align 16
  %80 = trunc i64 %75 to i20
  %81 = or disjoint i20 %80, 2
  %82 = getelementptr bfloat, ptr @memA1_cons_buff_0, i20 %81
  %83 = getelementptr bfloat, ptr @memC1_buff_0, i20 %81
  %84 = load <2 x bfloat>, ptr %82, align 4
  store <2 x bfloat> %84, ptr %83, align 4
  %85 = trunc i64 %75 to i20
  %86 = or disjoint i20 %85, 4
  %87 = getelementptr bfloat, ptr @memA1_cons_buff_0, i20 %86
  %88 = getelementptr bfloat, ptr @memC1_buff_0, i20 %86
  %89 = load <2 x bfloat>, ptr %87, align 8
  store <2 x bfloat> %89, ptr %88, align 8
  %90 = or disjoint i64 %75, 6
  %91 = trunc nuw i64 %90 to i20
  %92 = getelementptr bfloat, ptr @memA1_cons_buff_0, i20 %91
  %93 = getelementptr bfloat, ptr @memC1_buff_0, i20 %91
  %94 = load <2 x bfloat>, ptr %92, align 4
  store <2 x bfloat> %94, ptr %93, align 4
  %95 = add nuw nsw i64 %75, 8
  %96 = icmp ult i64 %90, 766
  br i1 %96, label %74, label %97

97:                                               ; preds = %74
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC1_buff_1, ptr noundef nonnull align 32 dereferenceable(1536) @memA1_cons_buff_1, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  br label %98

98:                                               ; preds = %98, %97
  %99 = phi i64 [ 0, %97 ], [ %119, %98 ]
  %100 = trunc nuw i64 %99 to i20
  %101 = getelementptr bfloat, ptr @memA1_cons_buff_0, i20 %100
  %102 = getelementptr bfloat, ptr @memC1_buff_0, i20 %100
  %103 = load <2 x bfloat>, ptr %101, align 16
  store <2 x bfloat> %103, ptr %102, align 16
  %104 = trunc i64 %99 to i20
  %105 = or disjoint i20 %104, 2
  %106 = getelementptr bfloat, ptr @memA1_cons_buff_0, i20 %105
  %107 = getelementptr bfloat, ptr @memC1_buff_0, i20 %105
  %108 = load <2 x bfloat>, ptr %106, align 4
  store <2 x bfloat> %108, ptr %107, align 4
  %109 = trunc i64 %99 to i20
  %110 = or disjoint i20 %109, 4
  %111 = getelementptr bfloat, ptr @memA1_cons_buff_0, i20 %110
  %112 = getelementptr bfloat, ptr @memC1_buff_0, i20 %110
  %113 = load <2 x bfloat>, ptr %111, align 8
  store <2 x bfloat> %113, ptr %112, align 8
  %114 = or disjoint i64 %99, 6
  %115 = trunc nuw i64 %114 to i20
  %116 = getelementptr bfloat, ptr @memA1_cons_buff_0, i20 %115
  %117 = getelementptr bfloat, ptr @memC1_buff_0, i20 %115
  %118 = load <2 x bfloat>, ptr %116, align 4
  store <2 x bfloat> %118, ptr %117, align 4
  %119 = add nuw nsw i64 %99, 8
  %120 = icmp ult i64 %114, 766
  br i1 %120, label %98, label %121

121:                                              ; preds = %98
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  br label %122

122:                                              ; preds = %122, %121
  %123 = phi i64 [ 0, %121 ], [ %143, %122 ]
  %124 = trunc nuw i64 %123 to i20
  %125 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %124
  %126 = getelementptr bfloat, ptr @memC1_buff_1, i20 %124
  %127 = load <2 x bfloat>, ptr %125, align 16
  store <2 x bfloat> %127, ptr %126, align 16
  %128 = trunc i64 %123 to i20
  %129 = or disjoint i20 %128, 2
  %130 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %129
  %131 = getelementptr bfloat, ptr @memC1_buff_1, i20 %129
  %132 = load <2 x bfloat>, ptr %130, align 4
  store <2 x bfloat> %132, ptr %131, align 4
  %133 = trunc i64 %123 to i20
  %134 = or disjoint i20 %133, 4
  %135 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %134
  %136 = getelementptr bfloat, ptr @memC1_buff_1, i20 %134
  %137 = load <2 x bfloat>, ptr %135, align 8
  store <2 x bfloat> %137, ptr %136, align 8
  %138 = or disjoint i64 %123, 6
  %139 = trunc nuw i64 %138 to i20
  %140 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %139
  %141 = getelementptr bfloat, ptr @memC1_buff_1, i20 %139
  %142 = load <2 x bfloat>, ptr %140, align 4
  store <2 x bfloat> %142, ptr %141, align 4
  %143 = add nuw nsw i64 %123, 8
  %144 = icmp ult i64 %138, 766
  br i1 %144, label %122, label %145

145:                                              ; preds = %122
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %146 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %146, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader12

.preheader.preheader:                             ; preds = %145
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC1_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA1_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  br label %147

147:                                              ; preds = %147, %.preheader.preheader
  %148 = phi i64 [ 0, %.preheader.preheader ], [ %168, %147 ]
  %149 = trunc nuw i64 %148 to i20
  %150 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %149
  %151 = getelementptr bfloat, ptr @memC1_buff_1, i20 %149
  %152 = load <2 x bfloat>, ptr %150, align 16
  store <2 x bfloat> %152, ptr %151, align 16
  %153 = trunc i64 %148 to i20
  %154 = or disjoint i20 %153, 2
  %155 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %154
  %156 = getelementptr bfloat, ptr @memC1_buff_1, i20 %154
  %157 = load <2 x bfloat>, ptr %155, align 4
  store <2 x bfloat> %157, ptr %156, align 4
  %158 = trunc i64 %148 to i20
  %159 = or disjoint i20 %158, 4
  %160 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %159
  %161 = getelementptr bfloat, ptr @memC1_buff_1, i20 %159
  %162 = load <2 x bfloat>, ptr %160, align 8
  store <2 x bfloat> %162, ptr %161, align 8
  %163 = or disjoint i64 %148, 6
  %164 = trunc nuw i64 %163 to i20
  %165 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %164
  %166 = getelementptr bfloat, ptr @memC1_buff_1, i20 %164
  %167 = load <2 x bfloat>, ptr %165, align 4
  store <2 x bfloat> %167, ptr %166, align 4
  %168 = add nuw nsw i64 %148, 8
  %169 = icmp ult i64 %163, 766
  br i1 %169, label %147, label %.preheader.1

.preheader.1:                                     ; preds = %147
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC1_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA1_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  br label %170

170:                                              ; preds = %170, %.preheader.1
  %171 = phi i64 [ 0, %.preheader.1 ], [ %191, %170 ]
  %172 = trunc nuw i64 %171 to i20
  %173 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %172
  %174 = getelementptr bfloat, ptr @memC1_buff_1, i20 %172
  %175 = load <2 x bfloat>, ptr %173, align 16
  store <2 x bfloat> %175, ptr %174, align 16
  %176 = trunc i64 %171 to i20
  %177 = or disjoint i20 %176, 2
  %178 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %177
  %179 = getelementptr bfloat, ptr @memC1_buff_1, i20 %177
  %180 = load <2 x bfloat>, ptr %178, align 4
  store <2 x bfloat> %180, ptr %179, align 4
  %181 = trunc i64 %171 to i20
  %182 = or disjoint i20 %181, 4
  %183 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %182
  %184 = getelementptr bfloat, ptr @memC1_buff_1, i20 %182
  %185 = load <2 x bfloat>, ptr %183, align 8
  store <2 x bfloat> %185, ptr %184, align 8
  %186 = or disjoint i64 %171, 6
  %187 = trunc nuw i64 %186 to i20
  %188 = getelementptr bfloat, ptr @memA1_cons_buff_1, i20 %187
  %189 = getelementptr bfloat, ptr @memC1_buff_1, i20 %187
  %190 = load <2 x bfloat>, ptr %188, align 4
  store <2 x bfloat> %190, ptr %189, align 4
  %191 = add nuw nsw i64 %171, 8
  %192 = icmp ult i64 %186, 766
  br i1 %192, label %170, label %193

193:                                              ; preds = %170
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  br label %194

194:                                              ; preds = %194, %193
  %195 = phi i64 [ 0, %193 ], [ %215, %194 ]
  %196 = trunc nuw i64 %195 to i20
  %197 = getelementptr bfloat, ptr @memA1_cons_buff_0, i20 %196
  %198 = getelementptr bfloat, ptr @memC1_buff_0, i20 %196
  %199 = load <2 x bfloat>, ptr %197, align 16
  store <2 x bfloat> %199, ptr %198, align 16
  %200 = trunc i64 %195 to i20
  %201 = or disjoint i20 %200, 2
  %202 = getelementptr bfloat, ptr @memA1_cons_buff_0, i20 %201
  %203 = getelementptr bfloat, ptr @memC1_buff_0, i20 %201
  %204 = load <2 x bfloat>, ptr %202, align 4
  store <2 x bfloat> %204, ptr %203, align 4
  %205 = trunc i64 %195 to i20
  %206 = or disjoint i20 %205, 4
  %207 = getelementptr bfloat, ptr @memA1_cons_buff_0, i20 %206
  %208 = getelementptr bfloat, ptr @memC1_buff_0, i20 %206
  %209 = load <2 x bfloat>, ptr %207, align 8
  store <2 x bfloat> %209, ptr %208, align 8
  %210 = or disjoint i64 %195, 6
  %211 = trunc nuw i64 %210 to i20
  %212 = getelementptr bfloat, ptr @memA1_cons_buff_0, i20 %211
  %213 = getelementptr bfloat, ptr @memC1_buff_0, i20 %211
  %214 = load <2 x bfloat>, ptr %212, align 4
  store <2 x bfloat> %214, ptr %213, align 4
  %215 = add nuw nsw i64 %195, 8
  %216 = icmp ult i64 %210, 766
  br i1 %216, label %194, label %217

217:                                              ; preds = %194
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

; Function Attrs: nounwind
define void @core_2_2() local_unnamed_addr #0 {
  br label %.preheader12

.preheader12:                                     ; preds = %0, %145
  %1 = phi i64 [ 0, %0 ], [ %146, %145 ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC0_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA0_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  br label %2

2:                                                ; preds = %2, %.preheader12
  %3 = phi i64 [ 0, %.preheader12 ], [ %23, %2 ]
  %4 = trunc nuw i64 %3 to i20
  %5 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %4
  %6 = getelementptr bfloat, ptr @memC0_buff_1, i20 %4
  %7 = load <2 x bfloat>, ptr %5, align 16
  store <2 x bfloat> %7, ptr %6, align 16
  %8 = trunc i64 %3 to i20
  %9 = or disjoint i20 %8, 2
  %10 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %9
  %11 = getelementptr bfloat, ptr @memC0_buff_1, i20 %9
  %12 = load <2 x bfloat>, ptr %10, align 4
  store <2 x bfloat> %12, ptr %11, align 4
  %13 = trunc i64 %3 to i20
  %14 = or disjoint i20 %13, 4
  %15 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %14
  %16 = getelementptr bfloat, ptr @memC0_buff_1, i20 %14
  %17 = load <2 x bfloat>, ptr %15, align 8
  store <2 x bfloat> %17, ptr %16, align 8
  %18 = or disjoint i64 %3, 6
  %19 = trunc nuw i64 %18 to i20
  %20 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %19
  %21 = getelementptr bfloat, ptr @memC0_buff_1, i20 %19
  %22 = load <2 x bfloat>, ptr %20, align 4
  store <2 x bfloat> %22, ptr %21, align 4
  %23 = add nuw nsw i64 %3, 8
  %24 = icmp ult i64 %18, 766
  br i1 %24, label %2, label %25

25:                                               ; preds = %2
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC0_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA0_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  br label %26

26:                                               ; preds = %26, %25
  %27 = phi i64 [ 0, %25 ], [ %47, %26 ]
  %28 = trunc nuw i64 %27 to i20
  %29 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %28
  %30 = getelementptr bfloat, ptr @memC0_buff_1, i20 %28
  %31 = load <2 x bfloat>, ptr %29, align 16
  store <2 x bfloat> %31, ptr %30, align 16
  %32 = trunc i64 %27 to i20
  %33 = or disjoint i20 %32, 2
  %34 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %33
  %35 = getelementptr bfloat, ptr @memC0_buff_1, i20 %33
  %36 = load <2 x bfloat>, ptr %34, align 4
  store <2 x bfloat> %36, ptr %35, align 4
  %37 = trunc i64 %27 to i20
  %38 = or disjoint i20 %37, 4
  %39 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %38
  %40 = getelementptr bfloat, ptr @memC0_buff_1, i20 %38
  %41 = load <2 x bfloat>, ptr %39, align 8
  store <2 x bfloat> %41, ptr %40, align 8
  %42 = or disjoint i64 %27, 6
  %43 = trunc nuw i64 %42 to i20
  %44 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %43
  %45 = getelementptr bfloat, ptr @memC0_buff_1, i20 %43
  %46 = load <2 x bfloat>, ptr %44, align 4
  store <2 x bfloat> %46, ptr %45, align 4
  %47 = add nuw nsw i64 %27, 8
  %48 = icmp ult i64 %42, 766
  br i1 %48, label %26, label %49

49:                                               ; preds = %26
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  br label %50

50:                                               ; preds = %50, %49
  %51 = phi i64 [ 0, %49 ], [ %71, %50 ]
  %52 = trunc nuw i64 %51 to i20
  %53 = getelementptr bfloat, ptr @memA0_cons_buff_0, i20 %52
  %54 = getelementptr bfloat, ptr @memC0_buff_0, i20 %52
  %55 = load <2 x bfloat>, ptr %53, align 16
  store <2 x bfloat> %55, ptr %54, align 16
  %56 = trunc i64 %51 to i20
  %57 = or disjoint i20 %56, 2
  %58 = getelementptr bfloat, ptr @memA0_cons_buff_0, i20 %57
  %59 = getelementptr bfloat, ptr @memC0_buff_0, i20 %57
  %60 = load <2 x bfloat>, ptr %58, align 4
  store <2 x bfloat> %60, ptr %59, align 4
  %61 = trunc i64 %51 to i20
  %62 = or disjoint i20 %61, 4
  %63 = getelementptr bfloat, ptr @memA0_cons_buff_0, i20 %62
  %64 = getelementptr bfloat, ptr @memC0_buff_0, i20 %62
  %65 = load <2 x bfloat>, ptr %63, align 8
  store <2 x bfloat> %65, ptr %64, align 8
  %66 = or disjoint i64 %51, 6
  %67 = trunc nuw i64 %66 to i20
  %68 = getelementptr bfloat, ptr @memA0_cons_buff_0, i20 %67
  %69 = getelementptr bfloat, ptr @memC0_buff_0, i20 %67
  %70 = load <2 x bfloat>, ptr %68, align 4
  store <2 x bfloat> %70, ptr %69, align 4
  %71 = add nuw nsw i64 %51, 8
  %72 = icmp ult i64 %66, 766
  br i1 %72, label %50, label %73

73:                                               ; preds = %50
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC0_buff_1, ptr noundef nonnull align 32 dereferenceable(1536) @memA0_cons_buff_1, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  br label %74

74:                                               ; preds = %74, %73
  %75 = phi i64 [ 0, %73 ], [ %95, %74 ]
  %76 = trunc nuw i64 %75 to i20
  %77 = getelementptr bfloat, ptr @memA0_cons_buff_0, i20 %76
  %78 = getelementptr bfloat, ptr @memC0_buff_0, i20 %76
  %79 = load <2 x bfloat>, ptr %77, align 16
  store <2 x bfloat> %79, ptr %78, align 16
  %80 = trunc i64 %75 to i20
  %81 = or disjoint i20 %80, 2
  %82 = getelementptr bfloat, ptr @memA0_cons_buff_0, i20 %81
  %83 = getelementptr bfloat, ptr @memC0_buff_0, i20 %81
  %84 = load <2 x bfloat>, ptr %82, align 4
  store <2 x bfloat> %84, ptr %83, align 4
  %85 = trunc i64 %75 to i20
  %86 = or disjoint i20 %85, 4
  %87 = getelementptr bfloat, ptr @memA0_cons_buff_0, i20 %86
  %88 = getelementptr bfloat, ptr @memC0_buff_0, i20 %86
  %89 = load <2 x bfloat>, ptr %87, align 8
  store <2 x bfloat> %89, ptr %88, align 8
  %90 = or disjoint i64 %75, 6
  %91 = trunc nuw i64 %90 to i20
  %92 = getelementptr bfloat, ptr @memA0_cons_buff_0, i20 %91
  %93 = getelementptr bfloat, ptr @memC0_buff_0, i20 %91
  %94 = load <2 x bfloat>, ptr %92, align 4
  store <2 x bfloat> %94, ptr %93, align 4
  %95 = add nuw nsw i64 %75, 8
  %96 = icmp ult i64 %90, 766
  br i1 %96, label %74, label %97

97:                                               ; preds = %74
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC0_buff_1, ptr noundef nonnull align 32 dereferenceable(1536) @memA0_cons_buff_1, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  br label %98

98:                                               ; preds = %98, %97
  %99 = phi i64 [ 0, %97 ], [ %119, %98 ]
  %100 = trunc nuw i64 %99 to i20
  %101 = getelementptr bfloat, ptr @memA0_cons_buff_0, i20 %100
  %102 = getelementptr bfloat, ptr @memC0_buff_0, i20 %100
  %103 = load <2 x bfloat>, ptr %101, align 16
  store <2 x bfloat> %103, ptr %102, align 16
  %104 = trunc i64 %99 to i20
  %105 = or disjoint i20 %104, 2
  %106 = getelementptr bfloat, ptr @memA0_cons_buff_0, i20 %105
  %107 = getelementptr bfloat, ptr @memC0_buff_0, i20 %105
  %108 = load <2 x bfloat>, ptr %106, align 4
  store <2 x bfloat> %108, ptr %107, align 4
  %109 = trunc i64 %99 to i20
  %110 = or disjoint i20 %109, 4
  %111 = getelementptr bfloat, ptr @memA0_cons_buff_0, i20 %110
  %112 = getelementptr bfloat, ptr @memC0_buff_0, i20 %110
  %113 = load <2 x bfloat>, ptr %111, align 8
  store <2 x bfloat> %113, ptr %112, align 8
  %114 = or disjoint i64 %99, 6
  %115 = trunc nuw i64 %114 to i20
  %116 = getelementptr bfloat, ptr @memA0_cons_buff_0, i20 %115
  %117 = getelementptr bfloat, ptr @memC0_buff_0, i20 %115
  %118 = load <2 x bfloat>, ptr %116, align 4
  store <2 x bfloat> %118, ptr %117, align 4
  %119 = add nuw nsw i64 %99, 8
  %120 = icmp ult i64 %114, 766
  br i1 %120, label %98, label %121

121:                                              ; preds = %98
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  br label %122

122:                                              ; preds = %122, %121
  %123 = phi i64 [ 0, %121 ], [ %143, %122 ]
  %124 = trunc nuw i64 %123 to i20
  %125 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %124
  %126 = getelementptr bfloat, ptr @memC0_buff_1, i20 %124
  %127 = load <2 x bfloat>, ptr %125, align 16
  store <2 x bfloat> %127, ptr %126, align 16
  %128 = trunc i64 %123 to i20
  %129 = or disjoint i20 %128, 2
  %130 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %129
  %131 = getelementptr bfloat, ptr @memC0_buff_1, i20 %129
  %132 = load <2 x bfloat>, ptr %130, align 4
  store <2 x bfloat> %132, ptr %131, align 4
  %133 = trunc i64 %123 to i20
  %134 = or disjoint i20 %133, 4
  %135 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %134
  %136 = getelementptr bfloat, ptr @memC0_buff_1, i20 %134
  %137 = load <2 x bfloat>, ptr %135, align 8
  store <2 x bfloat> %137, ptr %136, align 8
  %138 = or disjoint i64 %123, 6
  %139 = trunc nuw i64 %138 to i20
  %140 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %139
  %141 = getelementptr bfloat, ptr @memC0_buff_1, i20 %139
  %142 = load <2 x bfloat>, ptr %140, align 4
  store <2 x bfloat> %142, ptr %141, align 4
  %143 = add nuw nsw i64 %123, 8
  %144 = icmp ult i64 %138, 766
  br i1 %144, label %122, label %145

145:                                              ; preds = %122
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %146 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %146, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader12

.preheader.preheader:                             ; preds = %145
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC0_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA0_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  br label %147

147:                                              ; preds = %147, %.preheader.preheader
  %148 = phi i64 [ 0, %.preheader.preheader ], [ %168, %147 ]
  %149 = trunc nuw i64 %148 to i20
  %150 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %149
  %151 = getelementptr bfloat, ptr @memC0_buff_1, i20 %149
  %152 = load <2 x bfloat>, ptr %150, align 16
  store <2 x bfloat> %152, ptr %151, align 16
  %153 = trunc i64 %148 to i20
  %154 = or disjoint i20 %153, 2
  %155 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %154
  %156 = getelementptr bfloat, ptr @memC0_buff_1, i20 %154
  %157 = load <2 x bfloat>, ptr %155, align 4
  store <2 x bfloat> %157, ptr %156, align 4
  %158 = trunc i64 %148 to i20
  %159 = or disjoint i20 %158, 4
  %160 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %159
  %161 = getelementptr bfloat, ptr @memC0_buff_1, i20 %159
  %162 = load <2 x bfloat>, ptr %160, align 8
  store <2 x bfloat> %162, ptr %161, align 8
  %163 = or disjoint i64 %148, 6
  %164 = trunc nuw i64 %163 to i20
  %165 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %164
  %166 = getelementptr bfloat, ptr @memC0_buff_1, i20 %164
  %167 = load <2 x bfloat>, ptr %165, align 4
  store <2 x bfloat> %167, ptr %166, align 4
  %168 = add nuw nsw i64 %148, 8
  %169 = icmp ult i64 %163, 766
  br i1 %169, label %147, label %.preheader.1

.preheader.1:                                     ; preds = %147
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  tail call void @llvm.memcpy.p0.p0.i20(ptr noundef nonnull align 32 dereferenceable(1536) @memC0_buff_0, ptr noundef nonnull align 32 dereferenceable(1536) @memA0_cons_buff_0, i20 1536, i1 false)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  br label %170

170:                                              ; preds = %170, %.preheader.1
  %171 = phi i64 [ 0, %.preheader.1 ], [ %191, %170 ]
  %172 = trunc nuw i64 %171 to i20
  %173 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %172
  %174 = getelementptr bfloat, ptr @memC0_buff_1, i20 %172
  %175 = load <2 x bfloat>, ptr %173, align 16
  store <2 x bfloat> %175, ptr %174, align 16
  %176 = trunc i64 %171 to i20
  %177 = or disjoint i20 %176, 2
  %178 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %177
  %179 = getelementptr bfloat, ptr @memC0_buff_1, i20 %177
  %180 = load <2 x bfloat>, ptr %178, align 4
  store <2 x bfloat> %180, ptr %179, align 4
  %181 = trunc i64 %171 to i20
  %182 = or disjoint i20 %181, 4
  %183 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %182
  %184 = getelementptr bfloat, ptr @memC0_buff_1, i20 %182
  %185 = load <2 x bfloat>, ptr %183, align 8
  store <2 x bfloat> %185, ptr %184, align 8
  %186 = or disjoint i64 %171, 6
  %187 = trunc nuw i64 %186 to i20
  %188 = getelementptr bfloat, ptr @memA0_cons_buff_1, i20 %187
  %189 = getelementptr bfloat, ptr @memC0_buff_1, i20 %187
  %190 = load <2 x bfloat>, ptr %188, align 4
  store <2 x bfloat> %190, ptr %189, align 4
  %191 = add nuw nsw i64 %171, 8
  %192 = icmp ult i64 %186, 766
  br i1 %192, label %170, label %193

193:                                              ; preds = %170
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  br label %194

194:                                              ; preds = %194, %193
  %195 = phi i64 [ 0, %193 ], [ %215, %194 ]
  %196 = trunc nuw i64 %195 to i20
  %197 = getelementptr bfloat, ptr @memA0_cons_buff_0, i20 %196
  %198 = getelementptr bfloat, ptr @memC0_buff_0, i20 %196
  %199 = load <2 x bfloat>, ptr %197, align 16
  store <2 x bfloat> %199, ptr %198, align 16
  %200 = trunc i64 %195 to i20
  %201 = or disjoint i20 %200, 2
  %202 = getelementptr bfloat, ptr @memA0_cons_buff_0, i20 %201
  %203 = getelementptr bfloat, ptr @memC0_buff_0, i20 %201
  %204 = load <2 x bfloat>, ptr %202, align 4
  store <2 x bfloat> %204, ptr %203, align 4
  %205 = trunc i64 %195 to i20
  %206 = or disjoint i20 %205, 4
  %207 = getelementptr bfloat, ptr @memA0_cons_buff_0, i20 %206
  %208 = getelementptr bfloat, ptr @memC0_buff_0, i20 %206
  %209 = load <2 x bfloat>, ptr %207, align 8
  store <2 x bfloat> %209, ptr %208, align 8
  %210 = or disjoint i64 %195, 6
  %211 = trunc nuw i64 %210 to i20
  %212 = getelementptr bfloat, ptr @memA0_cons_buff_0, i20 %211
  %213 = getelementptr bfloat, ptr @memC0_buff_0, i20 %211
  %214 = load <2 x bfloat>, ptr %212, align 4
  store <2 x bfloat> %214, ptr %213, align 4
  %215 = add nuw nsw i64 %195, 8
  %216 = icmp ult i64 %210, 766
  br i1 %216, label %194, label %217

217:                                              ; preds = %194
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i20(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i20, i1 immarg) #2

attributes #0 = { nounwind }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
