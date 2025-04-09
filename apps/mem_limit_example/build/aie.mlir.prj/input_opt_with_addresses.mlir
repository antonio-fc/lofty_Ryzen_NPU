module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @in1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @in2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<6912 x bf16>
  llvm.mlir.global external @in2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<6912 x bf16>
  llvm.mlir.global external @in3_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @visR_cons_buff_3() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @visR_cons_buff_2() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @visR_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @visR_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @visC_cons_buff_3() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @visC_cons_buff_2() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @visC_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @visC_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @u_cons_buff_3() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @u_cons_buff_2() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @u_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @u_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @v_cons_buff_3() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @v_cons_buff_2() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @v_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @v_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @w_cons_buff_3() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @w_cons_buff_2() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @w_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @w_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @l_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @l_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @m_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @m_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @n_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @n_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
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
  llvm.mlir.global external @n_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @n() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @m_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @m() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @l_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @l() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @w_cons() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @w() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @v_cons() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @v() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @u_cons() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @u() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @visC_cons() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @visC() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @visR_cons() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @visR() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @in3_cons() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in3() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in2_cons() {addr_space = 0 : i32} : !llvm.array<6912 x bf16>
  llvm.mlir.global external @in2() {addr_space = 0 : i32} : !llvm.array<6912 x bf16>
  llvm.mlir.global external @in1_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @in1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @in0_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.func @vector_scale(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @passthrough(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @vector_add(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @vector_mult(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @mean(!llvm.ptr, !llvm.ptr, i32, i32) attributes {sym_visibility = "private"}
  llvm.func @sin_float_1024(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @cos_float_1024(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @vector_sub(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @core_3_2() {
    %0 = llvm.mlir.constant(49 : i32) : i32
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(1 : i32) : i32
    %3 = llvm.mlir.constant(-1 : i32) : i32
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %6 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%4 : i64)
  ^bb1(%7: i64):  // 2 preds: ^bb0, ^bb2
    %8 = llvm.icmp "slt" %7, %5 : i64
    llvm.cond_br %8, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    %9 = llvm.add %7, %6 : i64
    llvm.br ^bb1(%9 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_3_4() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(49 : i32) : i32
    %2 = llvm.mlir.constant(4 : i32) : i32
    %3 = llvm.mlir.constant(-4 : i32) : i32
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(9223372036854775804 : index) : i64
    %6 = llvm.mlir.constant(4 : index) : i64
    llvm.br ^bb1(%4 : i64)
  ^bb1(%7: i64):  // 2 preds: ^bb0, ^bb2
    %8 = llvm.icmp "slt" %7, %5 : i64
    llvm.cond_br %8, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    %9 = llvm.add %7, %6 : i64
    llvm.br ^bb1(%9 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_3_5() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(49 : i32) : i32
    %2 = llvm.mlir.constant(4 : i32) : i32
    %3 = llvm.mlir.constant(-4 : i32) : i32
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(9223372036854775804 : index) : i64
    %6 = llvm.mlir.constant(4 : index) : i64
    llvm.br ^bb1(%4 : i64)
  ^bb1(%7: i64):  // 2 preds: ^bb0, ^bb2
    %8 = llvm.icmp "slt" %7, %5 : i64
    llvm.cond_br %8, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    %9 = llvm.add %7, %6 : i64
    llvm.br ^bb1(%9 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_2_2() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(49 : i32) : i32
    %3 = llvm.mlir.constant(51 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(4 : i32) : i32
    %6 = llvm.mlir.constant(-4 : i32) : i32
    %7 = llvm.mlir.constant(-1 : i32) : i32
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(9223372036854775804 : index) : i64
    %10 = llvm.mlir.constant(4 : index) : i64
    llvm.br ^bb1(%8 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb2
    %12 = llvm.icmp "slt" %11, %9 : i64
    llvm.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %13 = llvm.add %11, %10 : i64
    llvm.br ^bb1(%13 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_1_2() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(49 : i32) : i32
    %3 = llvm.mlir.constant(51 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(4 : i32) : i32
    %6 = llvm.mlir.constant(-4 : i32) : i32
    %7 = llvm.mlir.constant(-1 : i32) : i32
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(9223372036854775804 : index) : i64
    %10 = llvm.mlir.constant(4 : index) : i64
    llvm.br ^bb1(%8 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb2
    %12 = llvm.icmp "slt" %11, %9 : i64
    llvm.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %13 = llvm.add %11, %10 : i64
    llvm.br ^bb1(%13 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_0_2() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(49 : i32) : i32
    %3 = llvm.mlir.constant(51 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(4 : i32) : i32
    %6 = llvm.mlir.constant(-4 : i32) : i32
    %7 = llvm.mlir.constant(-1 : i32) : i32
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(9223372036854775804 : index) : i64
    %10 = llvm.mlir.constant(4 : index) : i64
    llvm.br ^bb1(%8 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb2
    %12 = llvm.icmp "slt" %11, %9 : i64
    llvm.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %13 = llvm.add %11, %10 : i64
    llvm.br ^bb1(%13 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.return
  }
}

