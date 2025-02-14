module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in0_5_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_5_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_4_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_4_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_3_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @in2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_mainA01_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA01_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB21_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB21_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA02_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA02_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB22_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB22_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA03_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA03_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB23_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB23_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA11_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA11_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB31_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB31_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA12_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA12_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB32_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB32_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA13_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA13_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB33_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB33_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA01_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA01_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB21_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB21_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA02_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA02_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB22_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB22_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA03_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA03_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB23_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB23_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA11_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA11_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB31_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB31_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA12_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA12_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB32_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB32_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA13_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA13_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB33_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB33_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @out1_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @out2_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.func @debug_i32(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.put.ms(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.get.ss() -> !llvm.struct<(i32, i32)> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.mcd.write.vec(vector<16xi32>, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.scd.read.vec(i32) -> vector<16xi32> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.acquire(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.release(i32, i32) attributes {sym_visibility = "private"}
  llvm.mlir.global external @out2_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @out2() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @out1_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @out1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_out_mainB33_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB33() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA13_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA13() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB32_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB32() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA12_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA12() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB31_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB31() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA11_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA11() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB23_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB23() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA03_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA03() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB22_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB22() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA02_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA02() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB21_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainB21() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA01_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_out_mainA01() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB33_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB33() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA13_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA13() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB32_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB32() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA12_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA12() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB31_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB31() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA11_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA11() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB23_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB23() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA03_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA03() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB22_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB22() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA02_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA02() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB21_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainB21() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA01_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @of_in_mainA01() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @in2_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @in2() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @in1_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @in1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @in0_0_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_1_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_2_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_3_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_4_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_5_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.func @passthrough(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @core_3_5() {
    %0 = llvm.mlir.addressof @of_in_mainB33_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_out_mainB33_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_mainB33_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_out_mainB33_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(51 : i32) : i32
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(49 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(768 : i32) : i32
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%14 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb2
    %17 = llvm.icmp "slt" %16, %15 : i64
    llvm.cond_br %17, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %18 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%18, %3 : !llvm.ptr, i64)] : i1
    %19 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%19, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%19, %18, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %20 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%20, %3 : !llvm.ptr, i64)] : i1
    %21 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%21, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%21, %20, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %22 = llvm.add %16, %13 : i64
    llvm.br ^bb1(%22 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %23 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%23, %3 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%24, %23, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_1_5() {
    %0 = llvm.mlir.addressof @of_in_mainA13_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_out_mainA13_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_mainA13_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_out_mainA13_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(50 : i32) : i32
    %7 = llvm.mlir.constant(53 : i32) : i32
    %8 = llvm.mlir.constant(52 : i32) : i32
    %9 = llvm.mlir.constant(51 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(768 : i32) : i32
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%14 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb2
    %17 = llvm.icmp "slt" %16, %15 : i64
    llvm.cond_br %17, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %18 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%18, %3 : !llvm.ptr, i64)] : i1
    %19 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%19, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%19, %18, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %20 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%20, %3 : !llvm.ptr, i64)] : i1
    %21 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%21, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%21, %20, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %22 = llvm.add %16, %13 : i64
    llvm.br ^bb1(%22 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %23 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%23, %3 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%24, %23, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_3_4() {
    %0 = llvm.mlir.addressof @of_in_mainB32_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_out_mainB32_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_mainB32_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_out_mainB32_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(51 : i32) : i32
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(49 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(768 : i32) : i32
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%14 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb2
    %17 = llvm.icmp "slt" %16, %15 : i64
    llvm.cond_br %17, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %18 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%18, %3 : !llvm.ptr, i64)] : i1
    %19 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%19, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%19, %18, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %20 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%20, %3 : !llvm.ptr, i64)] : i1
    %21 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%21, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%21, %20, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %22 = llvm.add %16, %13 : i64
    llvm.br ^bb1(%22 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %23 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%23, %3 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%24, %23, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_1_4() {
    %0 = llvm.mlir.addressof @of_in_mainA12_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_out_mainA12_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_mainA12_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_out_mainA12_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(50 : i32) : i32
    %7 = llvm.mlir.constant(53 : i32) : i32
    %8 = llvm.mlir.constant(52 : i32) : i32
    %9 = llvm.mlir.constant(51 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(768 : i32) : i32
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%14 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb2
    %17 = llvm.icmp "slt" %16, %15 : i64
    llvm.cond_br %17, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %18 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%18, %3 : !llvm.ptr, i64)] : i1
    %19 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%19, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%19, %18, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %20 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%20, %3 : !llvm.ptr, i64)] : i1
    %21 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%21, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%21, %20, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %22 = llvm.add %16, %13 : i64
    llvm.br ^bb1(%22 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %23 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%23, %3 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%24, %23, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_3_3() {
    %0 = llvm.mlir.addressof @of_in_mainB31_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_out_mainB31_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_mainB31_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_out_mainB31_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(51 : i32) : i32
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(49 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(768 : i32) : i32
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %15 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%13 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb2
    %17 = llvm.icmp "slt" %16, %14 : i64
    llvm.cond_br %17, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %18 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%18, %3 : !llvm.ptr, i64)] : i1
    %19 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%19, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%19, %18, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %20 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%20, %3 : !llvm.ptr, i64)] : i1
    %21 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%21, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%21, %20, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %22 = llvm.add %16, %15 : i64
    llvm.br ^bb1(%22 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %23 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%23, %3 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%24, %23, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_1_3() {
    %0 = llvm.mlir.addressof @of_in_mainA11_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_out_mainA11_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_mainA11_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_out_mainA11_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(50 : i32) : i32
    %7 = llvm.mlir.constant(53 : i32) : i32
    %8 = llvm.mlir.constant(52 : i32) : i32
    %9 = llvm.mlir.constant(51 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(768 : i32) : i32
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %15 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%13 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb2
    %17 = llvm.icmp "slt" %16, %14 : i64
    llvm.cond_br %17, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %18 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%18, %3 : !llvm.ptr, i64)] : i1
    %19 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%19, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%19, %18, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %20 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%20, %3 : !llvm.ptr, i64)] : i1
    %21 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%21, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%21, %20, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %22 = llvm.add %16, %15 : i64
    llvm.br ^bb1(%22 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %23 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%23, %3 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%24, %23, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_2_5() {
    %0 = llvm.mlir.addressof @of_in_mainB23_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_out_mainB23_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_mainB23_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_out_mainB23_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(51 : i32) : i32
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(49 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(768 : i32) : i32
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%14 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb2
    %17 = llvm.icmp "slt" %16, %15 : i64
    llvm.cond_br %17, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %18 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%18, %3 : !llvm.ptr, i64)] : i1
    %19 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%19, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%19, %18, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %20 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%20, %3 : !llvm.ptr, i64)] : i1
    %21 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%21, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%21, %20, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %22 = llvm.add %16, %13 : i64
    llvm.br ^bb1(%22 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %23 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%23, %3 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%24, %23, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_0_5() {
    %0 = llvm.mlir.addressof @of_in_mainA03_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_out_mainA03_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_mainA03_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_out_mainA03_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(50 : i32) : i32
    %7 = llvm.mlir.constant(53 : i32) : i32
    %8 = llvm.mlir.constant(52 : i32) : i32
    %9 = llvm.mlir.constant(51 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(768 : i32) : i32
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%14 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb2
    %17 = llvm.icmp "slt" %16, %15 : i64
    llvm.cond_br %17, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %18 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%18, %3 : !llvm.ptr, i64)] : i1
    %19 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%19, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%19, %18, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %20 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%20, %3 : !llvm.ptr, i64)] : i1
    %21 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%21, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%21, %20, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %22 = llvm.add %16, %13 : i64
    llvm.br ^bb1(%22 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %23 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%23, %3 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%24, %23, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_2_4() {
    %0 = llvm.mlir.addressof @of_in_mainB22_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_out_mainB22_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_mainB22_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_out_mainB22_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(51 : i32) : i32
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(49 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(768 : i32) : i32
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%14 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb2
    %17 = llvm.icmp "slt" %16, %15 : i64
    llvm.cond_br %17, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %18 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%18, %3 : !llvm.ptr, i64)] : i1
    %19 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%19, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%19, %18, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %20 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%20, %3 : !llvm.ptr, i64)] : i1
    %21 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%21, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%21, %20, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %22 = llvm.add %16, %13 : i64
    llvm.br ^bb1(%22 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %23 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%23, %3 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%24, %23, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_0_4() {
    %0 = llvm.mlir.addressof @of_in_mainA02_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_out_mainA02_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_mainA02_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_out_mainA02_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(50 : i32) : i32
    %7 = llvm.mlir.constant(53 : i32) : i32
    %8 = llvm.mlir.constant(52 : i32) : i32
    %9 = llvm.mlir.constant(51 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(768 : i32) : i32
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%14 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb2
    %17 = llvm.icmp "slt" %16, %15 : i64
    llvm.cond_br %17, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %18 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%18, %3 : !llvm.ptr, i64)] : i1
    %19 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%19, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%19, %18, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %20 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%20, %3 : !llvm.ptr, i64)] : i1
    %21 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%21, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%21, %20, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %22 = llvm.add %16, %13 : i64
    llvm.br ^bb1(%22 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %23 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%23, %3 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%24, %23, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_2_3() {
    %0 = llvm.mlir.addressof @of_in_mainB21_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_out_mainB21_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_mainB21_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_out_mainB21_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(51 : i32) : i32
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(49 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(768 : i32) : i32
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %15 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%13 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb2
    %17 = llvm.icmp "slt" %16, %14 : i64
    llvm.cond_br %17, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %18 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%18, %3 : !llvm.ptr, i64)] : i1
    %19 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%19, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%19, %18, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %20 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%20, %3 : !llvm.ptr, i64)] : i1
    %21 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%21, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%21, %20, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %22 = llvm.add %16, %15 : i64
    llvm.br ^bb1(%22 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %23 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%23, %3 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%24, %23, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_0_3() {
    %0 = llvm.mlir.addressof @of_in_mainA01_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_out_mainA01_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_mainA01_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_out_mainA01_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(50 : i32) : i32
    %7 = llvm.mlir.constant(53 : i32) : i32
    %8 = llvm.mlir.constant(52 : i32) : i32
    %9 = llvm.mlir.constant(51 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(768 : i32) : i32
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %15 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%13 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb2
    %17 = llvm.icmp "slt" %16, %14 : i64
    llvm.cond_br %17, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %18 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%18, %3 : !llvm.ptr, i64)] : i1
    %19 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%19, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%19, %18, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %20 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%20, %3 : !llvm.ptr, i64)] : i1
    %21 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%21, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%21, %20, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %22 = llvm.add %16, %15 : i64
    llvm.br ^bb1(%22 : i64)
  ^bb3:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %23 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%23, %3 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%24, %23, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
}

