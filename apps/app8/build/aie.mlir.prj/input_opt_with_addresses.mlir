module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<3072 x f32>
  llvm.mlir.global external @in3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<3 x f32>
  llvm.mlir.global external @u_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @u_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @v_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @v_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @w_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @w_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @l_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @l_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @m_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @m_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @n_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @n_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @addA0_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addA0_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addA1_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addA1_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addA1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addA1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addB0_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addB0_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addB1_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addB1_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_scaleC_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_scaleC_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_cosD_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_cosD_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_multE_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_multE_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_meanF_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_meanF_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_meanG_buff_9() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @of_meanG_buff_8() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @of_meanG_buff_7() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @of_meanG_buff_6() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @of_meanG_buff_5() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @of_meanG_buff_4() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @of_meanG_buff_3() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @of_meanG_buff_2() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @of_meanG_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @of_meanG_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @out_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @out_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.func @debug_i32(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.put.ms(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.get.ss() -> !llvm.struct<(i32, i32)> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.mcd.write.vec(vector<16xi32>, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.scd.read.vec(i32) -> vector<16xi32> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.acquire(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.release(i32, i32) attributes {sym_visibility = "private"}
  llvm.mlir.global external @out_cons() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @out() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @of_meanG() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @of_meanF() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_multE() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_cosD() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_scaleC() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addB1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addB0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addA1_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addA1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @addA0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @n_cons() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @n() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @m_cons() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @m() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @l_cons() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @l() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @w_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @w() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @v_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @v() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @u_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @u() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in3_cons() {addr_space = 0 : i32} : !llvm.array<3 x f32>
  llvm.mlir.global external @in3() {addr_space = 0 : i32} : !llvm.array<3 x f32>
  llvm.mlir.global external @in2_cons() {addr_space = 0 : i32} : !llvm.array<3072 x f32>
  llvm.mlir.global external @in2() {addr_space = 0 : i32} : !llvm.array<3072 x f32>
  llvm.mlir.global external @in1_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in0_cons() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.func @vector_scalar_mul_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @passthrough(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @vector_add_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @vector_mult_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @mean(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @cos_float_1024(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @core_3_4() {
    %0 = llvm.mlir.addressof @out_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_meanG_buff_9 : !llvm.ptr
    %2 = llvm.mlir.addressof @out_buff_0 : !llvm.ptr
    %3 = llvm.mlir.addressof @of_meanG_buff_8 : !llvm.ptr
    %4 = llvm.mlir.addressof @of_meanG_buff_7 : !llvm.ptr
    %5 = llvm.mlir.addressof @of_meanG_buff_6 : !llvm.ptr
    %6 = llvm.mlir.addressof @of_meanG_buff_5 : !llvm.ptr
    %7 = llvm.mlir.addressof @of_meanG_buff_4 : !llvm.ptr
    %8 = llvm.mlir.addressof @of_meanG_buff_3 : !llvm.ptr
    %9 = llvm.mlir.addressof @of_meanG_buff_2 : !llvm.ptr
    %10 = llvm.mlir.addressof @of_meanG_buff_1 : !llvm.ptr
    %11 = llvm.mlir.constant(32 : index) : i64
    %12 = llvm.mlir.constant(true) : i1
    %13 = llvm.mlir.addressof @of_meanG_buff_0 : !llvm.ptr
    %14 = llvm.mlir.constant(16 : i32) : i32
    %15 = llvm.mlir.constant(49 : i32) : i32
    %16 = llvm.mlir.constant(48 : i32) : i32
    %17 = llvm.mlir.constant(17 : i32) : i32
    %18 = llvm.mlir.constant(9 : i32) : i32
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.mlir.constant(9.000000e+00 : f32) : f32
    %21 = llvm.mlir.constant(-1 : i32) : i32
    %22 = llvm.mlir.constant(-9 : i32) : i32
    %23 = llvm.mlir.constant(0 : index) : i64
    %24 = llvm.mlir.constant(9223372036854775800 : index) : i64
    %25 = llvm.mlir.constant(10 : index) : i64
    llvm.br ^bb1(%23 : i64)
  ^bb1(%26: i64):  // 2 preds: ^bb0, ^bb2
    %27 = llvm.icmp "slt" %26, %24 : i64
    llvm.cond_br %27, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    %28 = llvm.getelementptr %13[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %29 = llvm.load %28 : !llvm.ptr -> f32
    %30 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %31 = llvm.load %30 : !llvm.ptr -> f32
    %32 = llvm.fadd %29, %31 : f32
    %33 = llvm.getelementptr %9[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    %34 = llvm.load %33 : !llvm.ptr -> f32
    %35 = llvm.fadd %32, %34 : f32
    %36 = llvm.getelementptr %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    %37 = llvm.load %36 : !llvm.ptr -> f32
    %38 = llvm.fadd %35, %37 : f32
    %39 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    %40 = llvm.load %39 : !llvm.ptr -> f32
    %41 = llvm.fadd %38, %40 : f32
    %42 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%42, %11 : !llvm.ptr, i64)] : i1
    %43 = llvm.load %42 : !llvm.ptr -> f32
    %44 = llvm.fadd %41, %43 : f32
    %45 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%45, %11 : !llvm.ptr, i64)] : i1
    %46 = llvm.load %45 : !llvm.ptr -> f32
    %47 = llvm.fadd %44, %46 : f32
    %48 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    %49 = llvm.load %48 : !llvm.ptr -> f32
    %50 = llvm.fadd %47, %49 : f32
    %51 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%51, %11 : !llvm.ptr, i64)] : i1
    %52 = llvm.load %51 : !llvm.ptr -> f32
    %53 = llvm.fadd %50, %52 : f32
    %54 = llvm.fdiv %53, %20 : f32
    %55 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%55, %11 : !llvm.ptr, i64)] : i1
    llvm.store %54, %55 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    %56 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%56, %11 : !llvm.ptr, i64)] : i1
    %57 = llvm.load %56 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %58 = llvm.load %28 : !llvm.ptr -> f32
    %59 = llvm.fadd %57, %58 : f32
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %60 = llvm.load %30 : !llvm.ptr -> f32
    %61 = llvm.fadd %59, %60 : f32
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    %62 = llvm.load %33 : !llvm.ptr -> f32
    %63 = llvm.fadd %61, %62 : f32
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    %64 = llvm.load %36 : !llvm.ptr -> f32
    %65 = llvm.fadd %63, %64 : f32
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    %66 = llvm.load %39 : !llvm.ptr -> f32
    %67 = llvm.fadd %65, %66 : f32
    llvm.intr.assume %12 ["align"(%42, %11 : !llvm.ptr, i64)] : i1
    %68 = llvm.load %42 : !llvm.ptr -> f32
    %69 = llvm.fadd %67, %68 : f32
    llvm.intr.assume %12 ["align"(%45, %11 : !llvm.ptr, i64)] : i1
    %70 = llvm.load %45 : !llvm.ptr -> f32
    %71 = llvm.fadd %69, %70 : f32
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    %72 = llvm.load %48 : !llvm.ptr -> f32
    %73 = llvm.fadd %71, %72 : f32
    %74 = llvm.fdiv %73, %20 : f32
    %75 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%75, %11 : !llvm.ptr, i64)] : i1
    llvm.store %74, %75 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%51, %11 : !llvm.ptr, i64)] : i1
    %76 = llvm.load %51 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%56, %11 : !llvm.ptr, i64)] : i1
    %77 = llvm.load %56 : !llvm.ptr -> f32
    %78 = llvm.fadd %76, %77 : f32
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %79 = llvm.load %28 : !llvm.ptr -> f32
    %80 = llvm.fadd %78, %79 : f32
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %81 = llvm.load %30 : !llvm.ptr -> f32
    %82 = llvm.fadd %80, %81 : f32
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    %83 = llvm.load %33 : !llvm.ptr -> f32
    %84 = llvm.fadd %82, %83 : f32
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    %85 = llvm.load %36 : !llvm.ptr -> f32
    %86 = llvm.fadd %84, %85 : f32
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    %87 = llvm.load %39 : !llvm.ptr -> f32
    %88 = llvm.fadd %86, %87 : f32
    llvm.intr.assume %12 ["align"(%42, %11 : !llvm.ptr, i64)] : i1
    %89 = llvm.load %42 : !llvm.ptr -> f32
    %90 = llvm.fadd %88, %89 : f32
    llvm.intr.assume %12 ["align"(%45, %11 : !llvm.ptr, i64)] : i1
    %91 = llvm.load %45 : !llvm.ptr -> f32
    %92 = llvm.fadd %90, %91 : f32
    %93 = llvm.fdiv %92, %20 : f32
    llvm.intr.assume %12 ["align"(%55, %11 : !llvm.ptr, i64)] : i1
    llvm.store %93, %55 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    %94 = llvm.load %48 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%51, %11 : !llvm.ptr, i64)] : i1
    %95 = llvm.load %51 : !llvm.ptr -> f32
    %96 = llvm.fadd %94, %95 : f32
    llvm.intr.assume %12 ["align"(%56, %11 : !llvm.ptr, i64)] : i1
    %97 = llvm.load %56 : !llvm.ptr -> f32
    %98 = llvm.fadd %96, %97 : f32
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %99 = llvm.load %28 : !llvm.ptr -> f32
    %100 = llvm.fadd %98, %99 : f32
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %101 = llvm.load %30 : !llvm.ptr -> f32
    %102 = llvm.fadd %100, %101 : f32
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    %103 = llvm.load %33 : !llvm.ptr -> f32
    %104 = llvm.fadd %102, %103 : f32
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    %105 = llvm.load %36 : !llvm.ptr -> f32
    %106 = llvm.fadd %104, %105 : f32
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    %107 = llvm.load %39 : !llvm.ptr -> f32
    %108 = llvm.fadd %106, %107 : f32
    llvm.intr.assume %12 ["align"(%42, %11 : !llvm.ptr, i64)] : i1
    %109 = llvm.load %42 : !llvm.ptr -> f32
    %110 = llvm.fadd %108, %109 : f32
    %111 = llvm.fdiv %110, %20 : f32
    llvm.intr.assume %12 ["align"(%75, %11 : !llvm.ptr, i64)] : i1
    llvm.store %111, %75 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%45, %11 : !llvm.ptr, i64)] : i1
    %112 = llvm.load %45 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    %113 = llvm.load %48 : !llvm.ptr -> f32
    %114 = llvm.fadd %112, %113 : f32
    llvm.intr.assume %12 ["align"(%51, %11 : !llvm.ptr, i64)] : i1
    %115 = llvm.load %51 : !llvm.ptr -> f32
    %116 = llvm.fadd %114, %115 : f32
    llvm.intr.assume %12 ["align"(%56, %11 : !llvm.ptr, i64)] : i1
    %117 = llvm.load %56 : !llvm.ptr -> f32
    %118 = llvm.fadd %116, %117 : f32
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %119 = llvm.load %28 : !llvm.ptr -> f32
    %120 = llvm.fadd %118, %119 : f32
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %121 = llvm.load %30 : !llvm.ptr -> f32
    %122 = llvm.fadd %120, %121 : f32
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    %123 = llvm.load %33 : !llvm.ptr -> f32
    %124 = llvm.fadd %122, %123 : f32
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    %125 = llvm.load %36 : !llvm.ptr -> f32
    %126 = llvm.fadd %124, %125 : f32
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    %127 = llvm.load %39 : !llvm.ptr -> f32
    %128 = llvm.fadd %126, %127 : f32
    %129 = llvm.fdiv %128, %20 : f32
    llvm.intr.assume %12 ["align"(%55, %11 : !llvm.ptr, i64)] : i1
    llvm.store %129, %55 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%42, %11 : !llvm.ptr, i64)] : i1
    %130 = llvm.load %42 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%45, %11 : !llvm.ptr, i64)] : i1
    %131 = llvm.load %45 : !llvm.ptr -> f32
    %132 = llvm.fadd %130, %131 : f32
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    %133 = llvm.load %48 : !llvm.ptr -> f32
    %134 = llvm.fadd %132, %133 : f32
    llvm.intr.assume %12 ["align"(%51, %11 : !llvm.ptr, i64)] : i1
    %135 = llvm.load %51 : !llvm.ptr -> f32
    %136 = llvm.fadd %134, %135 : f32
    llvm.intr.assume %12 ["align"(%56, %11 : !llvm.ptr, i64)] : i1
    %137 = llvm.load %56 : !llvm.ptr -> f32
    %138 = llvm.fadd %136, %137 : f32
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %139 = llvm.load %28 : !llvm.ptr -> f32
    %140 = llvm.fadd %138, %139 : f32
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %141 = llvm.load %30 : !llvm.ptr -> f32
    %142 = llvm.fadd %140, %141 : f32
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    %143 = llvm.load %33 : !llvm.ptr -> f32
    %144 = llvm.fadd %142, %143 : f32
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    %145 = llvm.load %36 : !llvm.ptr -> f32
    %146 = llvm.fadd %144, %145 : f32
    %147 = llvm.fdiv %146, %20 : f32
    llvm.intr.assume %12 ["align"(%75, %11 : !llvm.ptr, i64)] : i1
    llvm.store %147, %75 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    %148 = llvm.load %39 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%42, %11 : !llvm.ptr, i64)] : i1
    %149 = llvm.load %42 : !llvm.ptr -> f32
    %150 = llvm.fadd %148, %149 : f32
    llvm.intr.assume %12 ["align"(%45, %11 : !llvm.ptr, i64)] : i1
    %151 = llvm.load %45 : !llvm.ptr -> f32
    %152 = llvm.fadd %150, %151 : f32
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    %153 = llvm.load %48 : !llvm.ptr -> f32
    %154 = llvm.fadd %152, %153 : f32
    llvm.intr.assume %12 ["align"(%51, %11 : !llvm.ptr, i64)] : i1
    %155 = llvm.load %51 : !llvm.ptr -> f32
    %156 = llvm.fadd %154, %155 : f32
    llvm.intr.assume %12 ["align"(%56, %11 : !llvm.ptr, i64)] : i1
    %157 = llvm.load %56 : !llvm.ptr -> f32
    %158 = llvm.fadd %156, %157 : f32
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %159 = llvm.load %28 : !llvm.ptr -> f32
    %160 = llvm.fadd %158, %159 : f32
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %161 = llvm.load %30 : !llvm.ptr -> f32
    %162 = llvm.fadd %160, %161 : f32
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    %163 = llvm.load %33 : !llvm.ptr -> f32
    %164 = llvm.fadd %162, %163 : f32
    %165 = llvm.fdiv %164, %20 : f32
    llvm.intr.assume %12 ["align"(%55, %11 : !llvm.ptr, i64)] : i1
    llvm.store %165, %55 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    %166 = llvm.load %36 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    %167 = llvm.load %39 : !llvm.ptr -> f32
    %168 = llvm.fadd %166, %167 : f32
    llvm.intr.assume %12 ["align"(%42, %11 : !llvm.ptr, i64)] : i1
    %169 = llvm.load %42 : !llvm.ptr -> f32
    %170 = llvm.fadd %168, %169 : f32
    llvm.intr.assume %12 ["align"(%45, %11 : !llvm.ptr, i64)] : i1
    %171 = llvm.load %45 : !llvm.ptr -> f32
    %172 = llvm.fadd %170, %171 : f32
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    %173 = llvm.load %48 : !llvm.ptr -> f32
    %174 = llvm.fadd %172, %173 : f32
    llvm.intr.assume %12 ["align"(%51, %11 : !llvm.ptr, i64)] : i1
    %175 = llvm.load %51 : !llvm.ptr -> f32
    %176 = llvm.fadd %174, %175 : f32
    llvm.intr.assume %12 ["align"(%56, %11 : !llvm.ptr, i64)] : i1
    %177 = llvm.load %56 : !llvm.ptr -> f32
    %178 = llvm.fadd %176, %177 : f32
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %179 = llvm.load %28 : !llvm.ptr -> f32
    %180 = llvm.fadd %178, %179 : f32
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %181 = llvm.load %30 : !llvm.ptr -> f32
    %182 = llvm.fadd %180, %181 : f32
    %183 = llvm.fdiv %182, %20 : f32
    llvm.intr.assume %12 ["align"(%75, %11 : !llvm.ptr, i64)] : i1
    llvm.store %183, %75 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    %184 = llvm.load %33 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    %185 = llvm.load %36 : !llvm.ptr -> f32
    %186 = llvm.fadd %184, %185 : f32
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    %187 = llvm.load %39 : !llvm.ptr -> f32
    %188 = llvm.fadd %186, %187 : f32
    llvm.intr.assume %12 ["align"(%42, %11 : !llvm.ptr, i64)] : i1
    %189 = llvm.load %42 : !llvm.ptr -> f32
    %190 = llvm.fadd %188, %189 : f32
    llvm.intr.assume %12 ["align"(%45, %11 : !llvm.ptr, i64)] : i1
    %191 = llvm.load %45 : !llvm.ptr -> f32
    %192 = llvm.fadd %190, %191 : f32
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    %193 = llvm.load %48 : !llvm.ptr -> f32
    %194 = llvm.fadd %192, %193 : f32
    llvm.intr.assume %12 ["align"(%51, %11 : !llvm.ptr, i64)] : i1
    %195 = llvm.load %51 : !llvm.ptr -> f32
    %196 = llvm.fadd %194, %195 : f32
    llvm.intr.assume %12 ["align"(%56, %11 : !llvm.ptr, i64)] : i1
    %197 = llvm.load %56 : !llvm.ptr -> f32
    %198 = llvm.fadd %196, %197 : f32
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %199 = llvm.load %28 : !llvm.ptr -> f32
    %200 = llvm.fadd %198, %199 : f32
    %201 = llvm.fdiv %200, %20 : f32
    llvm.intr.assume %12 ["align"(%55, %11 : !llvm.ptr, i64)] : i1
    llvm.store %201, %55 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %202 = llvm.load %30 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    %203 = llvm.load %33 : !llvm.ptr -> f32
    %204 = llvm.fadd %202, %203 : f32
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    %205 = llvm.load %36 : !llvm.ptr -> f32
    %206 = llvm.fadd %204, %205 : f32
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    %207 = llvm.load %39 : !llvm.ptr -> f32
    %208 = llvm.fadd %206, %207 : f32
    llvm.intr.assume %12 ["align"(%42, %11 : !llvm.ptr, i64)] : i1
    %209 = llvm.load %42 : !llvm.ptr -> f32
    %210 = llvm.fadd %208, %209 : f32
    llvm.intr.assume %12 ["align"(%45, %11 : !llvm.ptr, i64)] : i1
    %211 = llvm.load %45 : !llvm.ptr -> f32
    %212 = llvm.fadd %210, %211 : f32
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    %213 = llvm.load %48 : !llvm.ptr -> f32
    %214 = llvm.fadd %212, %213 : f32
    llvm.intr.assume %12 ["align"(%51, %11 : !llvm.ptr, i64)] : i1
    %215 = llvm.load %51 : !llvm.ptr -> f32
    %216 = llvm.fadd %214, %215 : f32
    llvm.intr.assume %12 ["align"(%56, %11 : !llvm.ptr, i64)] : i1
    %217 = llvm.load %56 : !llvm.ptr -> f32
    %218 = llvm.fadd %216, %217 : f32
    %219 = llvm.fdiv %218, %20 : f32
    llvm.intr.assume %12 ["align"(%75, %11 : !llvm.ptr, i64)] : i1
    llvm.store %219, %75 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    %220 = llvm.add %26, %25 : i64
    llvm.br ^bb1(%220 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    %221 = llvm.getelementptr %13[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%221, %11 : !llvm.ptr, i64)] : i1
    %222 = llvm.load %221 : !llvm.ptr -> f32
    %223 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%223, %11 : !llvm.ptr, i64)] : i1
    %224 = llvm.load %223 : !llvm.ptr -> f32
    %225 = llvm.fadd %222, %224 : f32
    %226 = llvm.getelementptr %9[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%226, %11 : !llvm.ptr, i64)] : i1
    %227 = llvm.load %226 : !llvm.ptr -> f32
    %228 = llvm.fadd %225, %227 : f32
    %229 = llvm.getelementptr %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%229, %11 : !llvm.ptr, i64)] : i1
    %230 = llvm.load %229 : !llvm.ptr -> f32
    %231 = llvm.fadd %228, %230 : f32
    %232 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%232, %11 : !llvm.ptr, i64)] : i1
    %233 = llvm.load %232 : !llvm.ptr -> f32
    %234 = llvm.fadd %231, %233 : f32
    %235 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%235, %11 : !llvm.ptr, i64)] : i1
    %236 = llvm.load %235 : !llvm.ptr -> f32
    %237 = llvm.fadd %234, %236 : f32
    %238 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%238, %11 : !llvm.ptr, i64)] : i1
    %239 = llvm.load %238 : !llvm.ptr -> f32
    %240 = llvm.fadd %237, %239 : f32
    %241 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%241, %11 : !llvm.ptr, i64)] : i1
    %242 = llvm.load %241 : !llvm.ptr -> f32
    %243 = llvm.fadd %240, %242 : f32
    %244 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%244, %11 : !llvm.ptr, i64)] : i1
    %245 = llvm.load %244 : !llvm.ptr -> f32
    %246 = llvm.fadd %243, %245 : f32
    %247 = llvm.fdiv %246, %20 : f32
    %248 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%248, %11 : !llvm.ptr, i64)] : i1
    llvm.store %247, %248 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    %249 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%249, %11 : !llvm.ptr, i64)] : i1
    %250 = llvm.load %249 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%221, %11 : !llvm.ptr, i64)] : i1
    %251 = llvm.load %221 : !llvm.ptr -> f32
    %252 = llvm.fadd %250, %251 : f32
    llvm.intr.assume %12 ["align"(%223, %11 : !llvm.ptr, i64)] : i1
    %253 = llvm.load %223 : !llvm.ptr -> f32
    %254 = llvm.fadd %252, %253 : f32
    llvm.intr.assume %12 ["align"(%226, %11 : !llvm.ptr, i64)] : i1
    %255 = llvm.load %226 : !llvm.ptr -> f32
    %256 = llvm.fadd %254, %255 : f32
    llvm.intr.assume %12 ["align"(%229, %11 : !llvm.ptr, i64)] : i1
    %257 = llvm.load %229 : !llvm.ptr -> f32
    %258 = llvm.fadd %256, %257 : f32
    llvm.intr.assume %12 ["align"(%232, %11 : !llvm.ptr, i64)] : i1
    %259 = llvm.load %232 : !llvm.ptr -> f32
    %260 = llvm.fadd %258, %259 : f32
    llvm.intr.assume %12 ["align"(%235, %11 : !llvm.ptr, i64)] : i1
    %261 = llvm.load %235 : !llvm.ptr -> f32
    %262 = llvm.fadd %260, %261 : f32
    llvm.intr.assume %12 ["align"(%238, %11 : !llvm.ptr, i64)] : i1
    %263 = llvm.load %238 : !llvm.ptr -> f32
    %264 = llvm.fadd %262, %263 : f32
    llvm.intr.assume %12 ["align"(%241, %11 : !llvm.ptr, i64)] : i1
    %265 = llvm.load %241 : !llvm.ptr -> f32
    %266 = llvm.fadd %264, %265 : f32
    %267 = llvm.fdiv %266, %20 : f32
    %268 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%268, %11 : !llvm.ptr, i64)] : i1
    llvm.store %267, %268 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%244, %11 : !llvm.ptr, i64)] : i1
    %269 = llvm.load %244 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%249, %11 : !llvm.ptr, i64)] : i1
    %270 = llvm.load %249 : !llvm.ptr -> f32
    %271 = llvm.fadd %269, %270 : f32
    llvm.intr.assume %12 ["align"(%221, %11 : !llvm.ptr, i64)] : i1
    %272 = llvm.load %221 : !llvm.ptr -> f32
    %273 = llvm.fadd %271, %272 : f32
    llvm.intr.assume %12 ["align"(%223, %11 : !llvm.ptr, i64)] : i1
    %274 = llvm.load %223 : !llvm.ptr -> f32
    %275 = llvm.fadd %273, %274 : f32
    llvm.intr.assume %12 ["align"(%226, %11 : !llvm.ptr, i64)] : i1
    %276 = llvm.load %226 : !llvm.ptr -> f32
    %277 = llvm.fadd %275, %276 : f32
    llvm.intr.assume %12 ["align"(%229, %11 : !llvm.ptr, i64)] : i1
    %278 = llvm.load %229 : !llvm.ptr -> f32
    %279 = llvm.fadd %277, %278 : f32
    llvm.intr.assume %12 ["align"(%232, %11 : !llvm.ptr, i64)] : i1
    %280 = llvm.load %232 : !llvm.ptr -> f32
    %281 = llvm.fadd %279, %280 : f32
    llvm.intr.assume %12 ["align"(%235, %11 : !llvm.ptr, i64)] : i1
    %282 = llvm.load %235 : !llvm.ptr -> f32
    %283 = llvm.fadd %281, %282 : f32
    llvm.intr.assume %12 ["align"(%238, %11 : !llvm.ptr, i64)] : i1
    %284 = llvm.load %238 : !llvm.ptr -> f32
    %285 = llvm.fadd %283, %284 : f32
    %286 = llvm.fdiv %285, %20 : f32
    llvm.intr.assume %12 ["align"(%248, %11 : !llvm.ptr, i64)] : i1
    llvm.store %286, %248 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%241, %11 : !llvm.ptr, i64)] : i1
    %287 = llvm.load %241 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%244, %11 : !llvm.ptr, i64)] : i1
    %288 = llvm.load %244 : !llvm.ptr -> f32
    %289 = llvm.fadd %287, %288 : f32
    llvm.intr.assume %12 ["align"(%249, %11 : !llvm.ptr, i64)] : i1
    %290 = llvm.load %249 : !llvm.ptr -> f32
    %291 = llvm.fadd %289, %290 : f32
    llvm.intr.assume %12 ["align"(%221, %11 : !llvm.ptr, i64)] : i1
    %292 = llvm.load %221 : !llvm.ptr -> f32
    %293 = llvm.fadd %291, %292 : f32
    llvm.intr.assume %12 ["align"(%223, %11 : !llvm.ptr, i64)] : i1
    %294 = llvm.load %223 : !llvm.ptr -> f32
    %295 = llvm.fadd %293, %294 : f32
    llvm.intr.assume %12 ["align"(%226, %11 : !llvm.ptr, i64)] : i1
    %296 = llvm.load %226 : !llvm.ptr -> f32
    %297 = llvm.fadd %295, %296 : f32
    llvm.intr.assume %12 ["align"(%229, %11 : !llvm.ptr, i64)] : i1
    %298 = llvm.load %229 : !llvm.ptr -> f32
    %299 = llvm.fadd %297, %298 : f32
    llvm.intr.assume %12 ["align"(%232, %11 : !llvm.ptr, i64)] : i1
    %300 = llvm.load %232 : !llvm.ptr -> f32
    %301 = llvm.fadd %299, %300 : f32
    llvm.intr.assume %12 ["align"(%235, %11 : !llvm.ptr, i64)] : i1
    %302 = llvm.load %235 : !llvm.ptr -> f32
    %303 = llvm.fadd %301, %302 : f32
    %304 = llvm.fdiv %303, %20 : f32
    llvm.intr.assume %12 ["align"(%268, %11 : !llvm.ptr, i64)] : i1
    llvm.store %304, %268 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%238, %11 : !llvm.ptr, i64)] : i1
    %305 = llvm.load %238 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%241, %11 : !llvm.ptr, i64)] : i1
    %306 = llvm.load %241 : !llvm.ptr -> f32
    %307 = llvm.fadd %305, %306 : f32
    llvm.intr.assume %12 ["align"(%244, %11 : !llvm.ptr, i64)] : i1
    %308 = llvm.load %244 : !llvm.ptr -> f32
    %309 = llvm.fadd %307, %308 : f32
    llvm.intr.assume %12 ["align"(%249, %11 : !llvm.ptr, i64)] : i1
    %310 = llvm.load %249 : !llvm.ptr -> f32
    %311 = llvm.fadd %309, %310 : f32
    llvm.intr.assume %12 ["align"(%221, %11 : !llvm.ptr, i64)] : i1
    %312 = llvm.load %221 : !llvm.ptr -> f32
    %313 = llvm.fadd %311, %312 : f32
    llvm.intr.assume %12 ["align"(%223, %11 : !llvm.ptr, i64)] : i1
    %314 = llvm.load %223 : !llvm.ptr -> f32
    %315 = llvm.fadd %313, %314 : f32
    llvm.intr.assume %12 ["align"(%226, %11 : !llvm.ptr, i64)] : i1
    %316 = llvm.load %226 : !llvm.ptr -> f32
    %317 = llvm.fadd %315, %316 : f32
    llvm.intr.assume %12 ["align"(%229, %11 : !llvm.ptr, i64)] : i1
    %318 = llvm.load %229 : !llvm.ptr -> f32
    %319 = llvm.fadd %317, %318 : f32
    llvm.intr.assume %12 ["align"(%232, %11 : !llvm.ptr, i64)] : i1
    %320 = llvm.load %232 : !llvm.ptr -> f32
    %321 = llvm.fadd %319, %320 : f32
    %322 = llvm.fdiv %321, %20 : f32
    llvm.intr.assume %12 ["align"(%248, %11 : !llvm.ptr, i64)] : i1
    llvm.store %322, %248 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%235, %11 : !llvm.ptr, i64)] : i1
    %323 = llvm.load %235 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%238, %11 : !llvm.ptr, i64)] : i1
    %324 = llvm.load %238 : !llvm.ptr -> f32
    %325 = llvm.fadd %323, %324 : f32
    llvm.intr.assume %12 ["align"(%241, %11 : !llvm.ptr, i64)] : i1
    %326 = llvm.load %241 : !llvm.ptr -> f32
    %327 = llvm.fadd %325, %326 : f32
    llvm.intr.assume %12 ["align"(%244, %11 : !llvm.ptr, i64)] : i1
    %328 = llvm.load %244 : !llvm.ptr -> f32
    %329 = llvm.fadd %327, %328 : f32
    llvm.intr.assume %12 ["align"(%249, %11 : !llvm.ptr, i64)] : i1
    %330 = llvm.load %249 : !llvm.ptr -> f32
    %331 = llvm.fadd %329, %330 : f32
    llvm.intr.assume %12 ["align"(%221, %11 : !llvm.ptr, i64)] : i1
    %332 = llvm.load %221 : !llvm.ptr -> f32
    %333 = llvm.fadd %331, %332 : f32
    llvm.intr.assume %12 ["align"(%223, %11 : !llvm.ptr, i64)] : i1
    %334 = llvm.load %223 : !llvm.ptr -> f32
    %335 = llvm.fadd %333, %334 : f32
    llvm.intr.assume %12 ["align"(%226, %11 : !llvm.ptr, i64)] : i1
    %336 = llvm.load %226 : !llvm.ptr -> f32
    %337 = llvm.fadd %335, %336 : f32
    llvm.intr.assume %12 ["align"(%229, %11 : !llvm.ptr, i64)] : i1
    %338 = llvm.load %229 : !llvm.ptr -> f32
    %339 = llvm.fadd %337, %338 : f32
    %340 = llvm.fdiv %339, %20 : f32
    llvm.intr.assume %12 ["align"(%268, %11 : !llvm.ptr, i64)] : i1
    llvm.store %340, %268 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%232, %11 : !llvm.ptr, i64)] : i1
    %341 = llvm.load %232 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%235, %11 : !llvm.ptr, i64)] : i1
    %342 = llvm.load %235 : !llvm.ptr -> f32
    %343 = llvm.fadd %341, %342 : f32
    llvm.intr.assume %12 ["align"(%238, %11 : !llvm.ptr, i64)] : i1
    %344 = llvm.load %238 : !llvm.ptr -> f32
    %345 = llvm.fadd %343, %344 : f32
    llvm.intr.assume %12 ["align"(%241, %11 : !llvm.ptr, i64)] : i1
    %346 = llvm.load %241 : !llvm.ptr -> f32
    %347 = llvm.fadd %345, %346 : f32
    llvm.intr.assume %12 ["align"(%244, %11 : !llvm.ptr, i64)] : i1
    %348 = llvm.load %244 : !llvm.ptr -> f32
    %349 = llvm.fadd %347, %348 : f32
    llvm.intr.assume %12 ["align"(%249, %11 : !llvm.ptr, i64)] : i1
    %350 = llvm.load %249 : !llvm.ptr -> f32
    %351 = llvm.fadd %349, %350 : f32
    llvm.intr.assume %12 ["align"(%221, %11 : !llvm.ptr, i64)] : i1
    %352 = llvm.load %221 : !llvm.ptr -> f32
    %353 = llvm.fadd %351, %352 : f32
    llvm.intr.assume %12 ["align"(%223, %11 : !llvm.ptr, i64)] : i1
    %354 = llvm.load %223 : !llvm.ptr -> f32
    %355 = llvm.fadd %353, %354 : f32
    llvm.intr.assume %12 ["align"(%226, %11 : !llvm.ptr, i64)] : i1
    %356 = llvm.load %226 : !llvm.ptr -> f32
    %357 = llvm.fadd %355, %356 : f32
    %358 = llvm.fdiv %357, %20 : f32
    llvm.intr.assume %12 ["align"(%248, %11 : !llvm.ptr, i64)] : i1
    llvm.store %358, %248 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_2_4() {
    %0 = llvm.mlir.addressof @of_meanG_buff_9 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_meanG_buff_8 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_meanG_buff_7 : !llvm.ptr
    %3 = llvm.mlir.addressof @of_meanG_buff_6 : !llvm.ptr
    %4 = llvm.mlir.addressof @of_meanG_buff_5 : !llvm.ptr
    %5 = llvm.mlir.addressof @of_meanG_buff_4 : !llvm.ptr
    %6 = llvm.mlir.addressof @of_meanG_buff_3 : !llvm.ptr
    %7 = llvm.mlir.addressof @of_meanG_buff_2 : !llvm.ptr
    %8 = llvm.mlir.addressof @of_meanF_buff_1 : !llvm.ptr
    %9 = llvm.mlir.addressof @of_meanG_buff_1 : !llvm.ptr
    %10 = llvm.mlir.addressof @of_meanF_buff_0 : !llvm.ptr
    %11 = llvm.mlir.constant(32 : index) : i64
    %12 = llvm.mlir.constant(true) : i1
    %13 = llvm.mlir.addressof @of_meanG_buff_0 : !llvm.ptr
    %14 = llvm.mlir.constant(18 : i32) : i32
    %15 = llvm.mlir.constant(49 : i32) : i32
    %16 = llvm.mlir.constant(48 : i32) : i32
    %17 = llvm.mlir.constant(19 : i32) : i32
    %18 = llvm.mlir.constant(1 : i32) : i32
    %19 = llvm.mlir.constant(1024 : i32) : i32
    %20 = llvm.mlir.constant(-1 : i32) : i32
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %24 = llvm.mlir.constant(9223372036854775800 : index) : i64
    %25 = llvm.mlir.constant(10 : index) : i64
    llvm.br ^bb1(%21 : i64)
  ^bb1(%26: i64):  // 2 preds: ^bb0, ^bb2
    %27 = llvm.icmp "slt" %26, %24 : i64
    llvm.cond_br %27, ^bb2, ^bb3(%24 : i64)
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %28 = llvm.getelementptr %13[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %30 = llvm.getelementptr %9[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %31 = llvm.getelementptr %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %32 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %33 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %34 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %35 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %36 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %37 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %39 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    %40 = llvm.add %26, %25 : i64
    llvm.br ^bb1(%40 : i64)
  ^bb3(%41: i64):  // 2 preds: ^bb1, ^bb4
    %42 = llvm.icmp "slt" %41, %23 : i64
    llvm.cond_br %42, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %43 = llvm.getelementptr %13[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%43, %11 : !llvm.ptr, i64)] : i1
    %44 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%44, %43, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %45 = llvm.getelementptr %9[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%45, %11 : !llvm.ptr, i64)] : i1
    %46 = llvm.getelementptr %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %12 ["align"(%46, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%46, %45, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %47 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%47, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%44, %47, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %48 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%46, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%46, %48, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %49 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%49, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%44, %49, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %50 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%50, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%46, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%46, %50, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %51 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%51, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%44, %51, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %52 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%52, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%46, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%46, %52, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %53 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%53, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%44, %53, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    %54 = llvm.add %41, %22 : i64
    llvm.br ^bb3(%54 : i64)
  ^bb5:  // pred: ^bb3
    llvm.return
  }
  llvm.func @core_1_4() {
    %0 = llvm.mlir.addressof @in1_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_multE_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_meanF_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @in1_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @of_multE_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(32 : index) : i64
    %6 = llvm.mlir.constant(true) : i1
    %7 = llvm.mlir.addressof @of_meanF_buff_0 : !llvm.ptr
    %8 = llvm.mlir.constant(48 : i32) : i32
    %9 = llvm.mlir.constant(16 : i32) : i32
    %10 = llvm.mlir.constant(51 : i32) : i32
    %11 = llvm.mlir.constant(50 : i32) : i32
    %12 = llvm.mlir.constant(49 : i32) : i32
    %13 = llvm.mlir.constant(17 : i32) : i32
    %14 = llvm.mlir.constant(1 : i32) : i32
    %15 = llvm.mlir.constant(1024 : i32) : i32
    %16 = llvm.mlir.constant(-1 : i32) : i32
    %17 = llvm.mlir.constant(8 : index) : i64
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %20 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%18 : i64)
  ^bb1(%21: i64):  // 2 preds: ^bb0, ^bb7
    %22 = llvm.icmp "slt" %21, %19 : i64
    llvm.cond_br %22, ^bb2(%18 : i64), ^bb8(%18 : i64)
  ^bb2(%23: i64):  // 2 preds: ^bb1, ^bb3
    %24 = llvm.icmp "slt" %23, %17 : i64
    llvm.cond_br %24, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%26, %27, %25, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    %30 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%30, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%29, %30, %28, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %31 = llvm.add %23, %20 : i64
    llvm.br ^bb2(%31 : i64)
  ^bb4:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %32 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    %34 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%34, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%33, %34, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.br ^bb5(%18 : i64)
  ^bb5(%35: i64):  // 2 preds: ^bb4, ^bb6
    %36 = llvm.icmp "slt" %35, %17 : i64
    llvm.cond_br %36, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %37 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    %39 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%39, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%38, %39, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%34, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%33, %34, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %40 = llvm.add %35, %20 : i64
    llvm.br ^bb5(%40 : i64)
  ^bb7:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %41 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    %43 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%43, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%42, %43, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %44 = llvm.add %21, %20 : i64
    llvm.br ^bb1(%44 : i64)
  ^bb8(%45: i64):  // 2 preds: ^bb1, ^bb9
    %46 = llvm.icmp "slt" %45, %17 : i64
    llvm.cond_br %46, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %47 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %48 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    %49 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%49, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%48, %49, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %50 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%50, %5 : !llvm.ptr, i64)] : i1
    %51 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    %52 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%51, %52, %50, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %53 = llvm.add %45, %20 : i64
    llvm.br ^bb8(%53 : i64)
  ^bb10:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %54 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    %55 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%55, %5 : !llvm.ptr, i64)] : i1
    %56 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%56, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%55, %56, %54, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_0_4() {
    %0 = llvm.mlir.addressof @of_cosD_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_multE_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_cosD_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_multE_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(4 : i32) : i32
    %7 = llvm.mlir.constant(49 : i32) : i32
    %8 = llvm.mlir.constant(48 : i32) : i32
    %9 = llvm.mlir.constant(5 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(1024 : i32) : i32
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(8 : index) : i64
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%15 : i64)
  ^bb1(%17: i64):  // 2 preds: ^bb0, ^bb7
    %18 = llvm.icmp "slt" %17, %16 : i64
    llvm.cond_br %18, ^bb2(%15 : i64), ^bb8(%15 : i64)
  ^bb2(%19: i64):  // 2 preds: ^bb1, ^bb3
    %20 = llvm.icmp "slt" %19, %13 : i64
    llvm.cond_br %20, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %21 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%21, %3 : !llvm.ptr, i64)] : i1
    %22 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%22, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%22, %21, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %23 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%23, %3 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%24, %23, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %25 = llvm.add %19, %14 : i64
    llvm.br ^bb2(%25 : i64)
  ^bb4:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %26 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%26, %3 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%27, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%27, %26, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.br ^bb5(%15 : i64)
  ^bb5(%28: i64):  // 2 preds: ^bb4, ^bb6
    %29 = llvm.icmp "slt" %28, %13 : i64
    llvm.cond_br %29, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %30 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%30, %3 : !llvm.ptr, i64)] : i1
    %31 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%31, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%31, %30, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%26, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%27, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%27, %26, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %32 = llvm.add %28, %14 : i64
    llvm.br ^bb5(%32 : i64)
  ^bb7:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %33 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%33, %3 : !llvm.ptr, i64)] : i1
    %34 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%34, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%34, %33, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %35 = llvm.add %17, %14 : i64
    llvm.br ^bb1(%35 : i64)
  ^bb8(%36: i64):  // 2 preds: ^bb1, ^bb9
    %37 = llvm.icmp "slt" %36, %13 : i64
    llvm.cond_br %37, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %38 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%38, %3 : !llvm.ptr, i64)] : i1
    %39 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%39, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%39, %38, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %40 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%40, %3 : !llvm.ptr, i64)] : i1
    %41 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%41, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%41, %40, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %42 = llvm.add %36, %14 : i64
    llvm.br ^bb8(%42 : i64)
  ^bb10:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %43 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%43, %3 : !llvm.ptr, i64)] : i1
    %44 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%44, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%44, %43, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_0_3() {
    %0 = llvm.mlir.addressof @in0_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_scaleC_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_cosD_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @in0_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @of_scaleC_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(32 : index) : i64
    %6 = llvm.mlir.constant(true) : i1
    %7 = llvm.mlir.addressof @of_cosD_buff_0 : !llvm.ptr
    %8 = llvm.mlir.constant(48 : i32) : i32
    %9 = llvm.mlir.constant(50 : i32) : i32
    %10 = llvm.mlir.constant(53 : i32) : i32
    %11 = llvm.mlir.constant(52 : i32) : i32
    %12 = llvm.mlir.constant(51 : i32) : i32
    %13 = llvm.mlir.constant(49 : i32) : i32
    %14 = llvm.mlir.constant(1 : i32) : i32
    %15 = llvm.mlir.constant(1024 : i32) : i32
    %16 = llvm.mlir.constant(8 : index) : i64
    %17 = llvm.mlir.constant(-1 : i32) : i32
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %20 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%18 : i64)
  ^bb1(%21: i64):  // 2 preds: ^bb0, ^bb8
    %22 = llvm.icmp "slt" %21, %19 : i64
    llvm.cond_br %22, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb3(%18 : i64)
  ^bb3(%23: i64):  // 2 preds: ^bb2, ^bb4
    %24 = llvm.icmp "slt" %23, %16 : i64
    llvm.cond_br %24, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%26, %25, %27, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%29, %28, %27, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %30 = llvm.add %23, %20 : i64
    llvm.br ^bb3(%30 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %31 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    %32 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%32, %31, %33, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb6(%18 : i64)
  ^bb6(%34: i64):  // 2 preds: ^bb5, ^bb7
    %35 = llvm.icmp "slt" %34, %16 : i64
    llvm.cond_br %35, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%36, %5 : !llvm.ptr, i64)] : i1
    %37 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%37, %36, %38, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%32, %31, %38, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %39 = llvm.add %34, %20 : i64
    llvm.br ^bb6(%39 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %40 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%40, %5 : !llvm.ptr, i64)] : i1
    %41 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%41, %40, %42, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %43 = llvm.add %21, %20 : i64
    llvm.br ^bb1(%43 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb10(%18 : i64)
  ^bb10(%44: i64):  // 2 preds: ^bb9, ^bb11
    %45 = llvm.icmp "slt" %44, %16 : i64
    llvm.cond_br %45, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %46 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%46, %5 : !llvm.ptr, i64)] : i1
    %47 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %48 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%47, %46, %48, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %49 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%49, %5 : !llvm.ptr, i64)] : i1
    %50 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%50, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%50, %49, %48, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %51 = llvm.add %44, %20 : i64
    llvm.br ^bb10(%51 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %52 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    %54 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%53, %52, %54, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_1_3() {
    %0 = llvm.mlir.addressof @addB0_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @addB1_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_scaleC_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @addB0_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @addB1_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(32 : index) : i64
    %6 = llvm.mlir.constant(true) : i1
    %7 = llvm.mlir.addressof @of_scaleC_buff_0 : !llvm.ptr
    %8 = llvm.mlir.constant(48 : i32) : i32
    %9 = llvm.mlir.constant(4 : i32) : i32
    %10 = llvm.mlir.constant(19 : i32) : i32
    %11 = llvm.mlir.constant(18 : i32) : i32
    %12 = llvm.mlir.constant(49 : i32) : i32
    %13 = llvm.mlir.constant(5 : i32) : i32
    %14 = llvm.mlir.constant(1 : i32) : i32
    %15 = llvm.mlir.constant(1024 : i32) : i32
    %16 = llvm.mlir.constant(-1 : i32) : i32
    %17 = llvm.mlir.constant(8 : index) : i64
    %18 = llvm.mlir.constant(2 : index) : i64
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%19 : i64)
  ^bb1(%21: i64):  // 2 preds: ^bb0, ^bb7
    %22 = llvm.icmp "slt" %21, %20 : i64
    llvm.cond_br %22, ^bb2(%19 : i64), ^bb8(%19 : i64)
  ^bb2(%23: i64):  // 2 preds: ^bb1, ^bb3
    %24 = llvm.icmp "slt" %23, %17 : i64
    llvm.cond_br %24, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%27, %26, %25, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    %30 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%30, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%30, %29, %28, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %31 = llvm.add %23, %18 : i64
    llvm.br ^bb2(%31 : i64)
  ^bb4:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %32 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    %34 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%34, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%34, %33, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.br ^bb5(%19 : i64)
  ^bb5(%35: i64):  // 2 preds: ^bb4, ^bb6
    %36 = llvm.icmp "slt" %35, %17 : i64
    llvm.cond_br %36, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %37 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    %39 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%39, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%39, %38, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%34, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%34, %33, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %40 = llvm.add %35, %18 : i64
    llvm.br ^bb5(%40 : i64)
  ^bb7:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %41 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    %43 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%43, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%43, %42, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %44 = llvm.add %21, %18 : i64
    llvm.br ^bb1(%44 : i64)
  ^bb8(%45: i64):  // 2 preds: ^bb1, ^bb9
    %46 = llvm.icmp "slt" %45, %17 : i64
    llvm.cond_br %46, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %47 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %48 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    %49 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%49, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%49, %48, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %50 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%50, %5 : !llvm.ptr, i64)] : i1
    %51 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    %52 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%52, %51, %50, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %53 = llvm.add %45, %18 : i64
    llvm.br ^bb8(%53 : i64)
  ^bb10:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %54 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    %55 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%55, %5 : !llvm.ptr, i64)] : i1
    %56 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%56, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%56, %55, %54, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_2_3() {
    %0 = llvm.mlir.addressof @addA0_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @addA1_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @addB1_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @addA0_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @addA1_cons_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(32 : index) : i64
    %6 = llvm.mlir.constant(true) : i1
    %7 = llvm.mlir.addressof @addB1_buff_0 : !llvm.ptr
    %8 = llvm.mlir.constant(48 : i32) : i32
    %9 = llvm.mlir.constant(4 : i32) : i32
    %10 = llvm.mlir.constant(17 : i32) : i32
    %11 = llvm.mlir.constant(16 : i32) : i32
    %12 = llvm.mlir.constant(49 : i32) : i32
    %13 = llvm.mlir.constant(5 : i32) : i32
    %14 = llvm.mlir.constant(1 : i32) : i32
    %15 = llvm.mlir.constant(1024 : i32) : i32
    %16 = llvm.mlir.constant(-1 : i32) : i32
    %17 = llvm.mlir.constant(8 : index) : i64
    %18 = llvm.mlir.constant(2 : index) : i64
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%19 : i64)
  ^bb1(%21: i64):  // 2 preds: ^bb0, ^bb7
    %22 = llvm.icmp "slt" %21, %20 : i64
    llvm.cond_br %22, ^bb2(%19 : i64), ^bb8(%19 : i64)
  ^bb2(%23: i64):  // 2 preds: ^bb1, ^bb3
    %24 = llvm.icmp "slt" %23, %17 : i64
    llvm.cond_br %24, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%27, %26, %25, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    %30 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%30, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%30, %29, %28, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %31 = llvm.add %23, %18 : i64
    llvm.br ^bb2(%31 : i64)
  ^bb4:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %32 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    %34 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%34, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%34, %33, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.br ^bb5(%19 : i64)
  ^bb5(%35: i64):  // 2 preds: ^bb4, ^bb6
    %36 = llvm.icmp "slt" %35, %17 : i64
    llvm.cond_br %36, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %37 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    %39 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%39, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%39, %38, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%34, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%34, %33, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %40 = llvm.add %35, %18 : i64
    llvm.br ^bb5(%40 : i64)
  ^bb7:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %41 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    %43 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%43, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%43, %42, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %44 = llvm.add %21, %18 : i64
    llvm.br ^bb1(%44 : i64)
  ^bb8(%45: i64):  // 2 preds: ^bb1, ^bb9
    %46 = llvm.icmp "slt" %45, %17 : i64
    llvm.cond_br %46, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %47 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %48 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    %49 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%49, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%49, %48, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %50 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%50, %5 : !llvm.ptr, i64)] : i1
    %51 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    %52 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%52, %51, %50, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %53 = llvm.add %45, %18 : i64
    llvm.br ^bb8(%53 : i64)
  ^bb10:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %54 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    %55 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%55, %5 : !llvm.ptr, i64)] : i1
    %56 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%56, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%56, %55, %54, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_3_2() {
    %0 = llvm.mlir.addressof @n_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @w_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @addA1_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @w_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @n_cons_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(32 : index) : i64
    %6 = llvm.mlir.constant(true) : i1
    %7 = llvm.mlir.addressof @addA1_buff_0 : !llvm.ptr
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(48 : i32) : i32
    %10 = llvm.mlir.constant(53 : i32) : i32
    %11 = llvm.mlir.constant(52 : i32) : i32
    %12 = llvm.mlir.constant(49 : i32) : i32
    %13 = llvm.mlir.constant(51 : i32) : i32
    %14 = llvm.mlir.constant(1 : i32) : i32
    %15 = llvm.mlir.constant(1024 : i32) : i32
    %16 = llvm.mlir.constant(8 : index) : i64
    %17 = llvm.mlir.constant(-1 : i32) : i32
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %20 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%18 : i64)
  ^bb1(%21: i64):  // 2 preds: ^bb0, ^bb8
    %22 = llvm.icmp "slt" %21, %19 : i64
    llvm.cond_br %22, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb3(%18 : i64)
  ^bb3(%23: i64):  // 2 preds: ^bb2, ^bb4
    %24 = llvm.icmp "slt" %23, %16 : i64
    llvm.cond_br %24, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%27, %25, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%29, %28, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %30 = llvm.add %23, %20 : i64
    llvm.br ^bb3(%30 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %31 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    %32 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb6(%18 : i64)
  ^bb6(%34: i64):  // 2 preds: ^bb5, ^bb7
    %35 = llvm.icmp "slt" %34, %16 : i64
    llvm.cond_br %35, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%36, %5 : !llvm.ptr, i64)] : i1
    %37 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%38, %36, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %39 = llvm.add %34, %20 : i64
    llvm.br ^bb6(%39 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %40 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%40, %5 : !llvm.ptr, i64)] : i1
    %41 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%42, %40, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %43 = llvm.add %21, %20 : i64
    llvm.br ^bb1(%43 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb10(%18 : i64)
  ^bb10(%44: i64):  // 2 preds: ^bb9, ^bb11
    %45 = llvm.icmp "slt" %44, %16 : i64
    llvm.cond_br %45, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %46 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%46, %5 : !llvm.ptr, i64)] : i1
    %47 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %48 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%48, %46, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %49 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%49, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %50 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%50, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%50, %49, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %51 = llvm.add %44, %20 : i64
    llvm.br ^bb10(%51 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %52 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    %54 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%54, %52, %53, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_2_2() {
    %0 = llvm.mlir.addressof @m_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @v_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @addA0_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @v_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @m_cons_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(32 : index) : i64
    %6 = llvm.mlir.constant(true) : i1
    %7 = llvm.mlir.addressof @addA0_buff_0 : !llvm.ptr
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(48 : i32) : i32
    %10 = llvm.mlir.constant(53 : i32) : i32
    %11 = llvm.mlir.constant(52 : i32) : i32
    %12 = llvm.mlir.constant(49 : i32) : i32
    %13 = llvm.mlir.constant(51 : i32) : i32
    %14 = llvm.mlir.constant(1 : i32) : i32
    %15 = llvm.mlir.constant(1024 : i32) : i32
    %16 = llvm.mlir.constant(8 : index) : i64
    %17 = llvm.mlir.constant(-1 : i32) : i32
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %20 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%18 : i64)
  ^bb1(%21: i64):  // 2 preds: ^bb0, ^bb8
    %22 = llvm.icmp "slt" %21, %19 : i64
    llvm.cond_br %22, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb3(%18 : i64)
  ^bb3(%23: i64):  // 2 preds: ^bb2, ^bb4
    %24 = llvm.icmp "slt" %23, %16 : i64
    llvm.cond_br %24, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%27, %25, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%29, %28, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %30 = llvm.add %23, %20 : i64
    llvm.br ^bb3(%30 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %31 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    %32 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb6(%18 : i64)
  ^bb6(%34: i64):  // 2 preds: ^bb5, ^bb7
    %35 = llvm.icmp "slt" %34, %16 : i64
    llvm.cond_br %35, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%36, %5 : !llvm.ptr, i64)] : i1
    %37 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%38, %36, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %39 = llvm.add %34, %20 : i64
    llvm.br ^bb6(%39 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %40 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%40, %5 : !llvm.ptr, i64)] : i1
    %41 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%42, %40, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %43 = llvm.add %21, %20 : i64
    llvm.br ^bb1(%43 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb10(%18 : i64)
  ^bb10(%44: i64):  // 2 preds: ^bb9, ^bb11
    %45 = llvm.icmp "slt" %44, %16 : i64
    llvm.cond_br %45, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %46 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%46, %5 : !llvm.ptr, i64)] : i1
    %47 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %48 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%48, %46, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %49 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%49, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %50 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%50, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%50, %49, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %51 = llvm.add %44, %20 : i64
    llvm.br ^bb10(%51 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %52 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    %54 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%54, %52, %53, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_1_2() {
    %0 = llvm.mlir.addressof @l_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @u_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @addB0_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @u_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @l_cons_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(32 : index) : i64
    %6 = llvm.mlir.constant(true) : i1
    %7 = llvm.mlir.addressof @addB0_buff_0 : !llvm.ptr
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(48 : i32) : i32
    %10 = llvm.mlir.constant(53 : i32) : i32
    %11 = llvm.mlir.constant(52 : i32) : i32
    %12 = llvm.mlir.constant(49 : i32) : i32
    %13 = llvm.mlir.constant(51 : i32) : i32
    %14 = llvm.mlir.constant(1 : i32) : i32
    %15 = llvm.mlir.constant(1024 : i32) : i32
    %16 = llvm.mlir.constant(8 : index) : i64
    %17 = llvm.mlir.constant(-1 : i32) : i32
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %20 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%18 : i64)
  ^bb1(%21: i64):  // 2 preds: ^bb0, ^bb8
    %22 = llvm.icmp "slt" %21, %19 : i64
    llvm.cond_br %22, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb3(%18 : i64)
  ^bb3(%23: i64):  // 2 preds: ^bb2, ^bb4
    %24 = llvm.icmp "slt" %23, %16 : i64
    llvm.cond_br %24, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%27, %25, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%29, %28, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %30 = llvm.add %23, %20 : i64
    llvm.br ^bb3(%30 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %31 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    %32 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb6(%18 : i64)
  ^bb6(%34: i64):  // 2 preds: ^bb5, ^bb7
    %35 = llvm.icmp "slt" %34, %16 : i64
    llvm.cond_br %35, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%36, %5 : !llvm.ptr, i64)] : i1
    %37 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%38, %36, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %39 = llvm.add %34, %20 : i64
    llvm.br ^bb6(%39 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %40 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%40, %5 : !llvm.ptr, i64)] : i1
    %41 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%42, %40, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %43 = llvm.add %21, %20 : i64
    llvm.br ^bb1(%43 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb10(%18 : i64)
  ^bb10(%44: i64):  // 2 preds: ^bb9, ^bb11
    %45 = llvm.icmp "slt" %44, %16 : i64
    llvm.cond_br %45, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %46 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%46, %5 : !llvm.ptr, i64)] : i1
    %47 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %48 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%48, %46, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %49 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%49, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %50 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%50, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%50, %49, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %51 = llvm.add %44, %20 : i64
    llvm.br ^bb10(%51 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %52 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    %54 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%54, %52, %53, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.return
  }
}

