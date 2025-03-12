module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in0_5_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<24 x bf16>
  llvm.mlir.global external @in0_5_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<24 x bf16>
  llvm.mlir.global external @in0_4_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<24 x bf16>
  llvm.mlir.global external @in0_4_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<24 x bf16>
  llvm.mlir.global external @in0_3_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<24 x bf16>
  llvm.mlir.global external @in0_3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<24 x bf16>
  llvm.mlir.global external @in0_2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<24 x bf16>
  llvm.mlir.global external @in0_2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<24 x bf16>
  llvm.mlir.global external @in0_1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<24 x bf16>
  llvm.mlir.global external @in0_1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<24 x bf16>
  llvm.mlir.global external @in0_0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<24 x bf16>
  llvm.mlir.global external @in0_0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<24 x bf16>
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
  llvm.mlir.global external @sub2mean_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @sub2mean_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @out_buff_1() {addr_space = 0 : i32} : !llvm.array<8 x bf16>
  llvm.mlir.global external @out_buff_0() {addr_space = 0 : i32} : !llvm.array<8 x bf16>
  llvm.func @debug_i32(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.put.ms(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.get.ss() -> !llvm.struct<(i32, i32)> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.mcd.write.vec(vector<16xi32>, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.scd.read.vec(i32) -> vector<16xi32> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.acquire(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.release(i32, i32) attributes {sym_visibility = "private"}
  llvm.mlir.global external @out_cons() {addr_space = 0 : i32} : !llvm.array<8 x bf16>
  llvm.mlir.global external @out() {addr_space = 0 : i32} : !llvm.array<8 x bf16>
  llvm.mlir.global external @sub2mean() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
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
  llvm.mlir.global external @in0_0_cons() {addr_space = 0 : i32} : !llvm.array<24 x bf16>
  llvm.mlir.global external @in0_1_cons() {addr_space = 0 : i32} : !llvm.array<24 x bf16>
  llvm.mlir.global external @in0_2_cons() {addr_space = 0 : i32} : !llvm.array<24 x bf16>
  llvm.mlir.global external @in0_3_cons() {addr_space = 0 : i32} : !llvm.array<24 x bf16>
  llvm.mlir.global external @in0_4_cons() {addr_space = 0 : i32} : !llvm.array<24 x bf16>
  llvm.mlir.global external @in0_5_cons() {addr_space = 0 : i32} : !llvm.array<24 x bf16>
  llvm.mlir.global external @in0() {addr_space = 0 : i32} : !llvm.array<24 x bf16>
  llvm.func @passthrough(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @mean(!llvm.ptr, !llvm.ptr, i32, i32) attributes {sym_visibility = "private"}
  llvm.func @core_2_2() {
    %0 = llvm.mlir.addressof @out_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @sub2mean_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @sub2mean_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @out_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(49 : i32) : i32
    %7 = llvm.mlir.constant(16 : i32) : i32
    %8 = llvm.mlir.constant(17 : i32) : i32
    %9 = llvm.mlir.constant(48 : i32) : i32
    %10 = llvm.mlir.constant(7 : i32) : i32
    %11 = llvm.mlir.constant(6 : i32) : i32
    %12 = llvm.mlir.constant(5 : i32) : i32
    %13 = llvm.mlir.constant(4 : i32) : i32
    %14 = llvm.mlir.constant(3 : i32) : i32
    %15 = llvm.mlir.constant(2 : i32) : i32
    %16 = llvm.mlir.constant(1 : i32) : i32
    %17 = llvm.mlir.constant(288 : i32) : i32
    %18 = llvm.mlir.constant(0 : i32) : i32
    %19 = llvm.mlir.constant(-1 : i32) : i32
    %20 = llvm.mlir.constant(2 : index) : i64
    %21 = llvm.mlir.constant(2048 : index) : i64
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %24 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%22 : i64)
  ^bb1(%25: i64):  // 2 preds: ^bb0, ^bb4
    %26 = llvm.icmp "slt" %25, %23 : i64
    llvm.cond_br %26, ^bb2(%22 : i64), ^bb5
  ^bb2(%27: i64):  // 2 preds: ^bb1, ^bb3
    %28 = llvm.icmp "slt" %27, %21 : i64
    llvm.cond_br %28, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %19) : (i32, i32) -> ()
    %29 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x bf16>
    llvm.intr.assume %4 ["align"(%29, %3 : !llvm.ptr, i64)] : i1
    %30 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%30, %3 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%30, %29, %18, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %19) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%29, %3 : !llvm.ptr, i64)] : i1
    %31 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%31, %3 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %29, %16, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %19) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%29, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%30, %3 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%30, %29, %15, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %19) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%29, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%31, %3 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %29, %14, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %19) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%29, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%30, %3 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%30, %29, %13, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %19) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%29, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%31, %3 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %29, %12, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %19) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%29, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%30, %3 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%30, %29, %11, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %19) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%29, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%31, %3 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %29, %10, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %19) : (i32, i32) -> ()
    %32 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x bf16>
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%30, %3 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%30, %32, %18, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %19) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%31, %3 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %32, %16, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %19) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%30, %3 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%30, %32, %15, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %19) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%31, %3 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %32, %14, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %19) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%30, %3 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%30, %32, %13, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %19) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%31, %3 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %32, %12, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %19) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%30, %3 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%30, %32, %11, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %19) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%31, %3 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %32, %10, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %16) : (i32, i32) -> ()
    %33 = llvm.add %27, %20 : i64
    llvm.br ^bb2(%33 : i64)
  ^bb4:  // pred: ^bb2
    %34 = llvm.add %25, %24 : i64
    llvm.br ^bb1(%34 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_1_2() {
    %0 = llvm.mlir.constant(49 : i32) : i32
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(1 : i32) : i32
    %3 = llvm.mlir.constant(-1 : i32) : i32
    %4 = llvm.mlir.constant(2 : index) : i64
    %5 = llvm.mlir.constant(16384 : index) : i64
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
}

