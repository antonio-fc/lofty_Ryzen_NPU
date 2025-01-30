; ModuleID = '/notebooks/my_mlir-aie/apps/app8-v2/build/aie.mlir.prj/input.ll'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p:20:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-f32:32:32-i64:32-f64:32-a:0:32-n32"
target triple = "aie2"

@in0_cons_buff_1 = external global [2 x bfloat]
@in0_cons_buff_0 = external global [2 x bfloat]
@in1_cons_buff_1 = external global [1024 x bfloat]
@in1_cons_buff_0 = external global [1024 x bfloat]
@u_cons_buff_1 = external global [1024 x bfloat]
@u_cons_buff_0 = external global [1024 x bfloat]
@v_cons_buff_1 = external global [1024 x bfloat]
@v_cons_buff_0 = external global [1024 x bfloat]
@w_cons_buff_1 = external global [1024 x bfloat]
@w_cons_buff_0 = external global [1024 x bfloat]
@l_cons_buff_1 = external global [2 x bfloat]
@l_cons_buff_0 = external global [2 x bfloat]
@m_cons_buff_1 = external global [2 x bfloat]
@m_cons_buff_0 = external global [2 x bfloat]
@n_cons_buff_1 = external global [2 x bfloat]
@n_cons_buff_0 = external global [2 x bfloat]
@addA0_buff_1 = external global [1024 x bfloat]
@addA0_buff_0 = external global [1024 x bfloat]
@addA1_buff_1 = external global [1024 x bfloat]
@addA1_buff_0 = external global [1024 x bfloat]
@addA1_cons_buff_1 = external global [1024 x bfloat]
@addA1_cons_buff_0 = external global [1024 x bfloat]
@addB0_buff_1 = external global [1024 x bfloat]
@addB0_buff_0 = external global [1024 x bfloat]
@addB1_buff_1 = external global [1024 x bfloat]
@addB1_buff_0 = external global [1024 x bfloat]
@of_scaleC_buff_1 = external global [1024 x bfloat]
@of_scaleC_buff_0 = external global [1024 x bfloat]
@of_cosD_buff_1 = external global [1024 x bfloat]
@of_cosD_buff_0 = external global [1024 x bfloat]
@of_multE_buff_1 = external global [1024 x bfloat]
@of_multE_buff_0 = external global [1024 x bfloat]
@of_meanF_buff_1 = external global [1024 x bfloat]
@of_meanF_buff_0 = external global [1024 x bfloat]
@of_meanG_buff_9 = external global [2 x bfloat]
@of_meanG_buff_8 = external global [2 x bfloat]
@of_meanG_buff_7 = external global [2 x bfloat]
@of_meanG_buff_6 = external global [2 x bfloat]
@of_meanG_buff_5 = external global [2 x bfloat]
@of_meanG_buff_4 = external global [2 x bfloat]
@of_meanG_buff_3 = external global [2 x bfloat]
@of_meanG_buff_2 = external global [2 x bfloat]
@of_meanG_buff_1 = external global [2 x bfloat]
@of_meanG_buff_0 = external global [2 x bfloat]
@out_buff_1 = external global [2 x bfloat]
@out_buff_0 = external global [2 x bfloat]

; Function Attrs: nounwind
declare void @llvm.aie2.acquire(i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.aie2.release(i32, i32) #0

declare void @vector_scalar_mul_aie_scalar(ptr, ptr, ptr, i16) local_unnamed_addr

declare void @passthrough(ptr, ptr, i16) local_unnamed_addr

declare void @vector_add_aie_scalar(ptr, ptr, ptr, i16) local_unnamed_addr

declare void @vector_mult_aie_scalar(ptr, ptr, ptr, i16) local_unnamed_addr

declare void @mean(ptr, ptr, i16) local_unnamed_addr

; Function Attrs: nounwind
define void @core_3_4() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %273, %1 ]
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %3 = load bfloat, ptr @of_meanG_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %3, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %4 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %5 = load bfloat, ptr @of_meanG_buff_1, align 32
  %6 = fadd bfloat %4, %5
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %6, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %7 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %8 = load bfloat, ptr @of_meanG_buff_2, align 32
  %9 = fadd bfloat %7, %8
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %9, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %10 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %11 = load bfloat, ptr @of_meanG_buff_3, align 32
  %12 = fadd bfloat %10, %11
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %12, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %13 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %14 = load bfloat, ptr @of_meanG_buff_4, align 32
  %15 = fadd bfloat %13, %14
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %15, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %16 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %17 = load bfloat, ptr @of_meanG_buff_5, align 32
  %18 = fadd bfloat %16, %17
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %18, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %19 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %20 = load bfloat, ptr @of_meanG_buff_6, align 32
  %21 = fadd bfloat %19, %20
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %21, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %22 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %23 = load bfloat, ptr @of_meanG_buff_7, align 32
  %24 = fadd bfloat %22, %23
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %24, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %25 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %26 = load bfloat, ptr @of_meanG_buff_8, align 32
  %27 = fadd bfloat %25, %26
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %27, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %28 = load bfloat, ptr @out_buff_0, align 32
  %29 = fdiv bfloat %28, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %29, ptr getelementptr inbounds ([2 x bfloat], ptr @out_buff_0, i20 0, i20 1), align 2
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  %30 = load bfloat, ptr @of_meanG_buff_9, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %30, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %31 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %32 = load bfloat, ptr @of_meanG_buff_0, align 32
  %33 = fadd bfloat %31, %32
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %33, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %34 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %35 = load bfloat, ptr @of_meanG_buff_1, align 32
  %36 = fadd bfloat %34, %35
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %36, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %37 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %38 = load bfloat, ptr @of_meanG_buff_2, align 32
  %39 = fadd bfloat %37, %38
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %39, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %40 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %41 = load bfloat, ptr @of_meanG_buff_3, align 32
  %42 = fadd bfloat %40, %41
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %42, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %43 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %44 = load bfloat, ptr @of_meanG_buff_4, align 32
  %45 = fadd bfloat %43, %44
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %45, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %46 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %47 = load bfloat, ptr @of_meanG_buff_5, align 32
  %48 = fadd bfloat %46, %47
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %48, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %49 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %50 = load bfloat, ptr @of_meanG_buff_6, align 32
  %51 = fadd bfloat %49, %50
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %51, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %52 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %53 = load bfloat, ptr @of_meanG_buff_7, align 32
  %54 = fadd bfloat %52, %53
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %54, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %55 = load bfloat, ptr @out_buff_1, align 32
  %56 = fdiv bfloat %55, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %56, ptr getelementptr inbounds ([2 x bfloat], ptr @out_buff_1, i20 0, i20 1), align 2
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %57 = load bfloat, ptr @of_meanG_buff_8, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %57, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %58 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  %59 = load bfloat, ptr @of_meanG_buff_9, align 32
  %60 = fadd bfloat %58, %59
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %60, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %61 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %62 = load bfloat, ptr @of_meanG_buff_0, align 32
  %63 = fadd bfloat %61, %62
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %63, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %64 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %65 = load bfloat, ptr @of_meanG_buff_1, align 32
  %66 = fadd bfloat %64, %65
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %66, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %67 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %68 = load bfloat, ptr @of_meanG_buff_2, align 32
  %69 = fadd bfloat %67, %68
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %69, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %70 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %71 = load bfloat, ptr @of_meanG_buff_3, align 32
  %72 = fadd bfloat %70, %71
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %72, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %73 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %74 = load bfloat, ptr @of_meanG_buff_4, align 32
  %75 = fadd bfloat %73, %74
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %75, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %76 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %77 = load bfloat, ptr @of_meanG_buff_5, align 32
  %78 = fadd bfloat %76, %77
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %78, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %79 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %80 = load bfloat, ptr @of_meanG_buff_6, align 32
  %81 = fadd bfloat %79, %80
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %81, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %82 = load bfloat, ptr @out_buff_0, align 32
  %83 = fdiv bfloat %82, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %83, ptr getelementptr inbounds ([2 x bfloat], ptr @out_buff_0, i20 0, i20 1), align 2
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %84 = load bfloat, ptr @of_meanG_buff_7, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %84, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %85 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %86 = load bfloat, ptr @of_meanG_buff_8, align 32
  %87 = fadd bfloat %85, %86
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %87, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %88 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  %89 = load bfloat, ptr @of_meanG_buff_9, align 32
  %90 = fadd bfloat %88, %89
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %90, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %91 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %92 = load bfloat, ptr @of_meanG_buff_0, align 32
  %93 = fadd bfloat %91, %92
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %93, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %94 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %95 = load bfloat, ptr @of_meanG_buff_1, align 32
  %96 = fadd bfloat %94, %95
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %96, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %97 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %98 = load bfloat, ptr @of_meanG_buff_2, align 32
  %99 = fadd bfloat %97, %98
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %99, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %100 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %101 = load bfloat, ptr @of_meanG_buff_3, align 32
  %102 = fadd bfloat %100, %101
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %102, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %103 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %104 = load bfloat, ptr @of_meanG_buff_4, align 32
  %105 = fadd bfloat %103, %104
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %105, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %106 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %107 = load bfloat, ptr @of_meanG_buff_5, align 32
  %108 = fadd bfloat %106, %107
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %108, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %109 = load bfloat, ptr @out_buff_1, align 32
  %110 = fdiv bfloat %109, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %110, ptr getelementptr inbounds ([2 x bfloat], ptr @out_buff_1, i20 0, i20 1), align 2
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %111 = load bfloat, ptr @of_meanG_buff_6, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %111, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %112 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %113 = load bfloat, ptr @of_meanG_buff_7, align 32
  %114 = fadd bfloat %112, %113
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %114, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %115 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %116 = load bfloat, ptr @of_meanG_buff_8, align 32
  %117 = fadd bfloat %115, %116
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %117, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %118 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  %119 = load bfloat, ptr @of_meanG_buff_9, align 32
  %120 = fadd bfloat %118, %119
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %120, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %121 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %122 = load bfloat, ptr @of_meanG_buff_0, align 32
  %123 = fadd bfloat %121, %122
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %123, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %124 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %125 = load bfloat, ptr @of_meanG_buff_1, align 32
  %126 = fadd bfloat %124, %125
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %126, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %127 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %128 = load bfloat, ptr @of_meanG_buff_2, align 32
  %129 = fadd bfloat %127, %128
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %129, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %130 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %131 = load bfloat, ptr @of_meanG_buff_3, align 32
  %132 = fadd bfloat %130, %131
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %132, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %133 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %134 = load bfloat, ptr @of_meanG_buff_4, align 32
  %135 = fadd bfloat %133, %134
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %135, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %136 = load bfloat, ptr @out_buff_0, align 32
  %137 = fdiv bfloat %136, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %137, ptr getelementptr inbounds ([2 x bfloat], ptr @out_buff_0, i20 0, i20 1), align 2
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %138 = load bfloat, ptr @of_meanG_buff_5, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %138, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %139 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %140 = load bfloat, ptr @of_meanG_buff_6, align 32
  %141 = fadd bfloat %139, %140
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %141, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %142 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %143 = load bfloat, ptr @of_meanG_buff_7, align 32
  %144 = fadd bfloat %142, %143
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %144, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %145 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %146 = load bfloat, ptr @of_meanG_buff_8, align 32
  %147 = fadd bfloat %145, %146
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %147, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %148 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  %149 = load bfloat, ptr @of_meanG_buff_9, align 32
  %150 = fadd bfloat %148, %149
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %150, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %151 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %152 = load bfloat, ptr @of_meanG_buff_0, align 32
  %153 = fadd bfloat %151, %152
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %153, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %154 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %155 = load bfloat, ptr @of_meanG_buff_1, align 32
  %156 = fadd bfloat %154, %155
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %156, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %157 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %158 = load bfloat, ptr @of_meanG_buff_2, align 32
  %159 = fadd bfloat %157, %158
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %159, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %160 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %161 = load bfloat, ptr @of_meanG_buff_3, align 32
  %162 = fadd bfloat %160, %161
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %162, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %163 = load bfloat, ptr @out_buff_1, align 32
  %164 = fdiv bfloat %163, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %164, ptr getelementptr inbounds ([2 x bfloat], ptr @out_buff_1, i20 0, i20 1), align 2
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %165 = load bfloat, ptr @of_meanG_buff_4, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %165, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %166 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %167 = load bfloat, ptr @of_meanG_buff_5, align 32
  %168 = fadd bfloat %166, %167
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %168, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %169 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %170 = load bfloat, ptr @of_meanG_buff_6, align 32
  %171 = fadd bfloat %169, %170
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %171, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %172 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %173 = load bfloat, ptr @of_meanG_buff_7, align 32
  %174 = fadd bfloat %172, %173
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %174, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %175 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %176 = load bfloat, ptr @of_meanG_buff_8, align 32
  %177 = fadd bfloat %175, %176
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %177, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %178 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  %179 = load bfloat, ptr @of_meanG_buff_9, align 32
  %180 = fadd bfloat %178, %179
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %180, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %181 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %182 = load bfloat, ptr @of_meanG_buff_0, align 32
  %183 = fadd bfloat %181, %182
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %183, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %184 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %185 = load bfloat, ptr @of_meanG_buff_1, align 32
  %186 = fadd bfloat %184, %185
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %186, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %187 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %188 = load bfloat, ptr @of_meanG_buff_2, align 32
  %189 = fadd bfloat %187, %188
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %189, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %190 = load bfloat, ptr @out_buff_0, align 32
  %191 = fdiv bfloat %190, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %191, ptr getelementptr inbounds ([2 x bfloat], ptr @out_buff_0, i20 0, i20 1), align 2
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %192 = load bfloat, ptr @of_meanG_buff_3, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %192, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %193 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %194 = load bfloat, ptr @of_meanG_buff_4, align 32
  %195 = fadd bfloat %193, %194
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %195, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %196 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %197 = load bfloat, ptr @of_meanG_buff_5, align 32
  %198 = fadd bfloat %196, %197
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %198, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %199 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %200 = load bfloat, ptr @of_meanG_buff_6, align 32
  %201 = fadd bfloat %199, %200
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %201, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %202 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %203 = load bfloat, ptr @of_meanG_buff_7, align 32
  %204 = fadd bfloat %202, %203
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %204, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %205 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %206 = load bfloat, ptr @of_meanG_buff_8, align 32
  %207 = fadd bfloat %205, %206
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %207, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %208 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  %209 = load bfloat, ptr @of_meanG_buff_9, align 32
  %210 = fadd bfloat %208, %209
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %210, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %211 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %212 = load bfloat, ptr @of_meanG_buff_0, align 32
  %213 = fadd bfloat %211, %212
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %213, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %214 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %215 = load bfloat, ptr @of_meanG_buff_1, align 32
  %216 = fadd bfloat %214, %215
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %216, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %217 = load bfloat, ptr @out_buff_1, align 32
  %218 = fdiv bfloat %217, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %218, ptr getelementptr inbounds ([2 x bfloat], ptr @out_buff_1, i20 0, i20 1), align 2
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %219 = load bfloat, ptr @of_meanG_buff_2, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %219, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %220 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %221 = load bfloat, ptr @of_meanG_buff_3, align 32
  %222 = fadd bfloat %220, %221
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %222, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %223 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %224 = load bfloat, ptr @of_meanG_buff_4, align 32
  %225 = fadd bfloat %223, %224
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %225, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %226 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %227 = load bfloat, ptr @of_meanG_buff_5, align 32
  %228 = fadd bfloat %226, %227
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %228, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %229 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %230 = load bfloat, ptr @of_meanG_buff_6, align 32
  %231 = fadd bfloat %229, %230
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %231, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %232 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %233 = load bfloat, ptr @of_meanG_buff_7, align 32
  %234 = fadd bfloat %232, %233
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %234, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %235 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %236 = load bfloat, ptr @of_meanG_buff_8, align 32
  %237 = fadd bfloat %235, %236
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %237, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %238 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  %239 = load bfloat, ptr @of_meanG_buff_9, align 32
  %240 = fadd bfloat %238, %239
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %240, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %241 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %242 = load bfloat, ptr @of_meanG_buff_0, align 32
  %243 = fadd bfloat %241, %242
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %243, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %244 = load bfloat, ptr @out_buff_0, align 32
  %245 = fdiv bfloat %244, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %245, ptr getelementptr inbounds ([2 x bfloat], ptr @out_buff_0, i20 0, i20 1), align 2
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %246 = load bfloat, ptr @of_meanG_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %246, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %247 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %248 = load bfloat, ptr @of_meanG_buff_2, align 32
  %249 = fadd bfloat %247, %248
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %249, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %250 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %251 = load bfloat, ptr @of_meanG_buff_3, align 32
  %252 = fadd bfloat %250, %251
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %252, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %253 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %254 = load bfloat, ptr @of_meanG_buff_4, align 32
  %255 = fadd bfloat %253, %254
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %255, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %256 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %257 = load bfloat, ptr @of_meanG_buff_5, align 32
  %258 = fadd bfloat %256, %257
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %258, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %259 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %260 = load bfloat, ptr @of_meanG_buff_6, align 32
  %261 = fadd bfloat %259, %260
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %261, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %262 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %263 = load bfloat, ptr @of_meanG_buff_7, align 32
  %264 = fadd bfloat %262, %263
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %264, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %265 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %266 = load bfloat, ptr @of_meanG_buff_8, align 32
  %267 = fadd bfloat %265, %266
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %267, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %268 = load bfloat, ptr @out_buff_1, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  %269 = load bfloat, ptr @of_meanG_buff_9, align 32
  %270 = fadd bfloat %268, %269
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %270, ptr @out_buff_1, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %271 = load bfloat, ptr @out_buff_1, align 32
  %272 = fdiv bfloat %271, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %272, ptr getelementptr inbounds ([2 x bfloat], ptr @out_buff_1, i20 0, i20 1), align 2
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %273 = add nuw nsw i64 %2, 10
  %274 = icmp ult i64 %2, 9223372036854775790
  br i1 %274, label %1, label %.preheader

.preheader:                                       ; preds = %1, %.preheader.1
  %275 = phi i64 [ %330, %.preheader.1 ], [ 9223372036854775800, %1 ]
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %276 = load bfloat, ptr @of_meanG_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %276, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %277 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %278 = load bfloat, ptr @of_meanG_buff_1, align 32
  %279 = fadd bfloat %277, %278
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %279, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %280 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %281 = load bfloat, ptr @of_meanG_buff_2, align 32
  %282 = fadd bfloat %280, %281
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %282, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %283 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %284 = load bfloat, ptr @of_meanG_buff_3, align 32
  %285 = fadd bfloat %283, %284
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %285, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %286 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %287 = load bfloat, ptr @of_meanG_buff_4, align 32
  %288 = fadd bfloat %286, %287
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %288, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %289 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %290 = load bfloat, ptr @of_meanG_buff_5, align 32
  %291 = fadd bfloat %289, %290
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %291, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %292 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %293 = load bfloat, ptr @of_meanG_buff_6, align 32
  %294 = fadd bfloat %292, %293
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %294, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %295 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %296 = load bfloat, ptr @of_meanG_buff_7, align 32
  %297 = fadd bfloat %295, %296
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %297, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %298 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %299 = load bfloat, ptr @of_meanG_buff_8, align 32
  %300 = fadd bfloat %298, %299
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %300, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %301 = load bfloat, ptr @out_buff_0, align 32
  %302 = fdiv bfloat %301, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %302, ptr getelementptr inbounds ([2 x bfloat], ptr @out_buff_0, i20 0, i20 1), align 2
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %.not = icmp eq i64 %275, 9223372036854775806
  br i1 %.not, label %331, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %303 = load bfloat, ptr @of_meanG_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %303, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %304 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %305 = load bfloat, ptr @of_meanG_buff_1, align 32
  %306 = fadd bfloat %304, %305
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %306, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %307 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %308 = load bfloat, ptr @of_meanG_buff_2, align 32
  %309 = fadd bfloat %307, %308
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %309, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %310 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %311 = load bfloat, ptr @of_meanG_buff_3, align 32
  %312 = fadd bfloat %310, %311
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %312, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %313 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %314 = load bfloat, ptr @of_meanG_buff_4, align 32
  %315 = fadd bfloat %313, %314
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %315, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %316 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %317 = load bfloat, ptr @of_meanG_buff_5, align 32
  %318 = fadd bfloat %316, %317
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %318, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %319 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %320 = load bfloat, ptr @of_meanG_buff_6, align 32
  %321 = fadd bfloat %319, %320
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %321, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %322 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %323 = load bfloat, ptr @of_meanG_buff_7, align 32
  %324 = fadd bfloat %322, %323
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %324, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %325 = load bfloat, ptr @out_buff_0, align 32
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %326 = load bfloat, ptr @of_meanG_buff_8, align 32
  %327 = fadd bfloat %325, %326
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %327, ptr @out_buff_0, align 32
  tail call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %328 = load bfloat, ptr @out_buff_0, align 32
  %329 = fdiv bfloat %328, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %329, ptr getelementptr inbounds ([2 x bfloat], ptr @out_buff_0, i20 0, i20 1), align 2
  tail call void @llvm.aie2.release(i32 49, i32 1)
  %330 = add nuw nsw i64 %275, 2
  br label %.preheader

331:                                              ; preds = %.preheader
  ret void
}

define void @core_2_4() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_2, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_3, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_4, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_5, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_6, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_7, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_8, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_9, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_2, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_3, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_4, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_5, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_6, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_7, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_8, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_9, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_2, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_3, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_4, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_5, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_6, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_7, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_8, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_9, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_2, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_3, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_4, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_5, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_6, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_7, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_8, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_9, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_2, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_3, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_4, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_5, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_6, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_7, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_8, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_9, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_2, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_3, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_4, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_5, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_6, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_7, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_8, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_9, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_2, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_3, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_4, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_5, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_6, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_7, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_8, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_9, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_2, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_3, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_4, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_5, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_6, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_7, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_8, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_9, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_2, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_3, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_4, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_5, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_6, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_7, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_8, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_9, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  %3 = add nuw nsw i64 %2, 10
  %4 = icmp ult i64 %2, 9223372036854775790
  br i1 %4, label %1, label %.preheader

.preheader:                                       ; preds = %1, %.preheader.1
  %5 = phi i64 [ %6, %.preheader.1 ], [ 9223372036854775800, %1 ]
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_2, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_3, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_4, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_5, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_6, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_7, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_8, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  %.not = icmp eq i64 %5, 9223372036854775806
  br i1 %.not, label %7, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_2, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_3, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_4, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_5, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_6, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_1, ptr nonnull @of_meanG_buff_7, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  tail call void @llvm.aie2.acquire(i32 19, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  tail call void @mean(ptr nonnull @of_meanF_buff_0, ptr nonnull @of_meanG_buff_8, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 18, i32 1)
  %6 = add nuw nsw i64 %5, 2
  br label %.preheader

7:                                                ; preds = %.preheader
  ret void
}

define void @core_1_4() local_unnamed_addr {
  br label %.preheader3

.preheader3:                                      ; preds = %0, %.preheader3
  %1 = phi i64 [ 0, %0 ], [ %2, %.preheader3 ]
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_0, ptr nonnull @in1_cons_buff_0, ptr nonnull @of_meanF_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_1, ptr nonnull @in1_cons_buff_1, ptr nonnull @of_meanF_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_0, ptr nonnull @in1_cons_buff_0, ptr nonnull @of_meanF_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_1, ptr nonnull @in1_cons_buff_1, ptr nonnull @of_meanF_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_0, ptr nonnull @in1_cons_buff_0, ptr nonnull @of_meanF_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_1, ptr nonnull @in1_cons_buff_1, ptr nonnull @of_meanF_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_0, ptr nonnull @in1_cons_buff_0, ptr nonnull @of_meanF_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_1, ptr nonnull @in1_cons_buff_1, ptr nonnull @of_meanF_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_0, ptr nonnull @in1_cons_buff_0, ptr nonnull @of_meanF_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_1, ptr nonnull @in1_cons_buff_1, ptr nonnull @of_meanF_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_0, ptr nonnull @in1_cons_buff_0, ptr nonnull @of_meanF_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_1, ptr nonnull @in1_cons_buff_1, ptr nonnull @of_meanF_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_0, ptr nonnull @in1_cons_buff_0, ptr nonnull @of_meanF_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_1, ptr nonnull @in1_cons_buff_1, ptr nonnull @of_meanF_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_0, ptr nonnull @in1_cons_buff_0, ptr nonnull @of_meanF_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_1, ptr nonnull @in1_cons_buff_1, ptr nonnull @of_meanF_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_0, ptr nonnull @in1_cons_buff_0, ptr nonnull @of_meanF_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_1, ptr nonnull @in1_cons_buff_1, ptr nonnull @of_meanF_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %2 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %2, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader3

.preheader.preheader:                             ; preds = %.preheader3
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_0, ptr nonnull @in1_cons_buff_0, ptr nonnull @of_meanF_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_1, ptr nonnull @in1_cons_buff_1, ptr nonnull @of_meanF_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_0, ptr nonnull @in1_cons_buff_0, ptr nonnull @of_meanF_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_1, ptr nonnull @in1_cons_buff_1, ptr nonnull @of_meanF_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_0, ptr nonnull @in1_cons_buff_0, ptr nonnull @of_meanF_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_1, ptr nonnull @in1_cons_buff_1, ptr nonnull @of_meanF_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_0, ptr nonnull @in1_cons_buff_0, ptr nonnull @of_meanF_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_1, ptr nonnull @in1_cons_buff_1, ptr nonnull @of_meanF_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 17, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  tail call void @vector_mult_aie_scalar(ptr nonnull @of_multE_buff_0, ptr nonnull @in1_cons_buff_0, ptr nonnull @of_meanF_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 51, i32 1)
  tail call void @llvm.aie2.release(i32 16, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_0_4() local_unnamed_addr {
  br label %.preheader3

.preheader3:                                      ; preds = %0, %.preheader3
  %1 = phi i64 [ 0, %0 ], [ %2, %.preheader3 ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_0, ptr nonnull @of_multE_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_1, ptr nonnull @of_multE_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_0, ptr nonnull @of_multE_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_1, ptr nonnull @of_multE_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_0, ptr nonnull @of_multE_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_1, ptr nonnull @of_multE_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_0, ptr nonnull @of_multE_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_1, ptr nonnull @of_multE_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_0, ptr nonnull @of_multE_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_1, ptr nonnull @of_multE_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_0, ptr nonnull @of_multE_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_1, ptr nonnull @of_multE_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_0, ptr nonnull @of_multE_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_1, ptr nonnull @of_multE_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_0, ptr nonnull @of_multE_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_1, ptr nonnull @of_multE_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_0, ptr nonnull @of_multE_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_1, ptr nonnull @of_multE_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  %2 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %2, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader3

.preheader.preheader:                             ; preds = %.preheader3
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_0, ptr nonnull @of_multE_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_1, ptr nonnull @of_multE_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_0, ptr nonnull @of_multE_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_1, ptr nonnull @of_multE_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_0, ptr nonnull @of_multE_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_1, ptr nonnull @of_multE_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_0, ptr nonnull @of_multE_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_1, ptr nonnull @of_multE_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  tail call void @passthrough(ptr nonnull @of_cosD_buff_0, ptr nonnull @of_multE_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 49, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  ret void
}

define void @core_0_3() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_cosD_buff_0, ptr nonnull @in0_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_cosD_buff_1, ptr nonnull @in0_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_cosD_buff_0, ptr nonnull @in0_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_cosD_buff_1, ptr nonnull @in0_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_cosD_buff_0, ptr nonnull @in0_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_cosD_buff_1, ptr nonnull @in0_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_cosD_buff_0, ptr nonnull @in0_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_cosD_buff_1, ptr nonnull @in0_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_cosD_buff_0, ptr nonnull @in0_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_cosD_buff_1, ptr nonnull @in0_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_cosD_buff_0, ptr nonnull @in0_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_cosD_buff_1, ptr nonnull @in0_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_cosD_buff_0, ptr nonnull @in0_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_cosD_buff_1, ptr nonnull @in0_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_cosD_buff_0, ptr nonnull @in0_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_cosD_buff_1, ptr nonnull @in0_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_cosD_buff_0, ptr nonnull @in0_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_cosD_buff_1, ptr nonnull @in0_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %3 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %3, 9223372036854775806
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_cosD_buff_0, ptr nonnull @in0_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_cosD_buff_1, ptr nonnull @in0_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_cosD_buff_0, ptr nonnull @in0_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_cosD_buff_1, ptr nonnull @in0_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_cosD_buff_0, ptr nonnull @in0_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_cosD_buff_1, ptr nonnull @in0_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_cosD_buff_0, ptr nonnull @in0_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_1, ptr nonnull @of_cosD_buff_1, ptr nonnull @in0_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @of_scaleC_buff_0, ptr nonnull @of_cosD_buff_0, ptr nonnull @in0_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_1_3() local_unnamed_addr {
  br label %.preheader3

.preheader3:                                      ; preds = %0, %.preheader3
  %1 = phi i64 [ 0, %0 ], [ %2, %.preheader3 ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %2 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %2, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader3

.preheader.preheader:                             ; preds = %.preheader3
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_1, ptr nonnull @addB1_buff_1, ptr nonnull @of_scaleC_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addB0_buff_0, ptr nonnull @addB1_buff_0, ptr nonnull @of_scaleC_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 19, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_2_3() local_unnamed_addr {
  br label %.preheader3

.preheader3:                                      ; preds = %0, %.preheader3
  %1 = phi i64 [ 0, %0 ], [ %2, %.preheader3 ]
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_0, ptr nonnull @addA1_cons_buff_0, ptr nonnull @addB1_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_1, ptr nonnull @addA1_cons_buff_1, ptr nonnull @addB1_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_0, ptr nonnull @addA1_cons_buff_0, ptr nonnull @addB1_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_1, ptr nonnull @addA1_cons_buff_1, ptr nonnull @addB1_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_0, ptr nonnull @addA1_cons_buff_0, ptr nonnull @addB1_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_1, ptr nonnull @addA1_cons_buff_1, ptr nonnull @addB1_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_0, ptr nonnull @addA1_cons_buff_0, ptr nonnull @addB1_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_1, ptr nonnull @addA1_cons_buff_1, ptr nonnull @addB1_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_0, ptr nonnull @addA1_cons_buff_0, ptr nonnull @addB1_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_1, ptr nonnull @addA1_cons_buff_1, ptr nonnull @addB1_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_0, ptr nonnull @addA1_cons_buff_0, ptr nonnull @addB1_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_1, ptr nonnull @addA1_cons_buff_1, ptr nonnull @addB1_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_0, ptr nonnull @addA1_cons_buff_0, ptr nonnull @addB1_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_1, ptr nonnull @addA1_cons_buff_1, ptr nonnull @addB1_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_0, ptr nonnull @addA1_cons_buff_0, ptr nonnull @addB1_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_1, ptr nonnull @addA1_cons_buff_1, ptr nonnull @addB1_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_0, ptr nonnull @addA1_cons_buff_0, ptr nonnull @addB1_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_1, ptr nonnull @addA1_cons_buff_1, ptr nonnull @addB1_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  %2 = add nuw nsw i64 %1, 2
  %.not = icmp eq i64 %2, 9223372036854775806
  br i1 %.not, label %.preheader.preheader, label %.preheader3

.preheader.preheader:                             ; preds = %.preheader3
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_0, ptr nonnull @addA1_cons_buff_0, ptr nonnull @addB1_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_1, ptr nonnull @addA1_cons_buff_1, ptr nonnull @addB1_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_0, ptr nonnull @addA1_cons_buff_0, ptr nonnull @addB1_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_1, ptr nonnull @addA1_cons_buff_1, ptr nonnull @addB1_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_0, ptr nonnull @addA1_cons_buff_0, ptr nonnull @addB1_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_1, ptr nonnull @addA1_cons_buff_1, ptr nonnull @addB1_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_0, ptr nonnull @addA1_cons_buff_0, ptr nonnull @addB1_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_1, ptr nonnull @addA1_cons_buff_1, ptr nonnull @addB1_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 5, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  tail call void @vector_add_aie_scalar(ptr nonnull @addA0_buff_0, ptr nonnull @addA1_cons_buff_0, ptr nonnull @addB1_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 17, i32 1)
  tail call void @llvm.aie2.release(i32 4, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_3_2() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %3 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %3, 9223372036854775806
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_1, ptr nonnull @addA1_buff_1, ptr nonnull @n_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @w_cons_buff_0, ptr nonnull @addA1_buff_0, ptr nonnull @n_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_2_2() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %3 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %3, 9223372036854775806
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_1, ptr nonnull @addA0_buff_1, ptr nonnull @m_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @v_cons_buff_0, ptr nonnull @addA0_buff_0, ptr nonnull @m_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_1_2() local_unnamed_addr {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %3, %1 ]
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_1, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  %3 = add nuw nsw i64 %2, 2
  %.not = icmp eq i64 %3, 9223372036854775806
  br i1 %.not, label %4, label %1

4:                                                ; preds = %1
  tail call void @llvm.aie2.acquire(i32 51, i32 -1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_1, ptr nonnull @addB0_buff_1, ptr nonnull @l_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.acquire(i32 49, i32 -1)
  tail call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  tail call void @vector_scalar_mul_aie_scalar(ptr nonnull @u_cons_buff_0, ptr nonnull @addB0_buff_0, ptr nonnull @l_cons_buff_0, i16 1024)
  tail call void @llvm.aie2.release(i32 53, i32 1)
  tail call void @llvm.aie2.release(i32 48, i32 1)
  tail call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nounwind }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
