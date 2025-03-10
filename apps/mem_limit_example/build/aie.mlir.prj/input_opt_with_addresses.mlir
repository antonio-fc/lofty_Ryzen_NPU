module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4 x bf16>
  llvm.mlir.global external @in1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4 x bf16>
  llvm.mlir.global external @in2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in3_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @visR_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @visR_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @visC_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @visC_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @u_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @u_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @v_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @v_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @w_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @w_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
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
  llvm.mlir.global external @w_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @w() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @v_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @v() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @u_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @u() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @visC_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @visC() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @visR_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @visR() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in3_cons() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in3() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in2_cons() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in2() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in1_cons() {addr_space = 0 : i32} : !llvm.array<4 x bf16>
  llvm.mlir.global external @in1() {addr_space = 0 : i32} : !llvm.array<4 x bf16>
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
    %2 = llvm.mlir.constant(1 : i32) : i32
    %3 = llvm.mlir.constant(-1 : i32) : i32
    %4 = llvm.mlir.constant(2 : index) : i64
    %5 = llvm.mlir.constant(4608 : index) : i64
    %6 = llvm.mlir.constant(0 : index) : i64
    %7 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %8 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%6 : i64)
  ^bb1(%9: i64):  // 2 preds: ^bb0, ^bb4
    %10 = llvm.icmp "slt" %9, %7 : i64
    llvm.cond_br %10, ^bb2(%6 : i64), ^bb5
  ^bb2(%11: i64):  // 2 preds: ^bb1, ^bb3
    %12 = llvm.icmp "slt" %11, %5 : i64
    llvm.cond_br %12, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    %13 = llvm.add %11, %4 : i64
    llvm.br ^bb2(%13 : i64)
  ^bb4:  // pred: ^bb2
    %14 = llvm.add %9, %8 : i64
    llvm.br ^bb1(%14 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_3_5() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(49 : i32) : i32
    %2 = llvm.mlir.constant(1 : i32) : i32
    %3 = llvm.mlir.constant(-1 : i32) : i32
    %4 = llvm.mlir.constant(2 : index) : i64
    %5 = llvm.mlir.constant(4608 : index) : i64
    %6 = llvm.mlir.constant(0 : index) : i64
    %7 = llvm.mlir.constant(1 : index) : i64
    %8 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%6 : i64)
  ^bb1(%9: i64):  // 2 preds: ^bb0, ^bb4
    %10 = llvm.icmp "slt" %9, %8 : i64
    llvm.cond_br %10, ^bb2(%6 : i64), ^bb5
  ^bb2(%11: i64):  // 2 preds: ^bb1, ^bb3
    %12 = llvm.icmp "slt" %11, %5 : i64
    llvm.cond_br %12, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%1, %3) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %2) : (i32, i32) -> ()
    %13 = llvm.add %11, %4 : i64
    llvm.br ^bb2(%13 : i64)
  ^bb4:  // pred: ^bb2
    %14 = llvm.add %9, %7 : i64
    llvm.br ^bb1(%14 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_2_2() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(49 : i32) : i32
    %3 = llvm.mlir.constant(51 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(4608 : index) : i64
    %6 = llvm.mlir.constant(-1 : i32) : i32
    %7 = llvm.mlir.constant(0 : index) : i64
    %8 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %9 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%7 : i64)
  ^bb1(%10: i64):  // 2 preds: ^bb0, ^bb8
    %11 = llvm.icmp "slt" %10, %8 : i64
    llvm.cond_br %11, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb3(%7 : i64)
  ^bb3(%12: i64):  // 2 preds: ^bb2, ^bb4
    %13 = llvm.icmp "slt" %12, %5 : i64
    llvm.cond_br %13, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %14 = llvm.add %12, %9 : i64
    llvm.br ^bb3(%14 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb6(%7 : i64)
  ^bb6(%15: i64):  // 2 preds: ^bb5, ^bb7
    %16 = llvm.icmp "slt" %15, %5 : i64
    llvm.cond_br %16, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %17 = llvm.add %15, %9 : i64
    llvm.br ^bb6(%17 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %18 = llvm.add %10, %9 : i64
    llvm.br ^bb1(%18 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb10(%7 : i64)
  ^bb10(%19: i64):  // 2 preds: ^bb9, ^bb11
    %20 = llvm.icmp "slt" %19, %5 : i64
    llvm.cond_br %20, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %21 = llvm.add %19, %9 : i64
    llvm.br ^bb10(%21 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_1_2() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(49 : i32) : i32
    %3 = llvm.mlir.constant(51 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(4608 : index) : i64
    %6 = llvm.mlir.constant(-1 : i32) : i32
    %7 = llvm.mlir.constant(0 : index) : i64
    %8 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %9 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%7 : i64)
  ^bb1(%10: i64):  // 2 preds: ^bb0, ^bb8
    %11 = llvm.icmp "slt" %10, %8 : i64
    llvm.cond_br %11, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb3(%7 : i64)
  ^bb3(%12: i64):  // 2 preds: ^bb2, ^bb4
    %13 = llvm.icmp "slt" %12, %5 : i64
    llvm.cond_br %13, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %14 = llvm.add %12, %9 : i64
    llvm.br ^bb3(%14 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb6(%7 : i64)
  ^bb6(%15: i64):  // 2 preds: ^bb5, ^bb7
    %16 = llvm.icmp "slt" %15, %5 : i64
    llvm.cond_br %16, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %17 = llvm.add %15, %9 : i64
    llvm.br ^bb6(%17 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %18 = llvm.add %10, %9 : i64
    llvm.br ^bb1(%18 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb10(%7 : i64)
  ^bb10(%19: i64):  // 2 preds: ^bb9, ^bb11
    %20 = llvm.icmp "slt" %19, %5 : i64
    llvm.cond_br %20, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %21 = llvm.add %19, %9 : i64
    llvm.br ^bb10(%21 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_0_2() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(49 : i32) : i32
    %3 = llvm.mlir.constant(51 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(4608 : index) : i64
    %6 = llvm.mlir.constant(-1 : i32) : i32
    %7 = llvm.mlir.constant(0 : index) : i64
    %8 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %9 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%7 : i64)
  ^bb1(%10: i64):  // 2 preds: ^bb0, ^bb8
    %11 = llvm.icmp "slt" %10, %8 : i64
    llvm.cond_br %11, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb3(%7 : i64)
  ^bb3(%12: i64):  // 2 preds: ^bb2, ^bb4
    %13 = llvm.icmp "slt" %12, %5 : i64
    llvm.cond_br %13, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %14 = llvm.add %12, %9 : i64
    llvm.br ^bb3(%14 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb6(%7 : i64)
  ^bb6(%15: i64):  // 2 preds: ^bb5, ^bb7
    %16 = llvm.icmp "slt" %15, %5 : i64
    llvm.cond_br %16, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %17 = llvm.add %15, %9 : i64
    llvm.br ^bb6(%17 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %18 = llvm.add %10, %9 : i64
    llvm.br ^bb1(%18 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb10(%7 : i64)
  ^bb10(%19: i64):  // 2 preds: ^bb9, ^bb11
    %20 = llvm.icmp "slt" %19, %5 : i64
    llvm.cond_br %20, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %21 = llvm.add %19, %9 : i64
    llvm.br ^bb10(%21 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.return
  }
}

