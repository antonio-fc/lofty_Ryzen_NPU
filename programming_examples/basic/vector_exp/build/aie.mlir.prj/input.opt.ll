; ModuleID = '/notebooks/my_mlir-aie/programming_examples/basic/vector_exp/build/aie.mlir.prj/input.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

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

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @exp_bf16_1024(ptr, ptr) local_unnamed_addr

define void @core_0_5() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %.preheader
  %1 = phi i64 [ 0, %0 ], [ %2, %.preheader ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA3_cons_buff_0, ptr nonnull @memC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA3_cons_buff_1, ptr nonnull @memC3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA3_cons_buff_0, ptr nonnull @memC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA3_cons_buff_1, ptr nonnull @memC3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA3_cons_buff_0, ptr nonnull @memC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA3_cons_buff_1, ptr nonnull @memC3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA3_cons_buff_0, ptr nonnull @memC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA3_cons_buff_1, ptr nonnull @memC3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA3_cons_buff_0, ptr nonnull @memC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA3_cons_buff_1, ptr nonnull @memC3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA3_cons_buff_0, ptr nonnull @memC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA3_cons_buff_1, ptr nonnull @memC3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA3_cons_buff_0, ptr nonnull @memC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA3_cons_buff_1, ptr nonnull @memC3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA3_cons_buff_0, ptr nonnull @memC3_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC3_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA3_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA3_cons_buff_1, ptr nonnull @memC3_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %2 = add nuw nsw i64 %1, 1
  %3 = icmp ult i64 %1, 4294967294
  br i1 %3, label %.preheader, label %4

4:                                                ; preds = %.preheader
  ret void
}

define void @core_0_4() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %.preheader
  %1 = phi i64 [ 0, %0 ], [ %2, %.preheader ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA2_cons_buff_0, ptr nonnull @memC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA2_cons_buff_1, ptr nonnull @memC2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA2_cons_buff_0, ptr nonnull @memC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA2_cons_buff_1, ptr nonnull @memC2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA2_cons_buff_0, ptr nonnull @memC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA2_cons_buff_1, ptr nonnull @memC2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA2_cons_buff_0, ptr nonnull @memC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA2_cons_buff_1, ptr nonnull @memC2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA2_cons_buff_0, ptr nonnull @memC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA2_cons_buff_1, ptr nonnull @memC2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA2_cons_buff_0, ptr nonnull @memC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA2_cons_buff_1, ptr nonnull @memC2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA2_cons_buff_0, ptr nonnull @memC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA2_cons_buff_1, ptr nonnull @memC2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA2_cons_buff_0, ptr nonnull @memC2_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC2_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA2_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA2_cons_buff_1, ptr nonnull @memC2_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %2 = add nuw nsw i64 %1, 1
  %3 = icmp ult i64 %1, 4294967294
  br i1 %3, label %.preheader, label %4

4:                                                ; preds = %.preheader
  ret void
}

define void @core_0_3() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %.preheader
  %1 = phi i64 [ 0, %0 ], [ %2, %.preheader ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA1_cons_buff_0, ptr nonnull @memC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA1_cons_buff_1, ptr nonnull @memC1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA1_cons_buff_0, ptr nonnull @memC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA1_cons_buff_1, ptr nonnull @memC1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA1_cons_buff_0, ptr nonnull @memC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA1_cons_buff_1, ptr nonnull @memC1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA1_cons_buff_0, ptr nonnull @memC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA1_cons_buff_1, ptr nonnull @memC1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA1_cons_buff_0, ptr nonnull @memC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA1_cons_buff_1, ptr nonnull @memC1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA1_cons_buff_0, ptr nonnull @memC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA1_cons_buff_1, ptr nonnull @memC1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA1_cons_buff_0, ptr nonnull @memC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA1_cons_buff_1, ptr nonnull @memC1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA1_cons_buff_0, ptr nonnull @memC1_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA1_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA1_cons_buff_1, ptr nonnull @memC1_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %2 = add nuw nsw i64 %1, 1
  %3 = icmp ult i64 %1, 4294967294
  br i1 %3, label %.preheader, label %4

4:                                                ; preds = %.preheader
  ret void
}

define void @core_0_2() local_unnamed_addr {
  br label %.preheader

.preheader:                                       ; preds = %0, %.preheader
  %1 = phi i64 [ 0, %0 ], [ %2, %.preheader ]
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA0_cons_buff_0, ptr nonnull @memC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA0_cons_buff_1, ptr nonnull @memC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA0_cons_buff_0, ptr nonnull @memC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA0_cons_buff_1, ptr nonnull @memC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA0_cons_buff_0, ptr nonnull @memC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA0_cons_buff_1, ptr nonnull @memC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA0_cons_buff_0, ptr nonnull @memC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA0_cons_buff_1, ptr nonnull @memC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA0_cons_buff_0, ptr nonnull @memC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA0_cons_buff_1, ptr nonnull @memC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA0_cons_buff_0, ptr nonnull @memC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA0_cons_buff_1, ptr nonnull @memC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA0_cons_buff_0, ptr nonnull @memC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA0_cons_buff_1, ptr nonnull @memC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_0, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA0_cons_buff_0, ptr nonnull @memC0_buff_0)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @memC0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @memA0_cons_buff_1, i64 32) ]
  tail call void @exp_bf16_1024(ptr nonnull @memA0_cons_buff_1, ptr nonnull @memC0_buff_1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  %2 = add nuw nsw i64 %1, 1
  %3 = icmp ult i64 %1, 4294967294
  br i1 %3, label %.preheader, label %4

4:                                                ; preds = %.preheader
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nounwind }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
