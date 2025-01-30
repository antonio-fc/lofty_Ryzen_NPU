; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target triple = "aie2"

@in0_cons_buff_1 = external global [2 x bfloat]
@in0_cons_buff_0 = external global [2 x bfloat]
@in1_cons_buff_1 = external global [1024 x bfloat]
@in1_cons_buff_0 = external global [1024 x bfloat]
@in2_cons_buff_0 = external global [3072 x bfloat]
@in3_cons_buff_0 = external global [6 x bfloat]
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
@out_cons = external global [2 x bfloat]
@out = external global [2 x bfloat]
@of_meanG = external global [2 x bfloat]
@of_meanF = external global [1024 x bfloat]
@of_multE = external global [1024 x bfloat]
@of_cosD = external global [1024 x bfloat]
@of_scaleC = external global [1024 x bfloat]
@addB1 = external global [1024 x bfloat]
@addB0 = external global [1024 x bfloat]
@addA1_cons = external global [1024 x bfloat]
@addA1 = external global [1024 x bfloat]
@addA0 = external global [1024 x bfloat]
@n_cons = external global [2 x bfloat]
@n = external global [2 x bfloat]
@m_cons = external global [2 x bfloat]
@m = external global [2 x bfloat]
@l_cons = external global [2 x bfloat]
@l = external global [2 x bfloat]
@w_cons = external global [1024 x bfloat]
@w = external global [1024 x bfloat]
@v_cons = external global [1024 x bfloat]
@v = external global [1024 x bfloat]
@u_cons = external global [1024 x bfloat]
@u = external global [1024 x bfloat]
@in3_cons = external global [6 x bfloat]
@in3 = external global [6 x bfloat]
@in2_cons = external global [3072 x bfloat]
@in2 = external global [3072 x bfloat]
@in1_cons = external global [1024 x bfloat]
@in1 = external global [1024 x bfloat]
@in0_cons = external global [2 x bfloat]
@in0 = external global [2 x bfloat]

declare void @debug_i32(i32)

declare void @llvm.aie2.put.ms(i32, i32)

declare { i32, i32 } @llvm.aie2.get.ss()

declare void @llvm.aie2.mcd.write.vec(<16 x i32>, i32)

declare <16 x i32> @llvm.aie2.scd.read.vec(i32)

declare void @llvm.aie2.acquire(i32, i32)

declare void @llvm.aie2.release(i32, i32)

declare void @vector_scalar_mul_aie_scalar(ptr, ptr, ptr, i16)

declare void @passthrough(ptr, ptr, i16)

declare void @vector_add_aie_scalar(ptr, ptr, ptr, i16)

declare void @vector_mult_aie_scalar(ptr, ptr, ptr, i16)

declare void @mean(ptr, ptr, i16)

declare void @cos_float_1024(ptr, ptr, i16)

define void @core_3_4() {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %275, %4 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775800
  br i1 %3, label %4, label %276

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %5 = load bfloat, ptr @of_meanG_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %5, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %6 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %7 = load bfloat, ptr @of_meanG_buff_1, align 2
  %8 = fadd bfloat %6, %7
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %8, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %9 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %10 = load bfloat, ptr @of_meanG_buff_2, align 2
  %11 = fadd bfloat %9, %10
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %11, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %12 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %13 = load bfloat, ptr @of_meanG_buff_3, align 2
  %14 = fadd bfloat %12, %13
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %14, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %15 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %16 = load bfloat, ptr @of_meanG_buff_4, align 2
  %17 = fadd bfloat %15, %16
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %17, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %18 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %19 = load bfloat, ptr @of_meanG_buff_5, align 2
  %20 = fadd bfloat %18, %19
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %20, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %21 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %22 = load bfloat, ptr @of_meanG_buff_6, align 2
  %23 = fadd bfloat %21, %22
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %23, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %24 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %25 = load bfloat, ptr @of_meanG_buff_7, align 2
  %26 = fadd bfloat %24, %25
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %26, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %27 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %28 = load bfloat, ptr @of_meanG_buff_8, align 2
  %29 = fadd bfloat %27, %28
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %29, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %30 = load bfloat, ptr @out_buff_0, align 2
  %31 = fdiv bfloat %30, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %31, ptr getelementptr (bfloat, ptr @out_buff_0, i32 1), align 2
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  %32 = load bfloat, ptr @of_meanG_buff_9, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %32, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %33 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %34 = load bfloat, ptr @of_meanG_buff_0, align 2
  %35 = fadd bfloat %33, %34
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %35, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %36 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %37 = load bfloat, ptr @of_meanG_buff_1, align 2
  %38 = fadd bfloat %36, %37
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %38, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %39 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %40 = load bfloat, ptr @of_meanG_buff_2, align 2
  %41 = fadd bfloat %39, %40
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %41, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %42 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %43 = load bfloat, ptr @of_meanG_buff_3, align 2
  %44 = fadd bfloat %42, %43
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %44, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %45 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %46 = load bfloat, ptr @of_meanG_buff_4, align 2
  %47 = fadd bfloat %45, %46
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %47, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %48 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %49 = load bfloat, ptr @of_meanG_buff_5, align 2
  %50 = fadd bfloat %48, %49
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %50, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %51 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %52 = load bfloat, ptr @of_meanG_buff_6, align 2
  %53 = fadd bfloat %51, %52
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %53, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %54 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %55 = load bfloat, ptr @of_meanG_buff_7, align 2
  %56 = fadd bfloat %54, %55
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %56, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %57 = load bfloat, ptr @out_buff_1, align 2
  %58 = fdiv bfloat %57, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %58, ptr getelementptr (bfloat, ptr @out_buff_1, i32 1), align 2
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %59 = load bfloat, ptr @of_meanG_buff_8, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %59, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %60 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  %61 = load bfloat, ptr @of_meanG_buff_9, align 2
  %62 = fadd bfloat %60, %61
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %62, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %63 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %64 = load bfloat, ptr @of_meanG_buff_0, align 2
  %65 = fadd bfloat %63, %64
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %65, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %66 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %67 = load bfloat, ptr @of_meanG_buff_1, align 2
  %68 = fadd bfloat %66, %67
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %68, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %69 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %70 = load bfloat, ptr @of_meanG_buff_2, align 2
  %71 = fadd bfloat %69, %70
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %71, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %72 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %73 = load bfloat, ptr @of_meanG_buff_3, align 2
  %74 = fadd bfloat %72, %73
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %74, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %75 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %76 = load bfloat, ptr @of_meanG_buff_4, align 2
  %77 = fadd bfloat %75, %76
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %77, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %78 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %79 = load bfloat, ptr @of_meanG_buff_5, align 2
  %80 = fadd bfloat %78, %79
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %80, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %81 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %82 = load bfloat, ptr @of_meanG_buff_6, align 2
  %83 = fadd bfloat %81, %82
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %83, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %84 = load bfloat, ptr @out_buff_0, align 2
  %85 = fdiv bfloat %84, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %85, ptr getelementptr (bfloat, ptr @out_buff_0, i32 1), align 2
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %86 = load bfloat, ptr @of_meanG_buff_7, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %86, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %87 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %88 = load bfloat, ptr @of_meanG_buff_8, align 2
  %89 = fadd bfloat %87, %88
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %89, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %90 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  %91 = load bfloat, ptr @of_meanG_buff_9, align 2
  %92 = fadd bfloat %90, %91
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %92, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %93 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %94 = load bfloat, ptr @of_meanG_buff_0, align 2
  %95 = fadd bfloat %93, %94
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %95, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %96 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %97 = load bfloat, ptr @of_meanG_buff_1, align 2
  %98 = fadd bfloat %96, %97
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %98, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %99 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %100 = load bfloat, ptr @of_meanG_buff_2, align 2
  %101 = fadd bfloat %99, %100
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %101, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %102 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %103 = load bfloat, ptr @of_meanG_buff_3, align 2
  %104 = fadd bfloat %102, %103
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %104, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %105 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %106 = load bfloat, ptr @of_meanG_buff_4, align 2
  %107 = fadd bfloat %105, %106
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %107, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %108 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %109 = load bfloat, ptr @of_meanG_buff_5, align 2
  %110 = fadd bfloat %108, %109
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %110, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %111 = load bfloat, ptr @out_buff_1, align 2
  %112 = fdiv bfloat %111, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %112, ptr getelementptr (bfloat, ptr @out_buff_1, i32 1), align 2
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %113 = load bfloat, ptr @of_meanG_buff_6, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %113, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %114 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %115 = load bfloat, ptr @of_meanG_buff_7, align 2
  %116 = fadd bfloat %114, %115
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %116, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %117 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %118 = load bfloat, ptr @of_meanG_buff_8, align 2
  %119 = fadd bfloat %117, %118
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %119, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %120 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  %121 = load bfloat, ptr @of_meanG_buff_9, align 2
  %122 = fadd bfloat %120, %121
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %122, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %123 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %124 = load bfloat, ptr @of_meanG_buff_0, align 2
  %125 = fadd bfloat %123, %124
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %125, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %126 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %127 = load bfloat, ptr @of_meanG_buff_1, align 2
  %128 = fadd bfloat %126, %127
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %128, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %129 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %130 = load bfloat, ptr @of_meanG_buff_2, align 2
  %131 = fadd bfloat %129, %130
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %131, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %132 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %133 = load bfloat, ptr @of_meanG_buff_3, align 2
  %134 = fadd bfloat %132, %133
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %134, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %135 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %136 = load bfloat, ptr @of_meanG_buff_4, align 2
  %137 = fadd bfloat %135, %136
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %137, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %138 = load bfloat, ptr @out_buff_0, align 2
  %139 = fdiv bfloat %138, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %139, ptr getelementptr (bfloat, ptr @out_buff_0, i32 1), align 2
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %140 = load bfloat, ptr @of_meanG_buff_5, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %140, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %141 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %142 = load bfloat, ptr @of_meanG_buff_6, align 2
  %143 = fadd bfloat %141, %142
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %143, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %144 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %145 = load bfloat, ptr @of_meanG_buff_7, align 2
  %146 = fadd bfloat %144, %145
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %146, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %147 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %148 = load bfloat, ptr @of_meanG_buff_8, align 2
  %149 = fadd bfloat %147, %148
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %149, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %150 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  %151 = load bfloat, ptr @of_meanG_buff_9, align 2
  %152 = fadd bfloat %150, %151
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %152, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %153 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %154 = load bfloat, ptr @of_meanG_buff_0, align 2
  %155 = fadd bfloat %153, %154
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %155, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %156 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %157 = load bfloat, ptr @of_meanG_buff_1, align 2
  %158 = fadd bfloat %156, %157
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %158, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %159 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %160 = load bfloat, ptr @of_meanG_buff_2, align 2
  %161 = fadd bfloat %159, %160
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %161, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %162 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %163 = load bfloat, ptr @of_meanG_buff_3, align 2
  %164 = fadd bfloat %162, %163
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %164, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %165 = load bfloat, ptr @out_buff_1, align 2
  %166 = fdiv bfloat %165, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %166, ptr getelementptr (bfloat, ptr @out_buff_1, i32 1), align 2
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %167 = load bfloat, ptr @of_meanG_buff_4, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %167, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %168 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %169 = load bfloat, ptr @of_meanG_buff_5, align 2
  %170 = fadd bfloat %168, %169
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %170, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %171 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %172 = load bfloat, ptr @of_meanG_buff_6, align 2
  %173 = fadd bfloat %171, %172
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %173, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %174 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %175 = load bfloat, ptr @of_meanG_buff_7, align 2
  %176 = fadd bfloat %174, %175
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %176, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %177 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %178 = load bfloat, ptr @of_meanG_buff_8, align 2
  %179 = fadd bfloat %177, %178
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %179, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %180 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  %181 = load bfloat, ptr @of_meanG_buff_9, align 2
  %182 = fadd bfloat %180, %181
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %182, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %183 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %184 = load bfloat, ptr @of_meanG_buff_0, align 2
  %185 = fadd bfloat %183, %184
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %185, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %186 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %187 = load bfloat, ptr @of_meanG_buff_1, align 2
  %188 = fadd bfloat %186, %187
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %188, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %189 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %190 = load bfloat, ptr @of_meanG_buff_2, align 2
  %191 = fadd bfloat %189, %190
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %191, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %192 = load bfloat, ptr @out_buff_0, align 2
  %193 = fdiv bfloat %192, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %193, ptr getelementptr (bfloat, ptr @out_buff_0, i32 1), align 2
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %194 = load bfloat, ptr @of_meanG_buff_3, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %194, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %195 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %196 = load bfloat, ptr @of_meanG_buff_4, align 2
  %197 = fadd bfloat %195, %196
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %197, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %198 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %199 = load bfloat, ptr @of_meanG_buff_5, align 2
  %200 = fadd bfloat %198, %199
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %200, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %201 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %202 = load bfloat, ptr @of_meanG_buff_6, align 2
  %203 = fadd bfloat %201, %202
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %203, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %204 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %205 = load bfloat, ptr @of_meanG_buff_7, align 2
  %206 = fadd bfloat %204, %205
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %206, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %207 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %208 = load bfloat, ptr @of_meanG_buff_8, align 2
  %209 = fadd bfloat %207, %208
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %209, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %210 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  %211 = load bfloat, ptr @of_meanG_buff_9, align 2
  %212 = fadd bfloat %210, %211
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %212, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %213 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %214 = load bfloat, ptr @of_meanG_buff_0, align 2
  %215 = fadd bfloat %213, %214
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %215, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %216 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %217 = load bfloat, ptr @of_meanG_buff_1, align 2
  %218 = fadd bfloat %216, %217
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %218, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %219 = load bfloat, ptr @out_buff_1, align 2
  %220 = fdiv bfloat %219, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %220, ptr getelementptr (bfloat, ptr @out_buff_1, i32 1), align 2
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %221 = load bfloat, ptr @of_meanG_buff_2, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %221, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %222 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %223 = load bfloat, ptr @of_meanG_buff_3, align 2
  %224 = fadd bfloat %222, %223
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %224, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %225 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %226 = load bfloat, ptr @of_meanG_buff_4, align 2
  %227 = fadd bfloat %225, %226
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %227, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %228 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %229 = load bfloat, ptr @of_meanG_buff_5, align 2
  %230 = fadd bfloat %228, %229
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %230, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %231 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %232 = load bfloat, ptr @of_meanG_buff_6, align 2
  %233 = fadd bfloat %231, %232
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %233, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %234 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %235 = load bfloat, ptr @of_meanG_buff_7, align 2
  %236 = fadd bfloat %234, %235
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %236, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %237 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %238 = load bfloat, ptr @of_meanG_buff_8, align 2
  %239 = fadd bfloat %237, %238
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %239, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %240 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  %241 = load bfloat, ptr @of_meanG_buff_9, align 2
  %242 = fadd bfloat %240, %241
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %242, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %243 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %244 = load bfloat, ptr @of_meanG_buff_0, align 2
  %245 = fadd bfloat %243, %244
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %245, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %246 = load bfloat, ptr @out_buff_0, align 2
  %247 = fdiv bfloat %246, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %247, ptr getelementptr (bfloat, ptr @out_buff_0, i32 1), align 2
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %248 = load bfloat, ptr @of_meanG_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %248, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %249 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %250 = load bfloat, ptr @of_meanG_buff_2, align 2
  %251 = fadd bfloat %249, %250
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %251, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %252 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %253 = load bfloat, ptr @of_meanG_buff_3, align 2
  %254 = fadd bfloat %252, %253
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %254, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %255 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %256 = load bfloat, ptr @of_meanG_buff_4, align 2
  %257 = fadd bfloat %255, %256
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %257, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %258 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %259 = load bfloat, ptr @of_meanG_buff_5, align 2
  %260 = fadd bfloat %258, %259
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %260, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %261 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %262 = load bfloat, ptr @of_meanG_buff_6, align 2
  %263 = fadd bfloat %261, %262
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %263, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %264 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %265 = load bfloat, ptr @of_meanG_buff_7, align 2
  %266 = fadd bfloat %264, %265
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %266, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %267 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %268 = load bfloat, ptr @of_meanG_buff_8, align 2
  %269 = fadd bfloat %267, %268
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %269, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %270 = load bfloat, ptr @out_buff_1, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  %271 = load bfloat, ptr @of_meanG_buff_9, align 2
  %272 = fadd bfloat %270, %271
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %272, ptr @out_buff_1, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  %273 = load bfloat, ptr @out_buff_1, align 2
  %274 = fdiv bfloat %273, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_1, i64 32) ]
  store bfloat %274, ptr getelementptr (bfloat, ptr @out_buff_1, i32 1), align 2
  call void @llvm.aie2.release(i32 49, i32 1)
  %275 = add i64 %2, 10
  br label %1

276:                                              ; preds = %279, %1
  %277 = phi i64 [ %307, %279 ], [ 9223372036854775800, %1 ]
  %278 = icmp slt i64 %277, 9223372036854775807
  br i1 %278, label %279, label %308

279:                                              ; preds = %276
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  %280 = load bfloat, ptr @of_meanG_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %280, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %281 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  %282 = load bfloat, ptr @of_meanG_buff_1, align 2
  %283 = fadd bfloat %281, %282
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %283, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %284 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  %285 = load bfloat, ptr @of_meanG_buff_2, align 2
  %286 = fadd bfloat %284, %285
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %286, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %287 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  %288 = load bfloat, ptr @of_meanG_buff_3, align 2
  %289 = fadd bfloat %287, %288
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %289, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %290 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  %291 = load bfloat, ptr @of_meanG_buff_4, align 2
  %292 = fadd bfloat %290, %291
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %292, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %293 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  %294 = load bfloat, ptr @of_meanG_buff_5, align 2
  %295 = fadd bfloat %293, %294
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %295, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %296 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  %297 = load bfloat, ptr @of_meanG_buff_6, align 2
  %298 = fadd bfloat %296, %297
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %298, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %299 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  %300 = load bfloat, ptr @of_meanG_buff_7, align 2
  %301 = fadd bfloat %299, %300
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %301, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %302 = load bfloat, ptr @out_buff_0, align 2
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  %303 = load bfloat, ptr @of_meanG_buff_8, align 2
  %304 = fadd bfloat %302, %303
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %304, ptr @out_buff_0, align 2
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  %305 = load bfloat, ptr @out_buff_0, align 2
  %306 = fdiv bfloat %305, 0xR4110
  call void @llvm.assume(i1 true) [ "align"(ptr @out_buff_0, i64 32) ]
  store bfloat %306, ptr getelementptr (bfloat, ptr @out_buff_0, i32 1), align 2
  call void @llvm.aie2.release(i32 49, i32 1)
  %307 = add i64 %277, 1
  br label %276

308:                                              ; preds = %276
  ret void
}

define void @core_2_4() {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775800
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_2, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_3, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_4, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_5, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_6, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_7, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_8, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_9, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_2, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_3, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_4, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_5, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_6, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_7, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_8, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_9, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_2, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_3, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_4, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_5, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_6, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_7, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_8, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_9, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_2, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_3, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_4, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_5, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_6, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_7, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_8, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_9, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_2, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_3, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_4, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_5, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_6, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_7, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_8, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_9, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_2, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_3, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_4, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_5, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_6, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_7, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_8, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_9, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_2, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_3, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_4, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_5, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_6, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_7, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_8, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_9, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_2, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_3, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_4, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_5, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_6, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_7, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_8, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_9, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_2, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_3, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_4, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_5, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_6, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_7, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_8, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_9, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_9, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  %5 = add i64 %2, 10
  br label %1

6:                                                ; preds = %9, %1
  %7 = phi i64 [ %10, %9 ], [ 9223372036854775800, %1 ]
  %8 = icmp slt i64 %7, 9223372036854775807
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_2, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_2, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_3, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_3, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_4, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_4, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_5, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_5, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_6, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_6, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_7, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @mean(ptr @of_meanF_buff_1, ptr @of_meanG_buff_7, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  call void @llvm.aie2.acquire(i32 19, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanG_buff_8, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @mean(ptr @of_meanF_buff_0, ptr @of_meanG_buff_8, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 18, i32 1)
  %10 = add i64 %7, 1
  br label %6

11:                                               ; preds = %6
  ret void
}

define void @core_1_4() {
  br label %1

1:                                                ; preds = %15, %0
  %2 = phi i64 [ %16, %15 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %17

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @of_multE_buff_0, ptr @in1_cons_buff_0, ptr @of_meanF_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @of_multE_buff_1, ptr @in1_cons_buff_1, ptr @of_meanF_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @of_multE_buff_0, ptr @in1_cons_buff_0, ptr @of_meanF_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi i64 [ %14, %13 ], [ 0, %9 ]
  %12 = icmp slt i64 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @of_multE_buff_1, ptr @in1_cons_buff_1, ptr @of_meanF_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @of_multE_buff_0, ptr @in1_cons_buff_0, ptr @of_meanF_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %14 = add i64 %11, 2
  br label %10

15:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @of_multE_buff_1, ptr @in1_cons_buff_1, ptr @of_meanF_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %16 = add i64 %2, 2
  br label %1

17:                                               ; preds = %20, %1
  %18 = phi i64 [ %21, %20 ], [ 0, %1 ]
  %19 = icmp slt i64 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @of_multE_buff_0, ptr @in1_cons_buff_0, ptr @of_meanF_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_1, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @of_multE_buff_1, ptr @in1_cons_buff_1, ptr @of_meanF_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add i64 %18, 2
  br label %17

22:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 17, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 50, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_meanF_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in1_cons_buff_0, i64 32) ]
  call void @vector_mult_aie_scalar(ptr @of_multE_buff_0, ptr @in1_cons_buff_0, ptr @of_meanF_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 51, i32 1)
  call void @llvm.aie2.release(i32 16, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_0_4() {
  br label %1

1:                                                ; preds = %15, %0
  %2 = phi i64 [ %16, %15 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %17

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @passthrough(ptr @of_cosD_buff_0, ptr @of_multE_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @passthrough(ptr @of_cosD_buff_1, ptr @of_multE_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @passthrough(ptr @of_cosD_buff_0, ptr @of_multE_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi i64 [ %14, %13 ], [ 0, %9 ]
  %12 = icmp slt i64 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @passthrough(ptr @of_cosD_buff_1, ptr @of_multE_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @passthrough(ptr @of_cosD_buff_0, ptr @of_multE_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  %14 = add i64 %11, 2
  br label %10

15:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @passthrough(ptr @of_cosD_buff_1, ptr @of_multE_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  %16 = add i64 %2, 2
  br label %1

17:                                               ; preds = %20, %1
  %18 = phi i64 [ %21, %20 ], [ 0, %1 ]
  %19 = icmp slt i64 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @passthrough(ptr @of_cosD_buff_0, ptr @of_multE_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @passthrough(ptr @of_cosD_buff_1, ptr @of_multE_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  %21 = add i64 %18, 2
  br label %17

22:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 48, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_multE_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @passthrough(ptr @of_cosD_buff_0, ptr @of_multE_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 49, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  ret void
}

define void @core_0_3() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_scaleC_buff_0, ptr @of_cosD_buff_0, ptr @in0_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_scaleC_buff_1, ptr @of_cosD_buff_1, ptr @in0_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_scaleC_buff_0, ptr @of_cosD_buff_0, ptr @in0_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_scaleC_buff_1, ptr @of_cosD_buff_1, ptr @in0_cons_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_scaleC_buff_0, ptr @of_cosD_buff_0, ptr @in0_cons_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_scaleC_buff_1, ptr @of_cosD_buff_1, ptr @in0_cons_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 0, %18 ]
  %21 = icmp slt i64 %20, 8
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_scaleC_buff_0, ptr @of_cosD_buff_0, ptr @in0_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_scaleC_buff_1, ptr @of_cosD_buff_1, ptr @in0_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %23 = add i64 %20, 2
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_cosD_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @in0_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @of_scaleC_buff_0, ptr @of_cosD_buff_0, ptr @in0_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_1_3() {
  br label %1

1:                                                ; preds = %15, %0
  %2 = phi i64 [ %16, %15 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %17

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addB0_buff_0, ptr @addB1_buff_0, ptr @of_scaleC_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 19, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addB0_buff_1, ptr @addB1_buff_1, ptr @of_scaleC_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 19, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addB0_buff_0, ptr @addB1_buff_0, ptr @of_scaleC_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 19, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi i64 [ %14, %13 ], [ 0, %9 ]
  %12 = icmp slt i64 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addB0_buff_1, ptr @addB1_buff_1, ptr @of_scaleC_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 19, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addB0_buff_0, ptr @addB1_buff_0, ptr @of_scaleC_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 19, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %14 = add i64 %11, 2
  br label %10

15:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addB0_buff_1, ptr @addB1_buff_1, ptr @of_scaleC_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 19, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %16 = add i64 %2, 2
  br label %1

17:                                               ; preds = %20, %1
  %18 = phi i64 [ %21, %20 ], [ 0, %1 ]
  %19 = icmp slt i64 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addB0_buff_0, ptr @addB1_buff_0, ptr @of_scaleC_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 19, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addB0_buff_1, ptr @addB1_buff_1, ptr @of_scaleC_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 19, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add i64 %18, 2
  br label %17

22:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 18, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @of_scaleC_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addB0_buff_0, ptr @addB1_buff_0, ptr @of_scaleC_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 19, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_2_3() {
  br label %1

1:                                                ; preds = %15, %0
  %2 = phi i64 [ %16, %15 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %17

4:                                                ; preds = %7, %1
  %5 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addA0_buff_0, ptr @addA1_cons_buff_0, ptr @addB1_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addA0_buff_1, ptr @addA1_cons_buff_1, ptr @addB1_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %8 = add i64 %5, 2
  br label %4

9:                                                ; preds = %4
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addA0_buff_0, ptr @addA1_cons_buff_0, ptr @addB1_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  br label %10

10:                                               ; preds = %13, %9
  %11 = phi i64 [ %14, %13 ], [ 0, %9 ]
  %12 = icmp slt i64 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addA0_buff_1, ptr @addA1_cons_buff_1, ptr @addB1_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addA0_buff_0, ptr @addA1_cons_buff_0, ptr @addB1_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %14 = add i64 %11, 2
  br label %10

15:                                               ; preds = %10
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addA0_buff_1, ptr @addA1_cons_buff_1, ptr @addB1_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %16 = add i64 %2, 2
  br label %1

17:                                               ; preds = %20, %1
  %18 = phi i64 [ %21, %20 ], [ 0, %1 ]
  %19 = icmp slt i64 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addA0_buff_0, ptr @addA1_cons_buff_0, ptr @addB1_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addA0_buff_1, ptr @addA1_cons_buff_1, ptr @addB1_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %21 = add i64 %18, 2
  br label %17

22:                                               ; preds = %17
  call void @llvm.aie2.acquire(i32 5, i32 -1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 16, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @vector_add_aie_scalar(ptr @addA0_buff_0, ptr @addA1_cons_buff_0, ptr @addB1_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 17, i32 1)
  call void @llvm.aie2.release(i32 4, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  ret void
}

define void @core_3_2() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @w_cons_buff_0, ptr @addA1_buff_0, ptr @n_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @w_cons_buff_1, ptr @addA1_buff_1, ptr @n_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @w_cons_buff_0, ptr @addA1_buff_0, ptr @n_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @w_cons_buff_1, ptr @addA1_buff_1, ptr @n_cons_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @w_cons_buff_0, ptr @addA1_buff_0, ptr @n_cons_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @w_cons_buff_1, ptr @addA1_buff_1, ptr @n_cons_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 0, %18 ]
  %21 = icmp slt i64 %20, 8
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @w_cons_buff_0, ptr @addA1_buff_0, ptr @n_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @w_cons_buff_1, ptr @addA1_buff_1, ptr @n_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %23 = add i64 %20, 2
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA1_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @n_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @w_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @w_cons_buff_0, ptr @addA1_buff_0, ptr @n_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_2_2() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @v_cons_buff_0, ptr @addA0_buff_0, ptr @m_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @v_cons_buff_1, ptr @addA0_buff_1, ptr @m_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @v_cons_buff_0, ptr @addA0_buff_0, ptr @m_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @v_cons_buff_1, ptr @addA0_buff_1, ptr @m_cons_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @v_cons_buff_0, ptr @addA0_buff_0, ptr @m_cons_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @v_cons_buff_1, ptr @addA0_buff_1, ptr @m_cons_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 0, %18 ]
  %21 = icmp slt i64 %20, 8
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @v_cons_buff_0, ptr @addA0_buff_0, ptr @m_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @v_cons_buff_1, ptr @addA0_buff_1, ptr @m_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %23 = add i64 %20, 2
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addA0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @m_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @v_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @v_cons_buff_0, ptr @addA0_buff_0, ptr @m_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

define void @core_1_2() {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %3 = icmp slt i64 %2, 9223372036854775806
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi i64 [ %9, %8 ], [ 0, %4 ]
  %7 = icmp slt i64 %6, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @u_cons_buff_0, ptr @addB0_buff_0, ptr @l_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @u_cons_buff_1, ptr @addB0_buff_1, ptr @l_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %9 = add i64 %6, 2
  br label %5

10:                                               ; preds = %5
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @u_cons_buff_0, ptr @addB0_buff_0, ptr @l_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %11

11:                                               ; preds = %14, %10
  %12 = phi i64 [ %15, %14 ], [ 0, %10 ]
  %13 = icmp slt i64 %12, 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @u_cons_buff_1, ptr @addB0_buff_1, ptr @l_cons_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @u_cons_buff_0, ptr @addB0_buff_0, ptr @l_cons_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %15 = add i64 %12, 2
  br label %11

16:                                               ; preds = %11
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @u_cons_buff_1, ptr @addB0_buff_1, ptr @l_cons_buff_1, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  %17 = add i64 %2, 2
  br label %1

18:                                               ; preds = %1
  call void @llvm.aie2.acquire(i32 51, i32 -1)
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i64 [ %23, %22 ], [ 0, %18 ]
  %21 = icmp slt i64 %20, 8
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @u_cons_buff_0, ptr @addB0_buff_0, ptr @l_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_1, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_1, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @u_cons_buff_1, ptr @addB0_buff_1, ptr @l_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  %23 = add i64 %20, 2
  br label %19

24:                                               ; preds = %19
  call void @llvm.aie2.acquire(i32 49, i32 -1)
  call void @llvm.aie2.acquire(i32 52, i32 -1)
  call void @llvm.assume(i1 true) [ "align"(ptr @addB0_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @l_cons_buff_0, i64 32) ]
  call void @llvm.assume(i1 true) [ "align"(ptr @u_cons_buff_0, i64 32) ]
  call void @vector_scalar_mul_aie_scalar(ptr @u_cons_buff_0, ptr @addB0_buff_0, ptr @l_cons_buff_0, i16 1024)
  call void @llvm.aie2.release(i32 53, i32 1)
  call void @llvm.aie2.release(i32 48, i32 1)
  call void @llvm.aie2.release(i32 50, i32 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
