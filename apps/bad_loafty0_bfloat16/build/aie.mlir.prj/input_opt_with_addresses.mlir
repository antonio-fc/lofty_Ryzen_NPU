module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<23050 x bf16>
  llvm.mlir.global external @in1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<23050 x bf16>
  llvm.mlir.global external @in2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<23050 x bf16>
  llvm.mlir.global external @in2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<23050 x bf16>
  llvm.mlir.global external @of_in_mainA0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainA0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainB0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainB0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainA1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainA1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainB1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainB1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainA2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainA2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainB2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainB2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainA3_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainA3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainB3_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainB3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainA4_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainA4_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainB4_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainB4_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_add_u0_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_v0_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_v0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w0_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w0_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_uv0_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_uv0_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_u1_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_v1_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_v1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w1_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w1_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_uv1_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_uv1_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2real0_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2real0_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2real0_1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2real0_1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2real0_0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2real0_0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2real1_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2real1_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2real1_1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2real1_1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2real1_0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2real1_0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_realJoin0_buff_1() {addr_space = 0 : i32} : !llvm.array<1152 x bf16>
  llvm.mlir.global external @of_realJoin0_buff_0() {addr_space = 0 : i32} : !llvm.array<1152 x bf16>
  llvm.mlir.global external @of_imagJoin0_buff_1() {addr_space = 0 : i32} : !llvm.array<1152 x bf16>
  llvm.mlir.global external @of_imagJoin0_buff_0() {addr_space = 0 : i32} : !llvm.array<1152 x bf16>
  llvm.mlir.global external @of_realJoin1_buff_1() {addr_space = 0 : i32} : !llvm.array<1152 x bf16>
  llvm.mlir.global external @of_realJoin1_buff_0() {addr_space = 0 : i32} : !llvm.array<1152 x bf16>
  llvm.mlir.global external @of_imagJoin1_buff_1() {addr_space = 0 : i32} : !llvm.array<1152 x bf16>
  llvm.mlir.global external @of_imagJoin1_buff_0() {addr_space = 0 : i32} : !llvm.array<1152 x bf16>
  llvm.mlir.global external @of_real_joined_buff_1() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_real_joined_buff_0() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_real_joined_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_real_joined_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_imag_joined_buff_1() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_imag_joined_buff_0() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_imag_joined_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_imag_joined_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @sub_buff_1() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @sub_buff_0() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
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
  llvm.mlir.global external @sub() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_imag_joined_cons() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_imag_joined() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_real_joined_cons() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_real_joined() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_imagJoin1_cons() {addr_space = 0 : i32} : !llvm.array<1152 x bf16>
  llvm.mlir.global external @of_imagJoin1() {addr_space = 0 : i32} : !llvm.array<1152 x bf16>
  llvm.mlir.global external @of_realJoin1_cons() {addr_space = 0 : i32} : !llvm.array<1152 x bf16>
  llvm.mlir.global external @of_realJoin1() {addr_space = 0 : i32} : !llvm.array<1152 x bf16>
  llvm.mlir.global external @of_imagJoin0_cons() {addr_space = 0 : i32} : !llvm.array<1152 x bf16>
  llvm.mlir.global external @of_imagJoin0() {addr_space = 0 : i32} : !llvm.array<1152 x bf16>
  llvm.mlir.global external @of_realJoin0_cons() {addr_space = 0 : i32} : !llvm.array<1152 x bf16>
  llvm.mlir.global external @of_realJoin0() {addr_space = 0 : i32} : !llvm.array<1152 x bf16>
  llvm.mlir.global external @of_add2real1_0_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2real1_1_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2real1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2real0_0_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2real0_1_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2real0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_uv1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w1_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_v1_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_v1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_u1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_uv0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w0_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_v0_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_v0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_u0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_mainB4_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainB4() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainA4_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainA4() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainB3_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainB3() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainA3_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainA3() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainB2_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainB2() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainA2_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainA2() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainB1_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainB1() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainA1_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainA1() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainB0_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainB0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainA0_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_mainA0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @in2_cons() {addr_space = 0 : i32} : !llvm.array<23050 x bf16>
  llvm.mlir.global external @in2() {addr_space = 0 : i32} : !llvm.array<23050 x bf16>
  llvm.mlir.global external @in1_cons() {addr_space = 0 : i32} : !llvm.array<23050 x bf16>
  llvm.mlir.global external @in1() {addr_space = 0 : i32} : !llvm.array<23050 x bf16>
  llvm.mlir.global external @in0_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.func @passthrough(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @mean(!llvm.ptr, !llvm.ptr, i32, i32) attributes {sym_visibility = "private"}
  llvm.func @core_2_2() {
    %0 = llvm.mlir.constant(51 : i32) : i32
    %1 = llvm.mlir.constant(20 : i32) : i32
    %2 = llvm.mlir.constant(21 : i32) : i32
    %3 = llvm.mlir.constant(50 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1 : i32) : i32
    %6 = llvm.mlir.constant(2 : index) : i64
    %7 = llvm.mlir.constant(8192 : index) : i64
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(14 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%8 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb4
    %12 = llvm.icmp "slt" %11, %9 : i64
    llvm.cond_br %12, ^bb2(%8 : i64), ^bb5
  ^bb2(%13: i64):  // 2 preds: ^bb1, ^bb3
    %14 = llvm.icmp "slt" %13, %7 : i64
    llvm.cond_br %14, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%3, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %15 = llvm.add %13, %6 : i64
    llvm.br ^bb2(%15 : i64)
  ^bb4:  // pred: ^bb2
    %16 = llvm.add %11, %10 : i64
    llvm.br ^bb1(%16 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_1_2() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(53 : i32) : i32
    %3 = llvm.mlir.constant(52 : i32) : i32
    %4 = llvm.mlir.constant(51 : i32) : i32
    %5 = llvm.mlir.constant(49 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(-1 : i32) : i32
    %8 = llvm.mlir.constant(2 : index) : i64
    %9 = llvm.mlir.constant(16384 : index) : i64
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mlir.constant(14 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%10 : i64)
  ^bb1(%13: i64):  // 2 preds: ^bb0, ^bb4
    %14 = llvm.icmp "slt" %13, %11 : i64
    llvm.cond_br %14, ^bb2(%10 : i64), ^bb5
  ^bb2(%15: i64):  // 2 preds: ^bb1, ^bb3
    %16 = llvm.icmp "slt" %15, %9 : i64
    llvm.cond_br %16, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%5, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%5, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    %17 = llvm.add %15, %8 : i64
    llvm.br ^bb2(%17 : i64)
  ^bb4:  // pred: ^bb2
    %18 = llvm.add %13, %12 : i64
    llvm.br ^bb1(%18 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_3_2() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(50 : i32) : i32
    %2 = llvm.mlir.constant(53 : i32) : i32
    %3 = llvm.mlir.constant(52 : i32) : i32
    %4 = llvm.mlir.constant(51 : i32) : i32
    %5 = llvm.mlir.constant(49 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(16384 : index) : i64
    %8 = llvm.mlir.constant(-1 : i32) : i32
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(14 : index) : i64
    %11 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%9 : i64)
  ^bb1(%12: i64):  // 2 preds: ^bb0, ^bb8
    %13 = llvm.icmp "slt" %12, %10 : i64
    llvm.cond_br %13, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%5, %8) : (i32, i32) -> ()
    llvm.br ^bb3(%9 : i64)
  ^bb3(%14: i64):  // 2 preds: ^bb2, ^bb4
    %15 = llvm.icmp "slt" %14, %7 : i64
    llvm.cond_br %15, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    %16 = llvm.add %14, %11 : i64
    llvm.br ^bb3(%16 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%5, %8) : (i32, i32) -> ()
    llvm.br ^bb6(%9 : i64)
  ^bb6(%17: i64):  // 2 preds: ^bb5, ^bb7
    %18 = llvm.icmp "slt" %17, %7 : i64
    llvm.cond_br %18, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    %19 = llvm.add %17, %11 : i64
    llvm.br ^bb6(%19 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    %20 = llvm.add %12, %11 : i64
    llvm.br ^bb1(%20 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_2_3() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(50 : i32) : i32
    %2 = llvm.mlir.constant(53 : i32) : i32
    %3 = llvm.mlir.constant(52 : i32) : i32
    %4 = llvm.mlir.constant(51 : i32) : i32
    %5 = llvm.mlir.constant(49 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(16384 : index) : i64
    %8 = llvm.mlir.constant(-1 : i32) : i32
    %9 = llvm.mlir.constant(2 : index) : i64
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%10 : i64)
  ^bb1(%12: i64):  // 2 preds: ^bb0, ^bb8
    %13 = llvm.icmp "slt" %12, %11 : i64
    llvm.cond_br %13, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%5, %8) : (i32, i32) -> ()
    llvm.br ^bb3(%10 : i64)
  ^bb3(%14: i64):  // 2 preds: ^bb2, ^bb4
    %15 = llvm.icmp "slt" %14, %7 : i64
    llvm.cond_br %15, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    %16 = llvm.add %14, %9 : i64
    llvm.br ^bb3(%16 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%5, %8) : (i32, i32) -> ()
    llvm.br ^bb6(%10 : i64)
  ^bb6(%17: i64):  // 2 preds: ^bb5, ^bb7
    %18 = llvm.icmp "slt" %17, %7 : i64
    llvm.cond_br %18, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    %19 = llvm.add %17, %9 : i64
    llvm.br ^bb6(%19 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    %20 = llvm.add %12, %9 : i64
    llvm.br ^bb1(%20 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_2_4() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(36 : i32) : i32
    %2 = llvm.mlir.constant(51 : i32) : i32
    %3 = llvm.mlir.constant(50 : i32) : i32
    %4 = llvm.mlir.constant(49 : i32) : i32
    %5 = llvm.mlir.constant(37 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(-1 : i32) : i32
    %8 = llvm.mlir.constant(16384 : index) : i64
    %9 = llvm.mlir.constant(2 : index) : i64
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%10 : i64)
  ^bb1(%13: i64):  // 2 preds: ^bb0, ^bb4
    %14 = llvm.icmp "slt" %13, %12 : i64
    llvm.cond_br %14, ^bb2(%10 : i64), ^bb5
  ^bb2(%15: i64):  // 2 preds: ^bb1, ^bb3
    %16 = llvm.icmp "slt" %15, %8 : i64
    llvm.cond_br %16, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%5, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%5, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    %17 = llvm.add %15, %9 : i64
    llvm.br ^bb2(%17 : i64)
  ^bb4:  // pred: ^bb2
    %18 = llvm.add %13, %11 : i64
    llvm.br ^bb1(%18 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_2_5() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(53 : i32) : i32
    %2 = llvm.mlir.constant(52 : i32) : i32
    %3 = llvm.mlir.constant(51 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1 : i32) : i32
    %6 = llvm.mlir.constant(16384 : index) : i64
    %7 = llvm.mlir.constant(2 : index) : i64
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%8 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb4
    %12 = llvm.icmp "slt" %11, %10 : i64
    llvm.cond_br %12, ^bb2(%8 : i64), ^bb5
  ^bb2(%13: i64):  // 2 preds: ^bb1, ^bb3
    %14 = llvm.icmp "slt" %13, %6 : i64
    llvm.cond_br %14, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%3, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %15 = llvm.add %13, %7 : i64
    llvm.br ^bb2(%15 : i64)
  ^bb4:  // pred: ^bb2
    %16 = llvm.add %11, %9 : i64
    llvm.br ^bb1(%16 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_3_3() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(51 : i32) : i32
    %2 = llvm.mlir.constant(50 : i32) : i32
    %3 = llvm.mlir.constant(49 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(8192 : index) : i64
    %6 = llvm.mlir.constant(-1 : i32) : i32
    %7 = llvm.mlir.constant(2 : index) : i64
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%8 : i64)
  ^bb1(%10: i64):  // 2 preds: ^bb0, ^bb8
    %11 = llvm.icmp "slt" %10, %9 : i64
    llvm.cond_br %11, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb3(%8 : i64)
  ^bb3(%12: i64):  // 2 preds: ^bb2, ^bb4
    %13 = llvm.icmp "slt" %12, %5 : i64
    llvm.cond_br %13, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %14 = llvm.add %12, %7 : i64
    llvm.br ^bb3(%14 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb6(%8 : i64)
  ^bb6(%15: i64):  // 2 preds: ^bb5, ^bb7
    %16 = llvm.icmp "slt" %15, %5 : i64
    llvm.cond_br %16, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %17 = llvm.add %15, %7 : i64
    llvm.br ^bb6(%17 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %18 = llvm.add %10, %7 : i64
    llvm.br ^bb1(%18 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_3_4() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(51 : i32) : i32
    %2 = llvm.mlir.constant(50 : i32) : i32
    %3 = llvm.mlir.constant(49 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(8192 : index) : i64
    %6 = llvm.mlir.constant(-1 : i32) : i32
    %7 = llvm.mlir.constant(2 : index) : i64
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%8 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb12
    %12 = llvm.icmp "slt" %11, %10 : i64
    llvm.cond_br %12, ^bb2, ^bb13
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb3(%8 : i64)
  ^bb3(%13: i64):  // 2 preds: ^bb2, ^bb6
    %14 = llvm.icmp "slt" %13, %5 : i64
    llvm.cond_br %14, ^bb4(%8 : i64), ^bb7
  ^bb4(%15: i64):  // 2 preds: ^bb3, ^bb5
    %16 = llvm.icmp "slt" %15, %7 : i64
    llvm.cond_br %16, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %17 = llvm.add %15, %9 : i64
    llvm.br ^bb4(%17 : i64)
  ^bb6:  // pred: ^bb4
    %18 = llvm.add %13, %9 : i64
    llvm.br ^bb3(%18 : i64)
  ^bb7:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb8(%8 : i64)
  ^bb8(%19: i64):  // 2 preds: ^bb7, ^bb11
    %20 = llvm.icmp "slt" %19, %5 : i64
    llvm.cond_br %20, ^bb9(%8 : i64), ^bb12
  ^bb9(%21: i64):  // 2 preds: ^bb8, ^bb10
    %22 = llvm.icmp "slt" %21, %7 : i64
    llvm.cond_br %22, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %23 = llvm.add %21, %9 : i64
    llvm.br ^bb9(%23 : i64)
  ^bb11:  // pred: ^bb9
    %24 = llvm.add %19, %9 : i64
    llvm.br ^bb8(%24 : i64)
  ^bb12:  // pred: ^bb8
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %25 = llvm.add %11, %7 : i64
    llvm.br ^bb1(%25 : i64)
  ^bb13:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_3_5() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(17 : i32) : i32
    %2 = llvm.mlir.constant(16 : i32) : i32
    %3 = llvm.mlir.constant(49 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(8192 : index) : i64
    %6 = llvm.mlir.constant(-1 : i32) : i32
    %7 = llvm.mlir.constant(2 : index) : i64
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%8 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb12
    %12 = llvm.icmp "slt" %11, %10 : i64
    llvm.cond_br %12, ^bb2, ^bb13
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb3(%8 : i64)
  ^bb3(%13: i64):  // 2 preds: ^bb2, ^bb6
    %14 = llvm.icmp "slt" %13, %5 : i64
    llvm.cond_br %14, ^bb4(%8 : i64), ^bb7
  ^bb4(%15: i64):  // 2 preds: ^bb3, ^bb5
    %16 = llvm.icmp "slt" %15, %7 : i64
    llvm.cond_br %16, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %17 = llvm.add %15, %9 : i64
    llvm.br ^bb4(%17 : i64)
  ^bb6:  // pred: ^bb4
    %18 = llvm.add %13, %9 : i64
    llvm.br ^bb3(%18 : i64)
  ^bb7:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb8(%8 : i64)
  ^bb8(%19: i64):  // 2 preds: ^bb7, ^bb11
    %20 = llvm.icmp "slt" %19, %5 : i64
    llvm.cond_br %20, ^bb9(%8 : i64), ^bb12
  ^bb9(%21: i64):  // 2 preds: ^bb8, ^bb10
    %22 = llvm.icmp "slt" %21, %7 : i64
    llvm.cond_br %22, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %23 = llvm.add %21, %9 : i64
    llvm.br ^bb9(%23 : i64)
  ^bb11:  // pred: ^bb9
    %24 = llvm.add %19, %9 : i64
    llvm.br ^bb8(%24 : i64)
  ^bb12:  // pred: ^bb8
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %25 = llvm.add %11, %7 : i64
    llvm.br ^bb1(%25 : i64)
  ^bb13:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_2() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(50 : i32) : i32
    %2 = llvm.mlir.constant(53 : i32) : i32
    %3 = llvm.mlir.constant(52 : i32) : i32
    %4 = llvm.mlir.constant(51 : i32) : i32
    %5 = llvm.mlir.constant(49 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(16384 : index) : i64
    %8 = llvm.mlir.constant(-1 : i32) : i32
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(14 : index) : i64
    %11 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%9 : i64)
  ^bb1(%12: i64):  // 2 preds: ^bb0, ^bb8
    %13 = llvm.icmp "slt" %12, %10 : i64
    llvm.cond_br %13, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%5, %8) : (i32, i32) -> ()
    llvm.br ^bb3(%9 : i64)
  ^bb3(%14: i64):  // 2 preds: ^bb2, ^bb4
    %15 = llvm.icmp "slt" %14, %7 : i64
    llvm.cond_br %15, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    %16 = llvm.add %14, %11 : i64
    llvm.br ^bb3(%16 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%5, %8) : (i32, i32) -> ()
    llvm.br ^bb6(%9 : i64)
  ^bb6(%17: i64):  // 2 preds: ^bb5, ^bb7
    %18 = llvm.icmp "slt" %17, %7 : i64
    llvm.cond_br %18, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    %19 = llvm.add %17, %11 : i64
    llvm.br ^bb6(%19 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    %20 = llvm.add %12, %11 : i64
    llvm.br ^bb1(%20 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_1_3() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(50 : i32) : i32
    %2 = llvm.mlir.constant(53 : i32) : i32
    %3 = llvm.mlir.constant(52 : i32) : i32
    %4 = llvm.mlir.constant(51 : i32) : i32
    %5 = llvm.mlir.constant(49 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(16384 : index) : i64
    %8 = llvm.mlir.constant(-1 : i32) : i32
    %9 = llvm.mlir.constant(2 : index) : i64
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%10 : i64)
  ^bb1(%12: i64):  // 2 preds: ^bb0, ^bb8
    %13 = llvm.icmp "slt" %12, %11 : i64
    llvm.cond_br %13, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%5, %8) : (i32, i32) -> ()
    llvm.br ^bb3(%10 : i64)
  ^bb3(%14: i64):  // 2 preds: ^bb2, ^bb4
    %15 = llvm.icmp "slt" %14, %7 : i64
    llvm.cond_br %15, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    %16 = llvm.add %14, %9 : i64
    llvm.br ^bb3(%16 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%5, %8) : (i32, i32) -> ()
    llvm.br ^bb6(%10 : i64)
  ^bb6(%17: i64):  // 2 preds: ^bb5, ^bb7
    %18 = llvm.icmp "slt" %17, %7 : i64
    llvm.cond_br %18, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    %19 = llvm.add %17, %9 : i64
    llvm.br ^bb6(%19 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    %20 = llvm.add %12, %9 : i64
    llvm.br ^bb1(%20 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_1_4() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(34 : i32) : i32
    %2 = llvm.mlir.constant(51 : i32) : i32
    %3 = llvm.mlir.constant(50 : i32) : i32
    %4 = llvm.mlir.constant(49 : i32) : i32
    %5 = llvm.mlir.constant(35 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(-1 : i32) : i32
    %8 = llvm.mlir.constant(16384 : index) : i64
    %9 = llvm.mlir.constant(2 : index) : i64
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%10 : i64)
  ^bb1(%13: i64):  // 2 preds: ^bb0, ^bb4
    %14 = llvm.icmp "slt" %13, %12 : i64
    llvm.cond_br %14, ^bb2(%10 : i64), ^bb5
  ^bb2(%15: i64):  // 2 preds: ^bb1, ^bb3
    %16 = llvm.icmp "slt" %15, %8 : i64
    llvm.cond_br %16, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%5, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%5, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    %17 = llvm.add %15, %9 : i64
    llvm.br ^bb2(%17 : i64)
  ^bb4:  // pred: ^bb2
    %18 = llvm.add %13, %11 : i64
    llvm.br ^bb1(%18 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_1_5() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(51 : i32) : i32
    %2 = llvm.mlir.constant(50 : i32) : i32
    %3 = llvm.mlir.constant(49 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1 : i32) : i32
    %6 = llvm.mlir.constant(16384 : index) : i64
    %7 = llvm.mlir.constant(2 : index) : i64
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%8 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb4
    %12 = llvm.icmp "slt" %11, %10 : i64
    llvm.cond_br %12, ^bb2(%8 : i64), ^bb5
  ^bb2(%13: i64):  // 2 preds: ^bb1, ^bb3
    %14 = llvm.icmp "slt" %13, %6 : i64
    llvm.cond_br %14, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%3, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %15 = llvm.add %13, %7 : i64
    llvm.br ^bb2(%15 : i64)
  ^bb4:  // pred: ^bb2
    %16 = llvm.add %11, %9 : i64
    llvm.br ^bb1(%16 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_3() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(51 : i32) : i32
    %2 = llvm.mlir.constant(50 : i32) : i32
    %3 = llvm.mlir.constant(49 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(8192 : index) : i64
    %6 = llvm.mlir.constant(-1 : i32) : i32
    %7 = llvm.mlir.constant(2 : index) : i64
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%8 : i64)
  ^bb1(%10: i64):  // 2 preds: ^bb0, ^bb8
    %11 = llvm.icmp "slt" %10, %9 : i64
    llvm.cond_br %11, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb3(%8 : i64)
  ^bb3(%12: i64):  // 2 preds: ^bb2, ^bb4
    %13 = llvm.icmp "slt" %12, %5 : i64
    llvm.cond_br %13, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %14 = llvm.add %12, %7 : i64
    llvm.br ^bb3(%14 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb6(%8 : i64)
  ^bb6(%15: i64):  // 2 preds: ^bb5, ^bb7
    %16 = llvm.icmp "slt" %15, %5 : i64
    llvm.cond_br %16, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %17 = llvm.add %15, %7 : i64
    llvm.br ^bb6(%17 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %18 = llvm.add %10, %7 : i64
    llvm.br ^bb1(%18 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_4() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(51 : i32) : i32
    %2 = llvm.mlir.constant(50 : i32) : i32
    %3 = llvm.mlir.constant(49 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(8192 : index) : i64
    %6 = llvm.mlir.constant(-1 : i32) : i32
    %7 = llvm.mlir.constant(2 : index) : i64
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%8 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb12
    %12 = llvm.icmp "slt" %11, %10 : i64
    llvm.cond_br %12, ^bb2, ^bb13
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb3(%8 : i64)
  ^bb3(%13: i64):  // 2 preds: ^bb2, ^bb6
    %14 = llvm.icmp "slt" %13, %5 : i64
    llvm.cond_br %14, ^bb4(%8 : i64), ^bb7
  ^bb4(%15: i64):  // 2 preds: ^bb3, ^bb5
    %16 = llvm.icmp "slt" %15, %7 : i64
    llvm.cond_br %16, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %17 = llvm.add %15, %9 : i64
    llvm.br ^bb4(%17 : i64)
  ^bb6:  // pred: ^bb4
    %18 = llvm.add %13, %9 : i64
    llvm.br ^bb3(%18 : i64)
  ^bb7:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb8(%8 : i64)
  ^bb8(%19: i64):  // 2 preds: ^bb7, ^bb11
    %20 = llvm.icmp "slt" %19, %5 : i64
    llvm.cond_br %20, ^bb9(%8 : i64), ^bb12
  ^bb9(%21: i64):  // 2 preds: ^bb8, ^bb10
    %22 = llvm.icmp "slt" %21, %7 : i64
    llvm.cond_br %22, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %23 = llvm.add %21, %9 : i64
    llvm.br ^bb9(%23 : i64)
  ^bb11:  // pred: ^bb9
    %24 = llvm.add %19, %9 : i64
    llvm.br ^bb8(%24 : i64)
  ^bb12:  // pred: ^bb8
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %25 = llvm.add %11, %7 : i64
    llvm.br ^bb1(%25 : i64)
  ^bb13:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_5() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(51 : i32) : i32
    %2 = llvm.mlir.constant(50 : i32) : i32
    %3 = llvm.mlir.constant(49 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(8192 : index) : i64
    %6 = llvm.mlir.constant(-1 : i32) : i32
    %7 = llvm.mlir.constant(2 : index) : i64
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%8 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb12
    %12 = llvm.icmp "slt" %11, %10 : i64
    llvm.cond_br %12, ^bb2, ^bb13
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb3(%8 : i64)
  ^bb3(%13: i64):  // 2 preds: ^bb2, ^bb6
    %14 = llvm.icmp "slt" %13, %5 : i64
    llvm.cond_br %14, ^bb4(%8 : i64), ^bb7
  ^bb4(%15: i64):  // 2 preds: ^bb3, ^bb5
    %16 = llvm.icmp "slt" %15, %7 : i64
    llvm.cond_br %16, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %17 = llvm.add %15, %9 : i64
    llvm.br ^bb4(%17 : i64)
  ^bb6:  // pred: ^bb4
    %18 = llvm.add %13, %9 : i64
    llvm.br ^bb3(%18 : i64)
  ^bb7:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb8(%8 : i64)
  ^bb8(%19: i64):  // 2 preds: ^bb7, ^bb11
    %20 = llvm.icmp "slt" %19, %5 : i64
    llvm.cond_br %20, ^bb9(%8 : i64), ^bb12
  ^bb9(%21: i64):  // 2 preds: ^bb8, ^bb10
    %22 = llvm.icmp "slt" %21, %7 : i64
    llvm.cond_br %22, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %23 = llvm.add %21, %9 : i64
    llvm.br ^bb9(%23 : i64)
  ^bb11:  // pred: ^bb9
    %24 = llvm.add %19, %9 : i64
    llvm.br ^bb8(%24 : i64)
  ^bb12:  // pred: ^bb8
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %25 = llvm.add %11, %7 : i64
    llvm.br ^bb1(%25 : i64)
  ^bb13:  // pred: ^bb1
    llvm.return
  }
}

