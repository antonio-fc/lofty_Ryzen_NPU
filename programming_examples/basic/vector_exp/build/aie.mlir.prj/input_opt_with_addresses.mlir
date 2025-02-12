module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @inA_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4096 x bf16>
  llvm.mlir.global external @inA_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4096 x bf16>
  llvm.mlir.global external @memA0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memA0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memA1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memA1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memA2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memA2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memA3_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memA3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memC0_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memC0_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memC1_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memC1_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memC2_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memC2_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memC3_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memC3_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @outC_buff_1() {addr_space = 0 : i32} : !llvm.array<4096 x bf16>
  llvm.mlir.global external @outC_buff_0() {addr_space = 0 : i32} : !llvm.array<4096 x bf16>
  llvm.func @debug_i32(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.put.ms(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.get.ss() -> !llvm.struct<(i32, i32)> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.mcd.write.vec(vector<16xi32>, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.scd.read.vec(i32) -> vector<16xi32> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.acquire(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.release(i32, i32) attributes {sym_visibility = "private"}
  llvm.mlir.global external @outC_cons() {addr_space = 0 : i32} : !llvm.array<4096 x bf16>
  llvm.mlir.global external @outC() {addr_space = 0 : i32} : !llvm.array<4096 x bf16>
  llvm.mlir.global external @memC3_cons() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memC3() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memC2_cons() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memC2() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memC1_cons() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memC1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memC0_cons() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memC0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memA3_cons() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memA3() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memA2_cons() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memA2() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memA1_cons() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memA1() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memA0_cons() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @memA0() {addr_space = 0 : i32} : !llvm.array<1024 x bf16>
  llvm.mlir.global external @inA_cons() {addr_space = 0 : i32} : !llvm.array<4096 x bf16>
  llvm.mlir.global external @inA() {addr_space = 0 : i32} : !llvm.array<4096 x bf16>
  llvm.func @exp_bf16_1024(!llvm.ptr, !llvm.ptr) attributes {sym_visibility = "private"}
  llvm.func @core_0_5() {
    %0 = llvm.mlir.addressof @memA3_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @memC3_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @memA3_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(31 : index) : i64
    %4 = llvm.mlir.addressof @memC3_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(51 : i32) : i32
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(49 : i32) : i32
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(1 : i32) : i32
    %10 = llvm.mlir.constant(-1 : i32) : i32
    %11 = llvm.mlir.constant(16 : index) : i64
    %12 = llvm.mlir.constant(2 : index) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(4294967295 : index) : i64
    llvm.br ^bb1(%13 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb4
    %17 = llvm.icmp "slt" %16, %15 : i64
    llvm.cond_br %17, ^bb2(%13 : i64), ^bb5
  ^bb2(%18: i64):  // 2 preds: ^bb1, ^bb3
    %19 = llvm.icmp "slt" %18, %11 : i64
    llvm.cond_br %19, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%8, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %10) : (i32, i32) -> ()
    %20 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    %21 = llvm.ptrtoint %20 : !llvm.ptr to i64
    %22 = llvm.and %21, %3  : i64
    %23 = llvm.icmp "eq" %22, %13 : i64
    llvm.intr.assume %23 : i1
    %24 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    %25 = llvm.ptrtoint %24 : !llvm.ptr to i64
    %26 = llvm.and %25, %3  : i64
    %27 = llvm.icmp "eq" %26, %13 : i64
    llvm.intr.assume %27 : i1
    llvm.call @exp_bf16_1024(%24, %20) : (!llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %10) : (i32, i32) -> ()
    %28 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    %29 = llvm.ptrtoint %28 : !llvm.ptr to i64
    %30 = llvm.and %29, %3  : i64
    %31 = llvm.icmp "eq" %30, %13 : i64
    llvm.intr.assume %31 : i1
    %32 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    %33 = llvm.ptrtoint %32 : !llvm.ptr to i64
    %34 = llvm.and %33, %3  : i64
    %35 = llvm.icmp "eq" %34, %13 : i64
    llvm.intr.assume %35 : i1
    llvm.call @exp_bf16_1024(%32, %28) : (!llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    %36 = llvm.add %18, %12 : i64
    llvm.br ^bb2(%36 : i64)
  ^bb4:  // pred: ^bb2
    %37 = llvm.add %16, %14 : i64
    llvm.br ^bb1(%37 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_4() {
    %0 = llvm.mlir.addressof @memA2_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @memC2_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @memA2_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(31 : index) : i64
    %4 = llvm.mlir.addressof @memC2_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(51 : i32) : i32
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(49 : i32) : i32
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(1 : i32) : i32
    %10 = llvm.mlir.constant(-1 : i32) : i32
    %11 = llvm.mlir.constant(16 : index) : i64
    %12 = llvm.mlir.constant(2 : index) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(4294967295 : index) : i64
    llvm.br ^bb1(%13 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb4
    %17 = llvm.icmp "slt" %16, %15 : i64
    llvm.cond_br %17, ^bb2(%13 : i64), ^bb5
  ^bb2(%18: i64):  // 2 preds: ^bb1, ^bb3
    %19 = llvm.icmp "slt" %18, %11 : i64
    llvm.cond_br %19, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%8, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %10) : (i32, i32) -> ()
    %20 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    %21 = llvm.ptrtoint %20 : !llvm.ptr to i64
    %22 = llvm.and %21, %3  : i64
    %23 = llvm.icmp "eq" %22, %13 : i64
    llvm.intr.assume %23 : i1
    %24 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    %25 = llvm.ptrtoint %24 : !llvm.ptr to i64
    %26 = llvm.and %25, %3  : i64
    %27 = llvm.icmp "eq" %26, %13 : i64
    llvm.intr.assume %27 : i1
    llvm.call @exp_bf16_1024(%24, %20) : (!llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %10) : (i32, i32) -> ()
    %28 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    %29 = llvm.ptrtoint %28 : !llvm.ptr to i64
    %30 = llvm.and %29, %3  : i64
    %31 = llvm.icmp "eq" %30, %13 : i64
    llvm.intr.assume %31 : i1
    %32 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    %33 = llvm.ptrtoint %32 : !llvm.ptr to i64
    %34 = llvm.and %33, %3  : i64
    %35 = llvm.icmp "eq" %34, %13 : i64
    llvm.intr.assume %35 : i1
    llvm.call @exp_bf16_1024(%32, %28) : (!llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    %36 = llvm.add %18, %12 : i64
    llvm.br ^bb2(%36 : i64)
  ^bb4:  // pred: ^bb2
    %37 = llvm.add %16, %14 : i64
    llvm.br ^bb1(%37 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_3() {
    %0 = llvm.mlir.addressof @memA1_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @memC1_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @memA1_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(31 : index) : i64
    %4 = llvm.mlir.addressof @memC1_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(51 : i32) : i32
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(49 : i32) : i32
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(1 : i32) : i32
    %10 = llvm.mlir.constant(-1 : i32) : i32
    %11 = llvm.mlir.constant(16 : index) : i64
    %12 = llvm.mlir.constant(2 : index) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(4294967295 : index) : i64
    llvm.br ^bb1(%13 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb4
    %17 = llvm.icmp "slt" %16, %15 : i64
    llvm.cond_br %17, ^bb2(%13 : i64), ^bb5
  ^bb2(%18: i64):  // 2 preds: ^bb1, ^bb3
    %19 = llvm.icmp "slt" %18, %11 : i64
    llvm.cond_br %19, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%8, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %10) : (i32, i32) -> ()
    %20 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    %21 = llvm.ptrtoint %20 : !llvm.ptr to i64
    %22 = llvm.and %21, %3  : i64
    %23 = llvm.icmp "eq" %22, %13 : i64
    llvm.intr.assume %23 : i1
    %24 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    %25 = llvm.ptrtoint %24 : !llvm.ptr to i64
    %26 = llvm.and %25, %3  : i64
    %27 = llvm.icmp "eq" %26, %13 : i64
    llvm.intr.assume %27 : i1
    llvm.call @exp_bf16_1024(%24, %20) : (!llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %10) : (i32, i32) -> ()
    %28 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    %29 = llvm.ptrtoint %28 : !llvm.ptr to i64
    %30 = llvm.and %29, %3  : i64
    %31 = llvm.icmp "eq" %30, %13 : i64
    llvm.intr.assume %31 : i1
    %32 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    %33 = llvm.ptrtoint %32 : !llvm.ptr to i64
    %34 = llvm.and %33, %3  : i64
    %35 = llvm.icmp "eq" %34, %13 : i64
    llvm.intr.assume %35 : i1
    llvm.call @exp_bf16_1024(%32, %28) : (!llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    %36 = llvm.add %18, %12 : i64
    llvm.br ^bb2(%36 : i64)
  ^bb4:  // pred: ^bb2
    %37 = llvm.add %16, %14 : i64
    llvm.br ^bb1(%37 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_2() {
    %0 = llvm.mlir.addressof @memA0_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @memC0_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @memA0_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(31 : index) : i64
    %4 = llvm.mlir.addressof @memC0_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(51 : i32) : i32
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(49 : i32) : i32
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(1 : i32) : i32
    %10 = llvm.mlir.constant(-1 : i32) : i32
    %11 = llvm.mlir.constant(2 : index) : i64
    %12 = llvm.mlir.constant(16 : index) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(4294967295 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%13 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb4
    %17 = llvm.icmp "slt" %16, %14 : i64
    llvm.cond_br %17, ^bb2(%13 : i64), ^bb5
  ^bb2(%18: i64):  // 2 preds: ^bb1, ^bb3
    %19 = llvm.icmp "slt" %18, %12 : i64
    llvm.cond_br %19, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%8, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %10) : (i32, i32) -> ()
    %20 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    %21 = llvm.ptrtoint %20 : !llvm.ptr to i64
    %22 = llvm.and %21, %3  : i64
    %23 = llvm.icmp "eq" %22, %13 : i64
    llvm.intr.assume %23 : i1
    %24 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    %25 = llvm.ptrtoint %24 : !llvm.ptr to i64
    %26 = llvm.and %25, %3  : i64
    %27 = llvm.icmp "eq" %26, %13 : i64
    llvm.intr.assume %27 : i1
    llvm.call @exp_bf16_1024(%24, %20) : (!llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %10) : (i32, i32) -> ()
    %28 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    %29 = llvm.ptrtoint %28 : !llvm.ptr to i64
    %30 = llvm.and %29, %3  : i64
    %31 = llvm.icmp "eq" %30, %13 : i64
    llvm.intr.assume %31 : i1
    %32 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x bf16>
    %33 = llvm.ptrtoint %32 : !llvm.ptr to i64
    %34 = llvm.and %33, %3  : i64
    %35 = llvm.icmp "eq" %34, %13 : i64
    llvm.intr.assume %35 : i1
    llvm.call @exp_bf16_1024(%32, %28) : (!llvm.ptr, !llvm.ptr) -> ()
    llvm.call @llvm.aie2.release(%6, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    %36 = llvm.add %18, %11 : i64
    llvm.br ^bb2(%36 : i64)
  ^bb4:  // pred: ^bb2
    %37 = llvm.add %16, %15 : i64
    llvm.br ^bb1(%37 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
}

