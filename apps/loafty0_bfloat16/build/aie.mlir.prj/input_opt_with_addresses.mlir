module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in0_5_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in0_5_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in0_4_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in0_4_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in0_3_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in0_3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in0_2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in0_2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in0_1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in0_1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in0_0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in0_0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
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
  llvm.mlir.global external @of_add_w0_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_uv0_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_uv0_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_u1_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_v1_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_v1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w1_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
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
  llvm.mlir.global external @in0_0_cons() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in0_1_cons() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in0_2_cons() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in0_3_cons() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in0_4_cons() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in0_5_cons() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.mlir.global external @in0() {addr_space = 0 : i32} : !llvm.array<6 x bf16>
  llvm.func @passthrough(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @mean(!llvm.ptr, !llvm.ptr, i32, i32) attributes {sym_visibility = "private"}
  llvm.func @core_2_2() {
    %0 = llvm.mlir.constant(49 : i32) : i32
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(1 : i32) : i32
    %3 = llvm.mlir.constant(-1 : i32) : i32
    %4 = llvm.mlir.constant(2 : index) : i64
    %5 = llvm.mlir.constant(8192 : index) : i64
    %6 = llvm.mlir.constant(0 : index) : i64
    %7 = llvm.mlir.constant(14 : index) : i64
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
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(53 : i32) : i32
    %3 = llvm.mlir.constant(52 : i32) : i32
    %4 = llvm.mlir.constant(51 : i32) : i32
    %5 = llvm.mlir.constant(49 : i32) : i32
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
  llvm.func @core_3_3() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(53 : i32) : i32
    %2 = llvm.mlir.constant(52 : i32) : i32
    %3 = llvm.mlir.constant(49 : i32) : i32
    %4 = llvm.mlir.constant(51 : i32) : i32
    %5 = llvm.mlir.constant(1 : i32) : i32
    %6 = llvm.mlir.constant(8192 : index) : i64
    %7 = llvm.mlir.constant(-1 : i32) : i32
    %8 = llvm.mlir.constant(2 : index) : i64
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%9 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb8
    %12 = llvm.icmp "slt" %11, %10 : i64
    llvm.cond_br %12, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.br ^bb3(%9 : i64)
  ^bb3(%13: i64):  // 2 preds: ^bb2, ^bb4
    %14 = llvm.icmp "slt" %13, %6 : i64
    llvm.cond_br %14, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    %15 = llvm.add %13, %8 : i64
    llvm.br ^bb3(%15 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.br ^bb6(%9 : i64)
  ^bb6(%16: i64):  // 2 preds: ^bb5, ^bb7
    %17 = llvm.icmp "slt" %16, %6 : i64
    llvm.cond_br %17, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    %18 = llvm.add %16, %8 : i64
    llvm.br ^bb6(%18 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%0, %5) : (i32, i32) -> ()
    %19 = llvm.add %11, %8 : i64
    llvm.br ^bb1(%19 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_3_4() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(53 : i32) : i32
    %2 = llvm.mlir.constant(52 : i32) : i32
    %3 = llvm.mlir.constant(49 : i32) : i32
    %4 = llvm.mlir.constant(51 : i32) : i32
    %5 = llvm.mlir.constant(1 : i32) : i32
    %6 = llvm.mlir.constant(8192 : index) : i64
    %7 = llvm.mlir.constant(-1 : i32) : i32
    %8 = llvm.mlir.constant(2 : index) : i64
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%9 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb8
    %12 = llvm.icmp "slt" %11, %10 : i64
    llvm.cond_br %12, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.br ^bb3(%9 : i64)
  ^bb3(%13: i64):  // 2 preds: ^bb2, ^bb4
    %14 = llvm.icmp "slt" %13, %6 : i64
    llvm.cond_br %14, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    %15 = llvm.add %13, %8 : i64
    llvm.br ^bb3(%15 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.br ^bb6(%9 : i64)
  ^bb6(%16: i64):  // 2 preds: ^bb5, ^bb7
    %17 = llvm.icmp "slt" %16, %6 : i64
    llvm.cond_br %17, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    %18 = llvm.add %16, %8 : i64
    llvm.br ^bb6(%18 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%0, %5) : (i32, i32) -> ()
    %19 = llvm.add %11, %8 : i64
    llvm.br ^bb1(%19 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_3_5() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(17 : i32) : i32
    %2 = llvm.mlir.constant(16 : i32) : i32
    %3 = llvm.mlir.constant(49 : i32) : i32
    %4 = llvm.mlir.constant(51 : i32) : i32
    %5 = llvm.mlir.constant(1 : i32) : i32
    %6 = llvm.mlir.constant(8192 : index) : i64
    %7 = llvm.mlir.constant(-1 : i32) : i32
    %8 = llvm.mlir.constant(2 : index) : i64
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%9 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb8
    %12 = llvm.icmp "slt" %11, %10 : i64
    llvm.cond_br %12, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.br ^bb3(%9 : i64)
  ^bb3(%13: i64):  // 2 preds: ^bb2, ^bb4
    %14 = llvm.icmp "slt" %13, %6 : i64
    llvm.cond_br %14, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    %15 = llvm.add %13, %8 : i64
    llvm.br ^bb3(%15 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.br ^bb6(%9 : i64)
  ^bb6(%16: i64):  // 2 preds: ^bb5, ^bb7
    %17 = llvm.icmp "slt" %16, %6 : i64
    llvm.cond_br %17, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    %18 = llvm.add %16, %8 : i64
    llvm.br ^bb6(%18 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%0, %5) : (i32, i32) -> ()
    %19 = llvm.add %11, %8 : i64
    llvm.br ^bb1(%19 : i64)
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
    %1 = llvm.mlir.constant(20 : i32) : i32
    %2 = llvm.mlir.constant(51 : i32) : i32
    %3 = llvm.mlir.constant(50 : i32) : i32
    %4 = llvm.mlir.constant(49 : i32) : i32
    %5 = llvm.mlir.constant(21 : i32) : i32
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
  llvm.func @core_0_3() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(53 : i32) : i32
    %2 = llvm.mlir.constant(52 : i32) : i32
    %3 = llvm.mlir.constant(49 : i32) : i32
    %4 = llvm.mlir.constant(51 : i32) : i32
    %5 = llvm.mlir.constant(1 : i32) : i32
    %6 = llvm.mlir.constant(8192 : index) : i64
    %7 = llvm.mlir.constant(-1 : i32) : i32
    %8 = llvm.mlir.constant(2 : index) : i64
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%9 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb8
    %12 = llvm.icmp "slt" %11, %10 : i64
    llvm.cond_br %12, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.br ^bb3(%9 : i64)
  ^bb3(%13: i64):  // 2 preds: ^bb2, ^bb4
    %14 = llvm.icmp "slt" %13, %6 : i64
    llvm.cond_br %14, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    %15 = llvm.add %13, %8 : i64
    llvm.br ^bb3(%15 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.br ^bb6(%9 : i64)
  ^bb6(%16: i64):  // 2 preds: ^bb5, ^bb7
    %17 = llvm.icmp "slt" %16, %6 : i64
    llvm.cond_br %17, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    %18 = llvm.add %16, %8 : i64
    llvm.br ^bb6(%18 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%0, %5) : (i32, i32) -> ()
    %19 = llvm.add %11, %8 : i64
    llvm.br ^bb1(%19 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_4() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(53 : i32) : i32
    %2 = llvm.mlir.constant(52 : i32) : i32
    %3 = llvm.mlir.constant(49 : i32) : i32
    %4 = llvm.mlir.constant(51 : i32) : i32
    %5 = llvm.mlir.constant(1 : i32) : i32
    %6 = llvm.mlir.constant(8192 : index) : i64
    %7 = llvm.mlir.constant(-1 : i32) : i32
    %8 = llvm.mlir.constant(2 : index) : i64
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%9 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb8
    %12 = llvm.icmp "slt" %11, %10 : i64
    llvm.cond_br %12, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.br ^bb3(%9 : i64)
  ^bb3(%13: i64):  // 2 preds: ^bb2, ^bb4
    %14 = llvm.icmp "slt" %13, %6 : i64
    llvm.cond_br %14, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    %15 = llvm.add %13, %8 : i64
    llvm.br ^bb3(%15 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.br ^bb6(%9 : i64)
  ^bb6(%16: i64):  // 2 preds: ^bb5, ^bb7
    %17 = llvm.icmp "slt" %16, %6 : i64
    llvm.cond_br %17, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    %18 = llvm.add %16, %8 : i64
    llvm.br ^bb6(%18 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%0, %5) : (i32, i32) -> ()
    %19 = llvm.add %11, %8 : i64
    llvm.br ^bb1(%19 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_5() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(53 : i32) : i32
    %2 = llvm.mlir.constant(52 : i32) : i32
    %3 = llvm.mlir.constant(49 : i32) : i32
    %4 = llvm.mlir.constant(51 : i32) : i32
    %5 = llvm.mlir.constant(1 : i32) : i32
    %6 = llvm.mlir.constant(8192 : index) : i64
    %7 = llvm.mlir.constant(-1 : i32) : i32
    %8 = llvm.mlir.constant(2 : index) : i64
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%9 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb8
    %12 = llvm.icmp "slt" %11, %10 : i64
    llvm.cond_br %12, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.br ^bb3(%9 : i64)
  ^bb3(%13: i64):  // 2 preds: ^bb2, ^bb4
    %14 = llvm.icmp "slt" %13, %6 : i64
    llvm.cond_br %14, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    %15 = llvm.add %13, %8 : i64
    llvm.br ^bb3(%15 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.br ^bb6(%9 : i64)
  ^bb6(%16: i64):  // 2 preds: ^bb5, ^bb7
    %17 = llvm.icmp "slt" %16, %6 : i64
    llvm.cond_br %17, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %5) : (i32, i32) -> ()
    %18 = llvm.add %16, %8 : i64
    llvm.br ^bb6(%18 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%0, %5) : (i32, i32) -> ()
    %19 = llvm.add %11, %8 : i64
    llvm.br ^bb1(%19 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
}

