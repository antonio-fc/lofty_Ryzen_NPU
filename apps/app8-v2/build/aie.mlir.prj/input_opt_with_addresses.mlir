module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @in1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @in2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<3072 x bf16>
  llvm.mlir.global external @in3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @u_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @u_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @v_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @v_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @w_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @w_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @l_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @l_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @m_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @m_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @n_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @n_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @addA0_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @addA0_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @addA1_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @addA1_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @addA1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @addA1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @addB0_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @addB0_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @addB1_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @addB1_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @of_scaleC_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @of_scaleC_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @of_cosD_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @of_cosD_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @of_multE_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @of_multE_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @of_meanF_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @of_meanF_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @of_meanG_buff_9() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @of_meanG_buff_8() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @of_meanG_buff_7() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @of_meanG_buff_6() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @of_meanG_buff_5() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @of_meanG_buff_4() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @of_meanG_buff_3() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @of_meanG_buff_2() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @of_meanG_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @of_meanG_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @out_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @out_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.func @debug_i32(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.put.ms(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.get.ss() -> !llvm.struct<(i32, i32)> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.mcd.write.vec(vector<16xi32>, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.scd.read.vec(i32) -> vector<16xi32> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.acquire(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.release(i32, i32) attributes {sym_visibility = "private"}
  llvm.mlir.global external @out_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @out() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @of_meanG() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @of_meanF() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @of_multE() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @of_cosD() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @of_scaleC() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @addB1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @addB0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @addA1_cons() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @addA1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @addA0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @n_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @n() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @m_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @m() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @l_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @l() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @w_cons() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @w() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @v_cons() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @v() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @u_cons() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @u() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @in3_cons() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in3() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in2_cons() {addr_space = 0 : i32} : !llvm.array<3072 x bf16>
  llvm.mlir.global external @in2() {addr_space = 0 : i32} : !llvm.array<3072 x bf16>
  llvm.mlir.global external @in1_cons() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @in1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @in0_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.func @vector_scalar_mul_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) attributes {sym_visibility = "private"}
  llvm.func @passthrough(!llvm.ptr, !llvm.ptr, i16) attributes {sym_visibility = "private"}
  llvm.func @vector_add_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) attributes {sym_visibility = "private"}
  llvm.func @vector_mult_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) attributes {sym_visibility = "private"}
  llvm.func @mean(!llvm.ptr, !llvm.ptr, i16) attributes {sym_visibility = "private"}
  llvm.func @cos_float_1024(!llvm.ptr, !llvm.ptr, i16) attributes {sym_visibility = "private"}
  llvm.func @core_3_4() {
    %0 = llvm.mlir.addressof @out_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_meanG_buff_9 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_meanG_buff_8 : !llvm.ptr
    %3 = llvm.mlir.addressof @of_meanG_buff_7 : !llvm.ptr
    %4 = llvm.mlir.addressof @of_meanG_buff_6 : !llvm.ptr
    %5 = llvm.mlir.addressof @of_meanG_buff_5 : !llvm.ptr
    %6 = llvm.mlir.addressof @of_meanG_buff_4 : !llvm.ptr
    %7 = llvm.mlir.addressof @of_meanG_buff_3 : !llvm.ptr
    %8 = llvm.mlir.addressof @of_meanG_buff_2 : !llvm.ptr
    %9 = llvm.mlir.addressof @of_meanG_buff_1 : !llvm.ptr
    %10 = llvm.mlir.addressof @out_buff_0 : !llvm.ptr
    %11 = llvm.mlir.constant(32 : index) : i64
    %12 = llvm.mlir.constant(true) : i1
    %13 = llvm.mlir.addressof @of_meanG_buff_0 : !llvm.ptr
    %14 = llvm.mlir.constant(49 : i32) : i32
    %15 = llvm.mlir.constant(16 : i32) : i32
    %16 = llvm.mlir.constant(17 : i32) : i32
    %17 = llvm.mlir.constant(48 : i32) : i32
    %18 = llvm.mlir.constant(9.000000e+00 : bf16) : bf16
    %19 = llvm.mlir.constant(1 : i32) : i32
    %20 = llvm.mlir.constant(-1 : i32) : i32
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.mlir.constant(9223372036854775800 : index) : i64
    %25 = llvm.mlir.constant(10 : index) : i64
    llvm.br ^bb1(%21 : i64)
  ^bb1(%26: i64):  // 2 preds: ^bb0, ^bb2
    %27 = llvm.icmp "slt" %26, %24 : i64
    llvm.cond_br %27, ^bb2, ^bb3(%24 : i64)
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %28 = llvm.getelementptr %13[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %29 = llvm.load %28 : !llvm.ptr -> bf16
    %30 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %29, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %31 = llvm.load %30 : !llvm.ptr -> bf16
    %32 = llvm.getelementptr %9[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    %33 = llvm.load %32 : !llvm.ptr -> bf16
    %34 = llvm.fadd %31, %33 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %34, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %35 = llvm.load %30 : !llvm.ptr -> bf16
    %36 = llvm.getelementptr %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    %37 = llvm.load %36 : !llvm.ptr -> bf16
    %38 = llvm.fadd %35, %37 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %38, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %39 = llvm.load %30 : !llvm.ptr -> bf16
    %40 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%40, %11 : !llvm.ptr, i64)] : i1
    %41 = llvm.load %40 : !llvm.ptr -> bf16
    %42 = llvm.fadd %39, %41 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %42, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %43 = llvm.load %30 : !llvm.ptr -> bf16
    %44 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    %45 = llvm.load %44 : !llvm.ptr -> bf16
    %46 = llvm.fadd %43, %45 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %46, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %47 = llvm.load %30 : !llvm.ptr -> bf16
    %48 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    %49 = llvm.load %48 : !llvm.ptr -> bf16
    %50 = llvm.fadd %47, %49 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %50, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %51 = llvm.load %30 : !llvm.ptr -> bf16
    %52 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%52, %11 : !llvm.ptr, i64)] : i1
    %53 = llvm.load %52 : !llvm.ptr -> bf16
    %54 = llvm.fadd %51, %53 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %54, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %55 = llvm.load %30 : !llvm.ptr -> bf16
    %56 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%56, %11 : !llvm.ptr, i64)] : i1
    %57 = llvm.load %56 : !llvm.ptr -> bf16
    %58 = llvm.fadd %55, %57 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %58, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %59 = llvm.load %30 : !llvm.ptr -> bf16
    %60 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%60, %11 : !llvm.ptr, i64)] : i1
    %61 = llvm.load %60 : !llvm.ptr -> bf16
    %62 = llvm.fadd %59, %61 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %62, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %63 = llvm.load %30 : !llvm.ptr -> bf16
    %64 = llvm.fdiv %63, %18 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %65 = llvm.getelementptr %30[1] : (!llvm.ptr) -> !llvm.ptr, bf16
    llvm.store %64, %65 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%14, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %66 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%66, %11 : !llvm.ptr, i64)] : i1
    %67 = llvm.load %66 : !llvm.ptr -> bf16
    %68 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %67, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %69 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %70 = llvm.load %28 : !llvm.ptr -> bf16
    %71 = llvm.fadd %69, %70 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %71, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %72 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    %73 = llvm.load %32 : !llvm.ptr -> bf16
    %74 = llvm.fadd %72, %73 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %74, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %75 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    %76 = llvm.load %36 : !llvm.ptr -> bf16
    %77 = llvm.fadd %75, %76 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %77, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %78 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%40, %11 : !llvm.ptr, i64)] : i1
    %79 = llvm.load %40 : !llvm.ptr -> bf16
    %80 = llvm.fadd %78, %79 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %80, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %81 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    %82 = llvm.load %44 : !llvm.ptr -> bf16
    %83 = llvm.fadd %81, %82 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %83, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %84 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    %85 = llvm.load %48 : !llvm.ptr -> bf16
    %86 = llvm.fadd %84, %85 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %86, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %87 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%52, %11 : !llvm.ptr, i64)] : i1
    %88 = llvm.load %52 : !llvm.ptr -> bf16
    %89 = llvm.fadd %87, %88 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %89, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %90 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%56, %11 : !llvm.ptr, i64)] : i1
    %91 = llvm.load %56 : !llvm.ptr -> bf16
    %92 = llvm.fadd %90, %91 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %92, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %93 = llvm.load %68 : !llvm.ptr -> bf16
    %94 = llvm.fdiv %93, %18 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %95 = llvm.getelementptr %68[1] : (!llvm.ptr) -> !llvm.ptr, bf16
    llvm.store %94, %95 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%14, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%60, %11 : !llvm.ptr, i64)] : i1
    %96 = llvm.load %60 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %96, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %97 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%66, %11 : !llvm.ptr, i64)] : i1
    %98 = llvm.load %66 : !llvm.ptr -> bf16
    %99 = llvm.fadd %97, %98 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %99, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %100 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %101 = llvm.load %28 : !llvm.ptr -> bf16
    %102 = llvm.fadd %100, %101 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %102, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %103 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    %104 = llvm.load %32 : !llvm.ptr -> bf16
    %105 = llvm.fadd %103, %104 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %105, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %106 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    %107 = llvm.load %36 : !llvm.ptr -> bf16
    %108 = llvm.fadd %106, %107 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %108, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %109 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%40, %11 : !llvm.ptr, i64)] : i1
    %110 = llvm.load %40 : !llvm.ptr -> bf16
    %111 = llvm.fadd %109, %110 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %111, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %112 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    %113 = llvm.load %44 : !llvm.ptr -> bf16
    %114 = llvm.fadd %112, %113 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %114, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %115 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    %116 = llvm.load %48 : !llvm.ptr -> bf16
    %117 = llvm.fadd %115, %116 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %117, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %118 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%52, %11 : !llvm.ptr, i64)] : i1
    %119 = llvm.load %52 : !llvm.ptr -> bf16
    %120 = llvm.fadd %118, %119 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %120, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %121 = llvm.load %30 : !llvm.ptr -> bf16
    %122 = llvm.fdiv %121, %18 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %122, %65 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%14, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%56, %11 : !llvm.ptr, i64)] : i1
    %123 = llvm.load %56 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %123, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %124 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%60, %11 : !llvm.ptr, i64)] : i1
    %125 = llvm.load %60 : !llvm.ptr -> bf16
    %126 = llvm.fadd %124, %125 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %126, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %127 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%66, %11 : !llvm.ptr, i64)] : i1
    %128 = llvm.load %66 : !llvm.ptr -> bf16
    %129 = llvm.fadd %127, %128 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %129, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %130 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %131 = llvm.load %28 : !llvm.ptr -> bf16
    %132 = llvm.fadd %130, %131 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %132, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %133 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    %134 = llvm.load %32 : !llvm.ptr -> bf16
    %135 = llvm.fadd %133, %134 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %135, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %136 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    %137 = llvm.load %36 : !llvm.ptr -> bf16
    %138 = llvm.fadd %136, %137 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %138, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %139 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%40, %11 : !llvm.ptr, i64)] : i1
    %140 = llvm.load %40 : !llvm.ptr -> bf16
    %141 = llvm.fadd %139, %140 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %141, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %142 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    %143 = llvm.load %44 : !llvm.ptr -> bf16
    %144 = llvm.fadd %142, %143 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %144, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %145 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    %146 = llvm.load %48 : !llvm.ptr -> bf16
    %147 = llvm.fadd %145, %146 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %147, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %148 = llvm.load %68 : !llvm.ptr -> bf16
    %149 = llvm.fdiv %148, %18 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %149, %95 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%14, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%52, %11 : !llvm.ptr, i64)] : i1
    %150 = llvm.load %52 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %150, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %151 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%56, %11 : !llvm.ptr, i64)] : i1
    %152 = llvm.load %56 : !llvm.ptr -> bf16
    %153 = llvm.fadd %151, %152 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %153, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %154 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%60, %11 : !llvm.ptr, i64)] : i1
    %155 = llvm.load %60 : !llvm.ptr -> bf16
    %156 = llvm.fadd %154, %155 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %156, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %157 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%66, %11 : !llvm.ptr, i64)] : i1
    %158 = llvm.load %66 : !llvm.ptr -> bf16
    %159 = llvm.fadd %157, %158 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %159, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %160 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %161 = llvm.load %28 : !llvm.ptr -> bf16
    %162 = llvm.fadd %160, %161 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %162, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %163 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    %164 = llvm.load %32 : !llvm.ptr -> bf16
    %165 = llvm.fadd %163, %164 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %165, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %166 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    %167 = llvm.load %36 : !llvm.ptr -> bf16
    %168 = llvm.fadd %166, %167 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %168, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %169 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%40, %11 : !llvm.ptr, i64)] : i1
    %170 = llvm.load %40 : !llvm.ptr -> bf16
    %171 = llvm.fadd %169, %170 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %171, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %172 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    %173 = llvm.load %44 : !llvm.ptr -> bf16
    %174 = llvm.fadd %172, %173 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %174, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %175 = llvm.load %30 : !llvm.ptr -> bf16
    %176 = llvm.fdiv %175, %18 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %176, %65 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%14, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    %177 = llvm.load %48 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %177, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %178 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%52, %11 : !llvm.ptr, i64)] : i1
    %179 = llvm.load %52 : !llvm.ptr -> bf16
    %180 = llvm.fadd %178, %179 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %180, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %181 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%56, %11 : !llvm.ptr, i64)] : i1
    %182 = llvm.load %56 : !llvm.ptr -> bf16
    %183 = llvm.fadd %181, %182 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %183, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %184 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%60, %11 : !llvm.ptr, i64)] : i1
    %185 = llvm.load %60 : !llvm.ptr -> bf16
    %186 = llvm.fadd %184, %185 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %186, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %187 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%66, %11 : !llvm.ptr, i64)] : i1
    %188 = llvm.load %66 : !llvm.ptr -> bf16
    %189 = llvm.fadd %187, %188 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %189, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %190 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %191 = llvm.load %28 : !llvm.ptr -> bf16
    %192 = llvm.fadd %190, %191 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %192, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %193 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    %194 = llvm.load %32 : !llvm.ptr -> bf16
    %195 = llvm.fadd %193, %194 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %195, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %196 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    %197 = llvm.load %36 : !llvm.ptr -> bf16
    %198 = llvm.fadd %196, %197 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %198, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %199 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%40, %11 : !llvm.ptr, i64)] : i1
    %200 = llvm.load %40 : !llvm.ptr -> bf16
    %201 = llvm.fadd %199, %200 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %201, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %202 = llvm.load %68 : !llvm.ptr -> bf16
    %203 = llvm.fdiv %202, %18 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %203, %95 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%14, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    %204 = llvm.load %44 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %204, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %205 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    %206 = llvm.load %48 : !llvm.ptr -> bf16
    %207 = llvm.fadd %205, %206 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %207, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %208 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%52, %11 : !llvm.ptr, i64)] : i1
    %209 = llvm.load %52 : !llvm.ptr -> bf16
    %210 = llvm.fadd %208, %209 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %210, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %211 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%56, %11 : !llvm.ptr, i64)] : i1
    %212 = llvm.load %56 : !llvm.ptr -> bf16
    %213 = llvm.fadd %211, %212 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %213, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %214 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%60, %11 : !llvm.ptr, i64)] : i1
    %215 = llvm.load %60 : !llvm.ptr -> bf16
    %216 = llvm.fadd %214, %215 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %216, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %217 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%66, %11 : !llvm.ptr, i64)] : i1
    %218 = llvm.load %66 : !llvm.ptr -> bf16
    %219 = llvm.fadd %217, %218 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %219, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %220 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %221 = llvm.load %28 : !llvm.ptr -> bf16
    %222 = llvm.fadd %220, %221 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %222, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %223 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    %224 = llvm.load %32 : !llvm.ptr -> bf16
    %225 = llvm.fadd %223, %224 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %225, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %226 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    %227 = llvm.load %36 : !llvm.ptr -> bf16
    %228 = llvm.fadd %226, %227 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %228, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %229 = llvm.load %30 : !llvm.ptr -> bf16
    %230 = llvm.fdiv %229, %18 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %230, %65 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%14, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%40, %11 : !llvm.ptr, i64)] : i1
    %231 = llvm.load %40 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %231, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %232 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    %233 = llvm.load %44 : !llvm.ptr -> bf16
    %234 = llvm.fadd %232, %233 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %234, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %235 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    %236 = llvm.load %48 : !llvm.ptr -> bf16
    %237 = llvm.fadd %235, %236 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %237, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %238 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%52, %11 : !llvm.ptr, i64)] : i1
    %239 = llvm.load %52 : !llvm.ptr -> bf16
    %240 = llvm.fadd %238, %239 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %240, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %241 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%56, %11 : !llvm.ptr, i64)] : i1
    %242 = llvm.load %56 : !llvm.ptr -> bf16
    %243 = llvm.fadd %241, %242 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %243, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %244 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%60, %11 : !llvm.ptr, i64)] : i1
    %245 = llvm.load %60 : !llvm.ptr -> bf16
    %246 = llvm.fadd %244, %245 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %246, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %247 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%66, %11 : !llvm.ptr, i64)] : i1
    %248 = llvm.load %66 : !llvm.ptr -> bf16
    %249 = llvm.fadd %247, %248 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %249, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %250 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %251 = llvm.load %28 : !llvm.ptr -> bf16
    %252 = llvm.fadd %250, %251 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %252, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %253 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    %254 = llvm.load %32 : !llvm.ptr -> bf16
    %255 = llvm.fadd %253, %254 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %255, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %256 = llvm.load %68 : !llvm.ptr -> bf16
    %257 = llvm.fdiv %256, %18 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %257, %95 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%14, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    %258 = llvm.load %36 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %258, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %259 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%40, %11 : !llvm.ptr, i64)] : i1
    %260 = llvm.load %40 : !llvm.ptr -> bf16
    %261 = llvm.fadd %259, %260 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %261, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %262 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    %263 = llvm.load %44 : !llvm.ptr -> bf16
    %264 = llvm.fadd %262, %263 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %264, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %265 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    %266 = llvm.load %48 : !llvm.ptr -> bf16
    %267 = llvm.fadd %265, %266 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %267, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %268 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%52, %11 : !llvm.ptr, i64)] : i1
    %269 = llvm.load %52 : !llvm.ptr -> bf16
    %270 = llvm.fadd %268, %269 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %270, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %271 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%56, %11 : !llvm.ptr, i64)] : i1
    %272 = llvm.load %56 : !llvm.ptr -> bf16
    %273 = llvm.fadd %271, %272 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %273, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %274 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%60, %11 : !llvm.ptr, i64)] : i1
    %275 = llvm.load %60 : !llvm.ptr -> bf16
    %276 = llvm.fadd %274, %275 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %276, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %277 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%66, %11 : !llvm.ptr, i64)] : i1
    %278 = llvm.load %66 : !llvm.ptr -> bf16
    %279 = llvm.fadd %277, %278 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %279, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %280 = llvm.load %30 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %281 = llvm.load %28 : !llvm.ptr -> bf16
    %282 = llvm.fadd %280, %281 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %282, %30 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %283 = llvm.load %30 : !llvm.ptr -> bf16
    %284 = llvm.fdiv %283, %18 : bf16
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.store %284, %65 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%14, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    %285 = llvm.load %32 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %285, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %286 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    %287 = llvm.load %36 : !llvm.ptr -> bf16
    %288 = llvm.fadd %286, %287 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %288, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %289 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%40, %11 : !llvm.ptr, i64)] : i1
    %290 = llvm.load %40 : !llvm.ptr -> bf16
    %291 = llvm.fadd %289, %290 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %291, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %292 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    %293 = llvm.load %44 : !llvm.ptr -> bf16
    %294 = llvm.fadd %292, %293 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %294, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %295 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    %296 = llvm.load %48 : !llvm.ptr -> bf16
    %297 = llvm.fadd %295, %296 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %297, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %298 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%52, %11 : !llvm.ptr, i64)] : i1
    %299 = llvm.load %52 : !llvm.ptr -> bf16
    %300 = llvm.fadd %298, %299 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %300, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %301 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%56, %11 : !llvm.ptr, i64)] : i1
    %302 = llvm.load %56 : !llvm.ptr -> bf16
    %303 = llvm.fadd %301, %302 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %303, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %304 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%60, %11 : !llvm.ptr, i64)] : i1
    %305 = llvm.load %60 : !llvm.ptr -> bf16
    %306 = llvm.fadd %304, %305 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %306, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %307 = llvm.load %68 : !llvm.ptr -> bf16
    llvm.intr.assume %12 ["align"(%66, %11 : !llvm.ptr, i64)] : i1
    %308 = llvm.load %66 : !llvm.ptr -> bf16
    %309 = llvm.fadd %307, %308 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %309, %68 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    %310 = llvm.load %68 : !llvm.ptr -> bf16
    %311 = llvm.fdiv %310, %18 : bf16
    llvm.intr.assume %12 ["align"(%68, %11 : !llvm.ptr, i64)] : i1
    llvm.store %311, %95 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%14, %19) : (i32, i32) -> ()
    %312 = llvm.add %26, %25 : i64
    llvm.br ^bb1(%312 : i64)
  ^bb3(%313: i64):  // 2 preds: ^bb1, ^bb4
    %314 = llvm.icmp "slt" %313, %22 : i64
    llvm.cond_br %314, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %315 = llvm.getelementptr %13[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%315, %11 : !llvm.ptr, i64)] : i1
    %316 = llvm.load %315 : !llvm.ptr -> bf16
    %317 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%317, %11 : !llvm.ptr, i64)] : i1
    llvm.store %316, %317 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%317, %11 : !llvm.ptr, i64)] : i1
    %318 = llvm.load %317 : !llvm.ptr -> bf16
    %319 = llvm.getelementptr %9[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%319, %11 : !llvm.ptr, i64)] : i1
    %320 = llvm.load %319 : !llvm.ptr -> bf16
    %321 = llvm.fadd %318, %320 : bf16
    llvm.intr.assume %12 ["align"(%317, %11 : !llvm.ptr, i64)] : i1
    llvm.store %321, %317 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%317, %11 : !llvm.ptr, i64)] : i1
    %322 = llvm.load %317 : !llvm.ptr -> bf16
    %323 = llvm.getelementptr %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%323, %11 : !llvm.ptr, i64)] : i1
    %324 = llvm.load %323 : !llvm.ptr -> bf16
    %325 = llvm.fadd %322, %324 : bf16
    llvm.intr.assume %12 ["align"(%317, %11 : !llvm.ptr, i64)] : i1
    llvm.store %325, %317 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%317, %11 : !llvm.ptr, i64)] : i1
    %326 = llvm.load %317 : !llvm.ptr -> bf16
    %327 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%327, %11 : !llvm.ptr, i64)] : i1
    %328 = llvm.load %327 : !llvm.ptr -> bf16
    %329 = llvm.fadd %326, %328 : bf16
    llvm.intr.assume %12 ["align"(%317, %11 : !llvm.ptr, i64)] : i1
    llvm.store %329, %317 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%317, %11 : !llvm.ptr, i64)] : i1
    %330 = llvm.load %317 : !llvm.ptr -> bf16
    %331 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%331, %11 : !llvm.ptr, i64)] : i1
    %332 = llvm.load %331 : !llvm.ptr -> bf16
    %333 = llvm.fadd %330, %332 : bf16
    llvm.intr.assume %12 ["align"(%317, %11 : !llvm.ptr, i64)] : i1
    llvm.store %333, %317 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%317, %11 : !llvm.ptr, i64)] : i1
    %334 = llvm.load %317 : !llvm.ptr -> bf16
    %335 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%335, %11 : !llvm.ptr, i64)] : i1
    %336 = llvm.load %335 : !llvm.ptr -> bf16
    %337 = llvm.fadd %334, %336 : bf16
    llvm.intr.assume %12 ["align"(%317, %11 : !llvm.ptr, i64)] : i1
    llvm.store %337, %317 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%317, %11 : !llvm.ptr, i64)] : i1
    %338 = llvm.load %317 : !llvm.ptr -> bf16
    %339 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%339, %11 : !llvm.ptr, i64)] : i1
    %340 = llvm.load %339 : !llvm.ptr -> bf16
    %341 = llvm.fadd %338, %340 : bf16
    llvm.intr.assume %12 ["align"(%317, %11 : !llvm.ptr, i64)] : i1
    llvm.store %341, %317 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%317, %11 : !llvm.ptr, i64)] : i1
    %342 = llvm.load %317 : !llvm.ptr -> bf16
    %343 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%343, %11 : !llvm.ptr, i64)] : i1
    %344 = llvm.load %343 : !llvm.ptr -> bf16
    %345 = llvm.fadd %342, %344 : bf16
    llvm.intr.assume %12 ["align"(%317, %11 : !llvm.ptr, i64)] : i1
    llvm.store %345, %317 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%317, %11 : !llvm.ptr, i64)] : i1
    %346 = llvm.load %317 : !llvm.ptr -> bf16
    %347 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%347, %11 : !llvm.ptr, i64)] : i1
    %348 = llvm.load %347 : !llvm.ptr -> bf16
    %349 = llvm.fadd %346, %348 : bf16
    llvm.intr.assume %12 ["align"(%317, %11 : !llvm.ptr, i64)] : i1
    llvm.store %349, %317 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%317, %11 : !llvm.ptr, i64)] : i1
    %350 = llvm.load %317 : !llvm.ptr -> bf16
    %351 = llvm.fdiv %350, %18 : bf16
    llvm.intr.assume %12 ["align"(%317, %11 : !llvm.ptr, i64)] : i1
    %352 = llvm.getelementptr %317[1] : (!llvm.ptr) -> !llvm.ptr, bf16
    llvm.store %351, %352 : bf16, !llvm.ptr
    llvm.call @llvm.aie2.release(%14, %19) : (i32, i32) -> ()
    %353 = llvm.add %313, %23 : i64
    llvm.br ^bb3(%353 : i64)
  ^bb5:  // pred: ^bb3
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
    %19 = llvm.mlir.constant(1024 : i16) : i16
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
    %28 = llvm.getelementptr %13[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %30 = llvm.getelementptr %9[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %31 = llvm.getelementptr %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %32 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %33 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %34 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %35 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %36 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %37 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %39 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
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
    %43 = llvm.getelementptr %13[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%43, %11 : !llvm.ptr, i64)] : i1
    %44 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%44, %43, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %45 = llvm.getelementptr %9[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%45, %11 : !llvm.ptr, i64)] : i1
    %46 = llvm.getelementptr %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %12 ["align"(%46, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%46, %45, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %47 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%47, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%44, %47, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %48 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%46, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%46, %48, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %49 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%49, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%44, %49, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %50 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%50, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%46, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%46, %50, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %51 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%51, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%44, %51, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %52 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%52, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%46, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%46, %52, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %53 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %12 ["align"(%53, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%44, %53, %19) : (!llvm.ptr, !llvm.ptr, i16) -> ()
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
    %15 = llvm.mlir.constant(1024 : i16) : i16
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
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%26, %27, %25, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    %30 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%30, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%29, %30, %28, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %31 = llvm.add %23, %20 : i64
    llvm.br ^bb2(%31 : i64)
  ^bb4:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %32 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    %34 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%34, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%33, %34, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %37 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    %39 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%39, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%38, %39, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%34, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%33, %34, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %40 = llvm.add %35, %20 : i64
    llvm.br ^bb5(%40 : i64)
  ^bb7:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %41 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    %43 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%43, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%42, %43, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %47 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %48 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    %49 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%49, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%48, %49, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %50 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%50, %5 : !llvm.ptr, i64)] : i1
    %51 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    %52 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%51, %52, %50, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %53 = llvm.add %45, %20 : i64
    llvm.br ^bb8(%53 : i64)
  ^bb10:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %54 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    %55 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%55, %5 : !llvm.ptr, i64)] : i1
    %56 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%56, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%55, %56, %54, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %11 = llvm.mlir.constant(1024 : i16) : i16
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
    %21 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %4 ["align"(%21, %3 : !llvm.ptr, i64)] : i1
    %22 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %4 ["align"(%22, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%22, %21, %11) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %23 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %4 ["align"(%23, %3 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%24, %23, %11) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %25 = llvm.add %19, %14 : i64
    llvm.br ^bb2(%25 : i64)
  ^bb4:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %26 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %4 ["align"(%26, %3 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %4 ["align"(%27, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%27, %26, %11) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.br ^bb5(%15 : i64)
  ^bb5(%28: i64):  // 2 preds: ^bb4, ^bb6
    %29 = llvm.icmp "slt" %28, %13 : i64
    llvm.cond_br %29, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %30 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %4 ["align"(%30, %3 : !llvm.ptr, i64)] : i1
    %31 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %4 ["align"(%31, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%31, %30, %11) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%26, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%27, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%27, %26, %11) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %32 = llvm.add %28, %14 : i64
    llvm.br ^bb5(%32 : i64)
  ^bb7:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %33 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %4 ["align"(%33, %3 : !llvm.ptr, i64)] : i1
    %34 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %4 ["align"(%34, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%34, %33, %11) : (!llvm.ptr, !llvm.ptr, i16) -> ()
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
    %38 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %4 ["align"(%38, %3 : !llvm.ptr, i64)] : i1
    %39 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %4 ["align"(%39, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%39, %38, %11) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %40 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %4 ["align"(%40, %3 : !llvm.ptr, i64)] : i1
    %41 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %4 ["align"(%41, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%41, %40, %11) : (!llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %42 = llvm.add %36, %14 : i64
    llvm.br ^bb8(%42 : i64)
  ^bb10:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %43 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %4 ["align"(%43, %3 : !llvm.ptr, i64)] : i1
    %44 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %4 ["align"(%44, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%44, %43, %11) : (!llvm.ptr, !llvm.ptr, i16) -> ()
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
    %15 = llvm.mlir.constant(1024 : i16) : i16
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
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%26, %25, %27, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%29, %28, %27, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %30 = llvm.add %23, %20 : i64
    llvm.br ^bb3(%30 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %31 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    %32 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%32, %31, %33, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%36, %5 : !llvm.ptr, i64)] : i1
    %37 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%37, %36, %38, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%32, %31, %38, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %39 = llvm.add %34, %20 : i64
    llvm.br ^bb6(%39 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %40 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%40, %5 : !llvm.ptr, i64)] : i1
    %41 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%41, %40, %42, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %46 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%46, %5 : !llvm.ptr, i64)] : i1
    %47 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %48 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%47, %46, %48, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %49 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%49, %5 : !llvm.ptr, i64)] : i1
    %50 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%50, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%50, %49, %48, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %51 = llvm.add %44, %20 : i64
    llvm.br ^bb10(%51 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %52 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    %54 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%53, %52, %54, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %15 = llvm.mlir.constant(1024 : i16) : i16
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
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%27, %26, %25, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    %30 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%30, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%30, %29, %28, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %31 = llvm.add %23, %18 : i64
    llvm.br ^bb2(%31 : i64)
  ^bb4:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %32 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    %34 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%34, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%34, %33, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %37 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    %39 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%39, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%39, %38, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%34, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%34, %33, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %40 = llvm.add %35, %18 : i64
    llvm.br ^bb5(%40 : i64)
  ^bb7:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %41 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    %43 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%43, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%43, %42, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %47 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %48 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    %49 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%49, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%49, %48, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %50 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%50, %5 : !llvm.ptr, i64)] : i1
    %51 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    %52 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%52, %51, %50, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %53 = llvm.add %45, %18 : i64
    llvm.br ^bb8(%53 : i64)
  ^bb10:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %54 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    %55 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%55, %5 : !llvm.ptr, i64)] : i1
    %56 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%56, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%56, %55, %54, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %15 = llvm.mlir.constant(1024 : i16) : i16
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
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%27, %26, %25, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    %30 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%30, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%30, %29, %28, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %31 = llvm.add %23, %18 : i64
    llvm.br ^bb2(%31 : i64)
  ^bb4:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %32 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    %34 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%34, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%34, %33, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %37 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    %39 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%39, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%39, %38, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%34, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%34, %33, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %40 = llvm.add %35, %18 : i64
    llvm.br ^bb5(%40 : i64)
  ^bb7:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %41 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    %43 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%43, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%43, %42, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %47 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %48 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    %49 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%49, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%49, %48, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %50 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%50, %5 : !llvm.ptr, i64)] : i1
    %51 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    %52 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%52, %51, %50, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %53 = llvm.add %45, %18 : i64
    llvm.br ^bb8(%53 : i64)
  ^bb10:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %54 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    %55 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%55, %5 : !llvm.ptr, i64)] : i1
    %56 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%56, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_add_aie_scalar(%56, %55, %54, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %15 = llvm.mlir.constant(1024 : i16) : i16
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
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%27, %25, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%29, %28, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %30 = llvm.add %23, %20 : i64
    llvm.br ^bb3(%30 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %31 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    %32 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%36, %5 : !llvm.ptr, i64)] : i1
    %37 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%38, %36, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %39 = llvm.add %34, %20 : i64
    llvm.br ^bb6(%39 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %40 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%40, %5 : !llvm.ptr, i64)] : i1
    %41 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%42, %40, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %46 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%46, %5 : !llvm.ptr, i64)] : i1
    %47 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %48 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%48, %46, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %49 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%49, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %50 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%50, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%50, %49, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %51 = llvm.add %44, %20 : i64
    llvm.br ^bb10(%51 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %52 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    %54 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%54, %52, %53, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %15 = llvm.mlir.constant(1024 : i16) : i16
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
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%27, %25, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%29, %28, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %30 = llvm.add %23, %20 : i64
    llvm.br ^bb3(%30 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %31 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    %32 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%36, %5 : !llvm.ptr, i64)] : i1
    %37 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%38, %36, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %39 = llvm.add %34, %20 : i64
    llvm.br ^bb6(%39 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %40 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%40, %5 : !llvm.ptr, i64)] : i1
    %41 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%42, %40, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %46 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%46, %5 : !llvm.ptr, i64)] : i1
    %47 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %48 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%48, %46, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %49 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%49, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %50 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%50, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%50, %49, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %51 = llvm.add %44, %20 : i64
    llvm.br ^bb10(%51 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %52 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    %54 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%54, %52, %53, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %15 = llvm.mlir.constant(1024 : i16) : i16
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
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%27, %25, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%29, %28, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %30 = llvm.add %23, %20 : i64
    llvm.br ^bb3(%30 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %31 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    %32 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%36, %5 : !llvm.ptr, i64)] : i1
    %37 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%38, %36, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %39 = llvm.add %34, %20 : i64
    llvm.br ^bb6(%39 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %40 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%40, %5 : !llvm.ptr, i64)] : i1
    %41 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%42, %40, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
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
    %46 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%46, %5 : !llvm.ptr, i64)] : i1
    %47 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %48 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%48, %46, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %49 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%49, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %50 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%50, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%50, %49, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %51 = llvm.add %44, %20 : i64
    llvm.br ^bb10(%51 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %52 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %6 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    %54 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%54, %52, %53, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i16) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.return
  }
}

