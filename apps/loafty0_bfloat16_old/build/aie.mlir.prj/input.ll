; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2"

@in0_cons_buff_1 = external global [2 x bfloat]
@in0_cons_buff_0 = external global [2 x bfloat]
@in1_cons_buff_1 = external global [9216 x bfloat]
@in1_cons_buff_0 = external global [9216 x bfloat]
@in2_cons_buff_1 = external global [13824 x bfloat]
@in2_cons_buff_0 = external global [13824 x bfloat]
@in3_cons_buff_1 = external global [6 x bfloat]
@in3_cons_buff_0 = external global [6 x bfloat]
@visR_cons_buff_1 = external global [4608 x bfloat]
@visR_cons_buff_0 = external global [4608 x bfloat]
@visC_cons_buff_1 = external global [4608 x bfloat]
@visC_cons_buff_0 = external global [4608 x bfloat]
@out_buff_1 = external global [2 x bfloat]
@out_buff_0 = external global [2 x bfloat]
@out_cons = external global [2 x bfloat]
@out = external global [2 x bfloat]
@visC_cons = external global [4608 x bfloat]
@visC = external global [4608 x bfloat]
@visR_cons = external global [4608 x bfloat]
@visR = external global [4608 x bfloat]
@in3_cons = external global [6 x bfloat]
@in3 = external global [6 x bfloat]
@in2_cons = external global [13824 x bfloat]
@in2 = external global [13824 x bfloat]
@in1_cons = external global [9216 x bfloat]
@in1 = external global [9216 x bfloat]
@in0_cons = external global [2 x bfloat]
@in0 = external global [2 x bfloat]

declare void @debug_i32(i32)

declare void @llvm.aie2.put.ms(i32, i32)

declare { i32, i32 } @llvm.aie2.get.ss()

declare void @llvm.aie2.mcd.write.vec(<16 x i32>, i32)

declare <16 x i32> @llvm.aie2.scd.read.vec(i32)

declare void @llvm.aie2.acquire(i32, i32)

declare void @llvm.aie2.release(i32, i32)

declare void @vector_scale(ptr, ptr, ptr, i32)

declare void @passthrough(ptr, ptr, i32)

declare void @vector_add(ptr, ptr, ptr, i32)

declare void @vector_mult(ptr, ptr, ptr, i32)

declare void @mean(ptr, ptr, i32, i32)

declare void @sin_float_1024(ptr, ptr, i32)

declare void @cos_float_1024(ptr, ptr, i32)

declare void @vector_sub(ptr, ptr, ptr, i32)

define void @core_3_2() {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.release(i32 49, i32 1)
  %5 = add i64 %2, 2
  br label %1

6:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.release(i32 49, i32 1)
  ret void
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
