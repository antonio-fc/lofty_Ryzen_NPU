; ModuleID = '/notebooks/my_mlir-aie/apps/broadcast_example/build/aie.mlir.prj/input.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
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
@out1_cons_buff_1 = external global [192 x bfloat]
@out1_cons_buff_0 = external global [192 x bfloat]
@out2_cons_buff_1 = external global [192 x bfloat]
@out2_cons_buff_0 = external global [192 x bfloat]
@out_buff_1 = external global [32 x bfloat]
@out_buff_0 = external global [32 x bfloat]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @mean(ptr, ptr, ptr, i32) local_unnamed_addr

declare void @main_kernel(bfloat, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32) local_unnamed_addr

define void @core_3_5() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %44
  %2 = phi i64 [ 0, %0 ], [ %45, %44 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  %3 = load bfloat, ptr @in0_11_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ 0, %1 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 2046
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  %10 = load bfloat, ptr @in0_11_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %14, %11 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %13 = or disjoint i64 %12, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %14 = add nuw nsw i64 %12, 8
  %15 = icmp ult i64 %13, 2046
  br i1 %15, label %11, label %16

16:                                               ; preds = %11
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  %17 = load bfloat, ptr @in0_11_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %21, %18 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %20 = or disjoint i64 %19, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add nuw nsw i64 %19, 8
  %22 = icmp ult i64 %20, 2046
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  %24 = load bfloat, ptr @in0_11_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %28, %25 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %27 = or disjoint i64 %26, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %28 = add nuw nsw i64 %26, 8
  %29 = icmp ult i64 %27, 2046
  br i1 %29, label %25, label %30

30:                                               ; preds = %25
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  %31 = load bfloat, ptr @in0_11_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %35, %32 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %34 = or disjoint i64 %33, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %35 = add nuw nsw i64 %33, 8
  %36 = icmp ult i64 %34, 2046
  br i1 %36, label %32, label %37

37:                                               ; preds = %32
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  %38 = load bfloat, ptr @in0_11_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %42, %39 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %41 = or disjoint i64 %40, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_in_mainB33_cons_buff_5, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %42 = add nuw nsw i64 %40, 8
  %43 = icmp ult i64 %41, 2046
  br i1 %43, label %39, label %44

44:                                               ; preds = %39
  tail call void @llvm.aie2.release(i32 50, i32 5)
  %45 = add nuw nsw i64 %2, 6
  %.not = icmp eq i64 %45, 9223372036854775806
  br i1 %.not, label %46, label %1

46:                                               ; preds = %44
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  %47 = load bfloat, ptr @in0_11_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ 0, %46 ], [ %51, %48 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %50 = or disjoint i64 %49, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_11_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_out_mainB33_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB33_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB33_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_11_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_11_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_0, ptr nonnull @of_in_mainB33_cons_buff_1, ptr nonnull @of_in_mainB33_cons_buff_2, ptr nonnull @of_in_mainB33_cons_buff_3, ptr nonnull @of_in_mainB33_cons_buff_4, ptr nonnull @of_out_mainB33_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %51 = add nuw nsw i64 %49, 8
  %52 = icmp ult i64 %50, 2046
  br i1 %52, label %48, label %53

53:                                               ; preds = %48
  tail call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_1_5() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %44
  %2 = phi i64 [ 0, %0 ], [ %45, %44 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  %3 = load bfloat, ptr @in0_5_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ 0, %1 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 2046
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  %10 = load bfloat, ptr @in0_5_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %14, %11 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %13 = or disjoint i64 %12, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %14 = add nuw nsw i64 %12, 8
  %15 = icmp ult i64 %13, 2046
  br i1 %15, label %11, label %16

16:                                               ; preds = %11
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  %17 = load bfloat, ptr @in0_5_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %21, %18 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %20 = or disjoint i64 %19, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add nuw nsw i64 %19, 8
  %22 = icmp ult i64 %20, 2046
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  %24 = load bfloat, ptr @in0_5_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %28, %25 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %27 = or disjoint i64 %26, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %28 = add nuw nsw i64 %26, 8
  %29 = icmp ult i64 %27, 2046
  br i1 %29, label %25, label %30

30:                                               ; preds = %25
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  %31 = load bfloat, ptr @in0_5_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %35, %32 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %34 = or disjoint i64 %33, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %35 = add nuw nsw i64 %33, 8
  %36 = icmp ult i64 %34, 2046
  br i1 %36, label %32, label %37

37:                                               ; preds = %32
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  %38 = load bfloat, ptr @in0_5_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %42, %39 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %41 = or disjoint i64 %40, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_in_mainA13_cons_buff_5, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %42 = add nuw nsw i64 %40, 8
  %43 = icmp ult i64 %41, 2046
  br i1 %43, label %39, label %44

44:                                               ; preds = %39
  tail call void @llvm.aie2.release(i32 50, i32 5)
  %45 = add nuw nsw i64 %2, 6
  %.not = icmp eq i64 %45, 9223372036854775806
  br i1 %.not, label %46, label %1

46:                                               ; preds = %44
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  %47 = load bfloat, ptr @in0_5_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ 0, %46 ], [ %51, %48 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %50 = or disjoint i64 %49, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_5_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_out_mainA13_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA13_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA13_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_5_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_5_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_0, ptr nonnull @of_in_mainA13_cons_buff_1, ptr nonnull @of_in_mainA13_cons_buff_2, ptr nonnull @of_in_mainA13_cons_buff_3, ptr nonnull @of_in_mainA13_cons_buff_4, ptr nonnull @of_out_mainA13_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %51 = add nuw nsw i64 %49, 8
  %52 = icmp ult i64 %50, 2046
  br i1 %52, label %48, label %53

53:                                               ; preds = %48
  tail call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_3_4() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %44
  %2 = phi i64 [ 0, %0 ], [ %45, %44 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  %3 = load bfloat, ptr @in0_10_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ 0, %1 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 2046
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  %10 = load bfloat, ptr @in0_10_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %14, %11 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %13 = or disjoint i64 %12, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %14 = add nuw nsw i64 %12, 8
  %15 = icmp ult i64 %13, 2046
  br i1 %15, label %11, label %16

16:                                               ; preds = %11
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  %17 = load bfloat, ptr @in0_10_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %21, %18 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %20 = or disjoint i64 %19, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add nuw nsw i64 %19, 8
  %22 = icmp ult i64 %20, 2046
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  %24 = load bfloat, ptr @in0_10_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %28, %25 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %27 = or disjoint i64 %26, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %28 = add nuw nsw i64 %26, 8
  %29 = icmp ult i64 %27, 2046
  br i1 %29, label %25, label %30

30:                                               ; preds = %25
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  %31 = load bfloat, ptr @in0_10_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %35, %32 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %34 = or disjoint i64 %33, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %35 = add nuw nsw i64 %33, 8
  %36 = icmp ult i64 %34, 2046
  br i1 %36, label %32, label %37

37:                                               ; preds = %32
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  %38 = load bfloat, ptr @in0_10_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %42, %39 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %41 = or disjoint i64 %40, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_in_mainB32_cons_buff_5, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %42 = add nuw nsw i64 %40, 8
  %43 = icmp ult i64 %41, 2046
  br i1 %43, label %39, label %44

44:                                               ; preds = %39
  tail call void @llvm.aie2.release(i32 50, i32 5)
  %45 = add nuw nsw i64 %2, 6
  %.not = icmp eq i64 %45, 9223372036854775806
  br i1 %.not, label %46, label %1

46:                                               ; preds = %44
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  %47 = load bfloat, ptr @in0_10_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ 0, %46 ], [ %51, %48 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %50 = or disjoint i64 %49, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_10_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_out_mainB32_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB32_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB32_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_10_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_10_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_0, ptr nonnull @of_in_mainB32_cons_buff_1, ptr nonnull @of_in_mainB32_cons_buff_2, ptr nonnull @of_in_mainB32_cons_buff_3, ptr nonnull @of_in_mainB32_cons_buff_4, ptr nonnull @of_out_mainB32_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %51 = add nuw nsw i64 %49, 8
  %52 = icmp ult i64 %50, 2046
  br i1 %52, label %48, label %53

53:                                               ; preds = %48
  tail call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_1_4() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %44
  %2 = phi i64 [ 0, %0 ], [ %45, %44 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  %3 = load bfloat, ptr @in0_4_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ 0, %1 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 2046
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  %10 = load bfloat, ptr @in0_4_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %14, %11 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %13 = or disjoint i64 %12, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %14 = add nuw nsw i64 %12, 8
  %15 = icmp ult i64 %13, 2046
  br i1 %15, label %11, label %16

16:                                               ; preds = %11
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  %17 = load bfloat, ptr @in0_4_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %21, %18 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %20 = or disjoint i64 %19, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add nuw nsw i64 %19, 8
  %22 = icmp ult i64 %20, 2046
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  %24 = load bfloat, ptr @in0_4_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %28, %25 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %27 = or disjoint i64 %26, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %28 = add nuw nsw i64 %26, 8
  %29 = icmp ult i64 %27, 2046
  br i1 %29, label %25, label %30

30:                                               ; preds = %25
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  %31 = load bfloat, ptr @in0_4_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %35, %32 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %34 = or disjoint i64 %33, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %35 = add nuw nsw i64 %33, 8
  %36 = icmp ult i64 %34, 2046
  br i1 %36, label %32, label %37

37:                                               ; preds = %32
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  %38 = load bfloat, ptr @in0_4_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %42, %39 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %41 = or disjoint i64 %40, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_in_mainA12_cons_buff_5, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %42 = add nuw nsw i64 %40, 8
  %43 = icmp ult i64 %41, 2046
  br i1 %43, label %39, label %44

44:                                               ; preds = %39
  tail call void @llvm.aie2.release(i32 50, i32 5)
  %45 = add nuw nsw i64 %2, 6
  %.not = icmp eq i64 %45, 9223372036854775806
  br i1 %.not, label %46, label %1

46:                                               ; preds = %44
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  %47 = load bfloat, ptr @in0_4_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ 0, %46 ], [ %51, %48 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %50 = or disjoint i64 %49, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_4_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_out_mainA12_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA12_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA12_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_4_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_4_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_0, ptr nonnull @of_in_mainA12_cons_buff_1, ptr nonnull @of_in_mainA12_cons_buff_2, ptr nonnull @of_in_mainA12_cons_buff_3, ptr nonnull @of_in_mainA12_cons_buff_4, ptr nonnull @of_out_mainA12_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %51 = add nuw nsw i64 %49, 8
  %52 = icmp ult i64 %50, 2046
  br i1 %52, label %48, label %53

53:                                               ; preds = %48
  tail call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_3_3() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %44
  %2 = phi i64 [ 0, %0 ], [ %45, %44 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  %3 = load bfloat, ptr @in0_9_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ 0, %1 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 2046
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  %10 = load bfloat, ptr @in0_9_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %14, %11 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %13 = or disjoint i64 %12, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %14 = add nuw nsw i64 %12, 8
  %15 = icmp ult i64 %13, 2046
  br i1 %15, label %11, label %16

16:                                               ; preds = %11
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  %17 = load bfloat, ptr @in0_9_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %21, %18 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %20 = or disjoint i64 %19, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add nuw nsw i64 %19, 8
  %22 = icmp ult i64 %20, 2046
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  %24 = load bfloat, ptr @in0_9_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %28, %25 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %27 = or disjoint i64 %26, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %28 = add nuw nsw i64 %26, 8
  %29 = icmp ult i64 %27, 2046
  br i1 %29, label %25, label %30

30:                                               ; preds = %25
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  %31 = load bfloat, ptr @in0_9_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %35, %32 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %34 = or disjoint i64 %33, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %35 = add nuw nsw i64 %33, 8
  %36 = icmp ult i64 %34, 2046
  br i1 %36, label %32, label %37

37:                                               ; preds = %32
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  %38 = load bfloat, ptr @in0_9_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %42, %39 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %41 = or disjoint i64 %40, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_in_mainB31_cons_buff_5, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %42 = add nuw nsw i64 %40, 8
  %43 = icmp ult i64 %41, 2046
  br i1 %43, label %39, label %44

44:                                               ; preds = %39
  tail call void @llvm.aie2.release(i32 50, i32 5)
  %45 = add nuw nsw i64 %2, 6
  %.not = icmp eq i64 %45, 9223372036854775806
  br i1 %.not, label %46, label %1

46:                                               ; preds = %44
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  %47 = load bfloat, ptr @in0_9_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ 0, %46 ], [ %51, %48 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %50 = or disjoint i64 %49, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_9_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_out_mainB31_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB31_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB31_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_9_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_9_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_0, ptr nonnull @of_in_mainB31_cons_buff_1, ptr nonnull @of_in_mainB31_cons_buff_2, ptr nonnull @of_in_mainB31_cons_buff_3, ptr nonnull @of_in_mainB31_cons_buff_4, ptr nonnull @of_out_mainB31_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %51 = add nuw nsw i64 %49, 8
  %52 = icmp ult i64 %50, 2046
  br i1 %52, label %48, label %53

53:                                               ; preds = %48
  tail call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_1_3() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %44
  %2 = phi i64 [ 0, %0 ], [ %45, %44 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  %3 = load bfloat, ptr @in0_3_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ 0, %1 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 2046
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  %10 = load bfloat, ptr @in0_3_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %14, %11 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %13 = or disjoint i64 %12, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %14 = add nuw nsw i64 %12, 8
  %15 = icmp ult i64 %13, 2046
  br i1 %15, label %11, label %16

16:                                               ; preds = %11
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  %17 = load bfloat, ptr @in0_3_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %21, %18 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %20 = or disjoint i64 %19, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add nuw nsw i64 %19, 8
  %22 = icmp ult i64 %20, 2046
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  %24 = load bfloat, ptr @in0_3_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %28, %25 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %27 = or disjoint i64 %26, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %28 = add nuw nsw i64 %26, 8
  %29 = icmp ult i64 %27, 2046
  br i1 %29, label %25, label %30

30:                                               ; preds = %25
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  %31 = load bfloat, ptr @in0_3_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %35, %32 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %34 = or disjoint i64 %33, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %35 = add nuw nsw i64 %33, 8
  %36 = icmp ult i64 %34, 2046
  br i1 %36, label %32, label %37

37:                                               ; preds = %32
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  %38 = load bfloat, ptr @in0_3_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %42, %39 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %41 = or disjoint i64 %40, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_in_mainA11_cons_buff_5, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %42 = add nuw nsw i64 %40, 8
  %43 = icmp ult i64 %41, 2046
  br i1 %43, label %39, label %44

44:                                               ; preds = %39
  tail call void @llvm.aie2.release(i32 50, i32 5)
  %45 = add nuw nsw i64 %2, 6
  %.not = icmp eq i64 %45, 9223372036854775806
  br i1 %.not, label %46, label %1

46:                                               ; preds = %44
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  %47 = load bfloat, ptr @in0_3_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ 0, %46 ], [ %51, %48 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %50 = or disjoint i64 %49, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_3_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_out_mainA11_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA11_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA11_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_3_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_3_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_0, ptr nonnull @of_in_mainA11_cons_buff_1, ptr nonnull @of_in_mainA11_cons_buff_2, ptr nonnull @of_in_mainA11_cons_buff_3, ptr nonnull @of_in_mainA11_cons_buff_4, ptr nonnull @of_out_mainA11_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %51 = add nuw nsw i64 %49, 8
  %52 = icmp ult i64 %50, 2046
  br i1 %52, label %48, label %53

53:                                               ; preds = %48
  tail call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_2_5() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %44
  %2 = phi i64 [ 0, %0 ], [ %45, %44 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  %3 = load bfloat, ptr @in0_8_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ 0, %1 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 2046
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  %10 = load bfloat, ptr @in0_8_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %14, %11 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %13 = or disjoint i64 %12, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %14 = add nuw nsw i64 %12, 8
  %15 = icmp ult i64 %13, 2046
  br i1 %15, label %11, label %16

16:                                               ; preds = %11
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  %17 = load bfloat, ptr @in0_8_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %21, %18 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %20 = or disjoint i64 %19, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add nuw nsw i64 %19, 8
  %22 = icmp ult i64 %20, 2046
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  %24 = load bfloat, ptr @in0_8_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %28, %25 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %27 = or disjoint i64 %26, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %28 = add nuw nsw i64 %26, 8
  %29 = icmp ult i64 %27, 2046
  br i1 %29, label %25, label %30

30:                                               ; preds = %25
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  %31 = load bfloat, ptr @in0_8_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %35, %32 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %34 = or disjoint i64 %33, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %35 = add nuw nsw i64 %33, 8
  %36 = icmp ult i64 %34, 2046
  br i1 %36, label %32, label %37

37:                                               ; preds = %32
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  %38 = load bfloat, ptr @in0_8_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %42, %39 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %41 = or disjoint i64 %40, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_in_mainB23_cons_buff_5, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %42 = add nuw nsw i64 %40, 8
  %43 = icmp ult i64 %41, 2046
  br i1 %43, label %39, label %44

44:                                               ; preds = %39
  tail call void @llvm.aie2.release(i32 50, i32 5)
  %45 = add nuw nsw i64 %2, 6
  %.not = icmp eq i64 %45, 9223372036854775806
  br i1 %.not, label %46, label %1

46:                                               ; preds = %44
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  %47 = load bfloat, ptr @in0_8_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ 0, %46 ], [ %51, %48 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %50 = or disjoint i64 %49, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_8_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_out_mainB23_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB23_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB23_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_8_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_8_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_0, ptr nonnull @of_in_mainB23_cons_buff_1, ptr nonnull @of_in_mainB23_cons_buff_2, ptr nonnull @of_in_mainB23_cons_buff_3, ptr nonnull @of_in_mainB23_cons_buff_4, ptr nonnull @of_out_mainB23_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %51 = add nuw nsw i64 %49, 8
  %52 = icmp ult i64 %50, 2046
  br i1 %52, label %48, label %53

53:                                               ; preds = %48
  tail call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_0_5() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %44
  %2 = phi i64 [ 0, %0 ], [ %45, %44 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  %3 = load bfloat, ptr @in0_2_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ 0, %1 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 2046
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  %10 = load bfloat, ptr @in0_2_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %14, %11 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %13 = or disjoint i64 %12, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %14 = add nuw nsw i64 %12, 8
  %15 = icmp ult i64 %13, 2046
  br i1 %15, label %11, label %16

16:                                               ; preds = %11
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  %17 = load bfloat, ptr @in0_2_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %21, %18 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %20 = or disjoint i64 %19, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add nuw nsw i64 %19, 8
  %22 = icmp ult i64 %20, 2046
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  %24 = load bfloat, ptr @in0_2_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %28, %25 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %27 = or disjoint i64 %26, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %28 = add nuw nsw i64 %26, 8
  %29 = icmp ult i64 %27, 2046
  br i1 %29, label %25, label %30

30:                                               ; preds = %25
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  %31 = load bfloat, ptr @in0_2_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %35, %32 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %34 = or disjoint i64 %33, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %35 = add nuw nsw i64 %33, 8
  %36 = icmp ult i64 %34, 2046
  br i1 %36, label %32, label %37

37:                                               ; preds = %32
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  %38 = load bfloat, ptr @in0_2_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %42, %39 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %41 = or disjoint i64 %40, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_in_mainA03_cons_buff_5, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %42 = add nuw nsw i64 %40, 8
  %43 = icmp ult i64 %41, 2046
  br i1 %43, label %39, label %44

44:                                               ; preds = %39
  tail call void @llvm.aie2.release(i32 50, i32 5)
  %45 = add nuw nsw i64 %2, 6
  %.not = icmp eq i64 %45, 9223372036854775806
  br i1 %.not, label %46, label %1

46:                                               ; preds = %44
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  %47 = load bfloat, ptr @in0_2_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ 0, %46 ], [ %51, %48 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %50 = or disjoint i64 %49, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_2_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_out_mainA03_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA03_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA03_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_2_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_2_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_0, ptr nonnull @of_in_mainA03_cons_buff_1, ptr nonnull @of_in_mainA03_cons_buff_2, ptr nonnull @of_in_mainA03_cons_buff_3, ptr nonnull @of_in_mainA03_cons_buff_4, ptr nonnull @of_out_mainA03_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %51 = add nuw nsw i64 %49, 8
  %52 = icmp ult i64 %50, 2046
  br i1 %52, label %48, label %53

53:                                               ; preds = %48
  tail call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_2_4() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %44
  %2 = phi i64 [ 0, %0 ], [ %45, %44 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  %3 = load bfloat, ptr @in0_7_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ 0, %1 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 2046
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  %10 = load bfloat, ptr @in0_7_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %14, %11 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %13 = or disjoint i64 %12, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %14 = add nuw nsw i64 %12, 8
  %15 = icmp ult i64 %13, 2046
  br i1 %15, label %11, label %16

16:                                               ; preds = %11
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  %17 = load bfloat, ptr @in0_7_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %21, %18 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %20 = or disjoint i64 %19, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add nuw nsw i64 %19, 8
  %22 = icmp ult i64 %20, 2046
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  %24 = load bfloat, ptr @in0_7_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %28, %25 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %27 = or disjoint i64 %26, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %28 = add nuw nsw i64 %26, 8
  %29 = icmp ult i64 %27, 2046
  br i1 %29, label %25, label %30

30:                                               ; preds = %25
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  %31 = load bfloat, ptr @in0_7_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %35, %32 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %34 = or disjoint i64 %33, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %35 = add nuw nsw i64 %33, 8
  %36 = icmp ult i64 %34, 2046
  br i1 %36, label %32, label %37

37:                                               ; preds = %32
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  %38 = load bfloat, ptr @in0_7_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %42, %39 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %41 = or disjoint i64 %40, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_in_mainB22_cons_buff_5, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %42 = add nuw nsw i64 %40, 8
  %43 = icmp ult i64 %41, 2046
  br i1 %43, label %39, label %44

44:                                               ; preds = %39
  tail call void @llvm.aie2.release(i32 50, i32 5)
  %45 = add nuw nsw i64 %2, 6
  %.not = icmp eq i64 %45, 9223372036854775806
  br i1 %.not, label %46, label %1

46:                                               ; preds = %44
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  %47 = load bfloat, ptr @in0_7_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ 0, %46 ], [ %51, %48 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %50 = or disjoint i64 %49, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_7_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_out_mainB22_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB22_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB22_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_7_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_7_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_0, ptr nonnull @of_in_mainB22_cons_buff_1, ptr nonnull @of_in_mainB22_cons_buff_2, ptr nonnull @of_in_mainB22_cons_buff_3, ptr nonnull @of_in_mainB22_cons_buff_4, ptr nonnull @of_out_mainB22_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %51 = add nuw nsw i64 %49, 8
  %52 = icmp ult i64 %50, 2046
  br i1 %52, label %48, label %53

53:                                               ; preds = %48
  tail call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_0_4() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %44
  %2 = phi i64 [ 0, %0 ], [ %45, %44 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  %3 = load bfloat, ptr @in0_1_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ 0, %1 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 2046
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  %10 = load bfloat, ptr @in0_1_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %14, %11 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %13 = or disjoint i64 %12, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %14 = add nuw nsw i64 %12, 8
  %15 = icmp ult i64 %13, 2046
  br i1 %15, label %11, label %16

16:                                               ; preds = %11
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  %17 = load bfloat, ptr @in0_1_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %21, %18 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %20 = or disjoint i64 %19, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add nuw nsw i64 %19, 8
  %22 = icmp ult i64 %20, 2046
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  %24 = load bfloat, ptr @in0_1_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %28, %25 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %27 = or disjoint i64 %26, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %28 = add nuw nsw i64 %26, 8
  %29 = icmp ult i64 %27, 2046
  br i1 %29, label %25, label %30

30:                                               ; preds = %25
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  %31 = load bfloat, ptr @in0_1_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %35, %32 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %34 = or disjoint i64 %33, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %35 = add nuw nsw i64 %33, 8
  %36 = icmp ult i64 %34, 2046
  br i1 %36, label %32, label %37

37:                                               ; preds = %32
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  %38 = load bfloat, ptr @in0_1_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %42, %39 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %41 = or disjoint i64 %40, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_in_mainA02_cons_buff_5, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %42 = add nuw nsw i64 %40, 8
  %43 = icmp ult i64 %41, 2046
  br i1 %43, label %39, label %44

44:                                               ; preds = %39
  tail call void @llvm.aie2.release(i32 50, i32 5)
  %45 = add nuw nsw i64 %2, 6
  %.not = icmp eq i64 %45, 9223372036854775806
  br i1 %.not, label %46, label %1

46:                                               ; preds = %44
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  %47 = load bfloat, ptr @in0_1_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ 0, %46 ], [ %51, %48 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %50 = or disjoint i64 %49, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_1_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_out_mainA02_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA02_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA02_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_1_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_1_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_0, ptr nonnull @of_in_mainA02_cons_buff_1, ptr nonnull @of_in_mainA02_cons_buff_2, ptr nonnull @of_in_mainA02_cons_buff_3, ptr nonnull @of_in_mainA02_cons_buff_4, ptr nonnull @of_out_mainA02_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %51 = add nuw nsw i64 %49, 8
  %52 = icmp ult i64 %50, 2046
  br i1 %52, label %48, label %53

53:                                               ; preds = %48
  tail call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_2_3() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %44
  %2 = phi i64 [ 0, %0 ], [ %45, %44 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  %3 = load bfloat, ptr @in0_6_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ 0, %1 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 2046
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  %10 = load bfloat, ptr @in0_6_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %14, %11 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %13 = or disjoint i64 %12, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %14 = add nuw nsw i64 %12, 8
  %15 = icmp ult i64 %13, 2046
  br i1 %15, label %11, label %16

16:                                               ; preds = %11
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  %17 = load bfloat, ptr @in0_6_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %21, %18 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %20 = or disjoint i64 %19, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add nuw nsw i64 %19, 8
  %22 = icmp ult i64 %20, 2046
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  %24 = load bfloat, ptr @in0_6_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %28, %25 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %27 = or disjoint i64 %26, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %28 = add nuw nsw i64 %26, 8
  %29 = icmp ult i64 %27, 2046
  br i1 %29, label %25, label %30

30:                                               ; preds = %25
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  %31 = load bfloat, ptr @in0_6_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %35, %32 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %34 = or disjoint i64 %33, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %35 = add nuw nsw i64 %33, 8
  %36 = icmp ult i64 %34, 2046
  br i1 %36, label %32, label %37

37:                                               ; preds = %32
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  %38 = load bfloat, ptr @in0_6_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %42, %39 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %41 = or disjoint i64 %40, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_in_mainB21_cons_buff_5, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %42 = add nuw nsw i64 %40, 8
  %43 = icmp ult i64 %41, 2046
  br i1 %43, label %39, label %44

44:                                               ; preds = %39
  tail call void @llvm.aie2.release(i32 50, i32 5)
  %45 = add nuw nsw i64 %2, 6
  %.not = icmp eq i64 %45, 9223372036854775806
  br i1 %.not, label %46, label %1

46:                                               ; preds = %44
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  %47 = load bfloat, ptr @in0_6_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ 0, %46 ], [ %51, %48 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %50 = or disjoint i64 %49, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_6_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_out_mainB21_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainB21_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainB21_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_6_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_6_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_0, ptr nonnull @of_in_mainB21_cons_buff_1, ptr nonnull @of_in_mainB21_cons_buff_2, ptr nonnull @of_in_mainB21_cons_buff_3, ptr nonnull @of_in_mainB21_cons_buff_4, ptr nonnull @of_out_mainB21_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %51 = add nuw nsw i64 %49, 8
  %52 = icmp ult i64 %50, 2046
  br i1 %52, label %48, label %53

53:                                               ; preds = %48
  tail call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_0_3() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %44
  %2 = phi i64 [ 0, %0 ], [ %45, %44 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  %3 = load bfloat, ptr @in0_0_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ 0, %1 ], [ %7, %4 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %6 = or disjoint i64 %5, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %3, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %7 = add nuw nsw i64 %5, 8
  %8 = icmp ult i64 %6, 2046
  br i1 %8, label %4, label %9

9:                                                ; preds = %4
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  %10 = load bfloat, ptr @in0_0_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %14, %11 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %13 = or disjoint i64 %12, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %10, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %14 = add nuw nsw i64 %12, 8
  %15 = icmp ult i64 %13, 2046
  br i1 %15, label %11, label %16

16:                                               ; preds = %11
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  %17 = load bfloat, ptr @in0_0_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %21, %18 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %20 = or disjoint i64 %19, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %17, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add nuw nsw i64 %19, 8
  %22 = icmp ult i64 %20, 2046
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  %24 = load bfloat, ptr @in0_0_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %28, %25 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %27 = or disjoint i64 %26, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %24, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %28 = add nuw nsw i64 %26, 8
  %29 = icmp ult i64 %27, 2046
  br i1 %29, label %25, label %30

30:                                               ; preds = %25
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  %31 = load bfloat, ptr @in0_0_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %35, %32 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %34 = or disjoint i64 %33, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %31, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %35 = add nuw nsw i64 %33, 8
  %36 = icmp ult i64 %34, 2046
  br i1 %36, label %32, label %37

37:                                               ; preds = %32
  tail call void @llvm.aie2.release(i32 50, i32 5)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  %38 = load bfloat, ptr @in0_0_cons_buff_1, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %42, %39 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %41 = or disjoint i64 %40, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %38, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_in_mainA01_cons_buff_5, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %42 = add nuw nsw i64 %40, 8
  %43 = icmp ult i64 %41, 2046
  br i1 %43, label %39, label %44

44:                                               ; preds = %39
  tail call void @llvm.aie2.release(i32 50, i32 5)
  %45 = add nuw nsw i64 %2, 6
  %.not = icmp eq i64 %45, 9223372036854775806
  br i1 %.not, label %46, label %1

46:                                               ; preds = %44
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  %47 = load bfloat, ptr @in0_0_cons_buff_0, align 32
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -5)
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ 0, %46 ], [ %51, %48 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %50 = or disjoint i64 %49, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_1, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_0_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_out_mainA01_buff_0, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_out_mainA01_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_in_mainA01_cons_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_0_cons_buff_0, i64 32) ]
  tail call void @main_kernel(bfloat %47, ptr nonnull @in0_0_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_0, ptr nonnull @of_in_mainA01_cons_buff_1, ptr nonnull @of_in_mainA01_cons_buff_2, ptr nonnull @of_in_mainA01_cons_buff_3, ptr nonnull @of_in_mainA01_cons_buff_4, ptr nonnull @of_out_mainA01_buff_1, i32 768)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %51 = add nuw nsw i64 %49, 8
  %52 = icmp ult i64 %50, 2046
  br i1 %52, label %48, label %53

53:                                               ; preds = %48
  tail call void @llvm.aie2.release(i32 50, i32 5)
  ret void
}

define void @core_1_2() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %7
  %1 = phi i64 [ 0, %0 ], [ %8, %7 ]
  br label %2

2:                                                ; preds = %2, %.preheader
  %3 = phi i64 [ 0, %.preheader ], [ %5, %2 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out1_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @out1_cons_buff_0, ptr nonnull @out2_cons_buff_0, ptr nonnull @out_buff_0, i32 32)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out1_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @out1_cons_buff_1, ptr nonnull @out2_cons_buff_1, ptr nonnull @out_buff_1, i32 32)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out1_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @out1_cons_buff_0, ptr nonnull @out2_cons_buff_0, ptr nonnull @out_buff_0, i32 32)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out1_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @out1_cons_buff_1, ptr nonnull @out2_cons_buff_1, ptr nonnull @out_buff_1, i32 32)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out1_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @out1_cons_buff_0, ptr nonnull @out2_cons_buff_0, ptr nonnull @out_buff_0, i32 32)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out1_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @out1_cons_buff_1, ptr nonnull @out2_cons_buff_1, ptr nonnull @out_buff_1, i32 32)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %4 = or disjoint i64 %3, 6
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out2_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out1_cons_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @out1_cons_buff_0, ptr nonnull @out2_cons_buff_0, ptr nonnull @out_buff_0, i32 32)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out2_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @out1_cons_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @out1_cons_buff_1, ptr nonnull @out2_cons_buff_1, ptr nonnull @out_buff_1, i32 32)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %5 = add nuw nsw i64 %3, 8
  %6 = icmp ult i64 %4, 2046
  br i1 %6, label %2, label %7

7:                                                ; preds = %2
  %8 = add nuw nsw i64 %1, 1
  %.not = icmp eq i64 %8, 9223372036854775807
  br i1 %.not, label %9, label %.preheader

9:                                                ; preds = %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nounwind }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
