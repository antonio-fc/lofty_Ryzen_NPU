module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<24 x i32>
  llvm.mlir.global external @in_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<24 x i32>
  llvm.mlir.global external @in0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<8 x i32>
  llvm.mlir.global external @in0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<8 x i32>
  llvm.mlir.global external @in1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<8 x i32>
  llvm.mlir.global external @in1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<8 x i32>
  llvm.mlir.global external @in2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<8 x i32>
  llvm.mlir.global external @in2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<8 x i32>
  llvm.func @debug_i32(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.put.ms(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.get.ss() -> !llvm.struct<(i32, i32)> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.mcd.write.vec(vector<16xi32>, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.scd.read.vec(i32) -> vector<16xi32> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.acquire(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.release(i32, i32) attributes {sym_visibility = "private"}
  llvm.mlir.global external @in2_cons() {addr_space = 0 : i32} : !llvm.array<8 x i32>
  llvm.mlir.global external @in2() {addr_space = 0 : i32} : !llvm.array<8 x i32>
  llvm.mlir.global external @in1_cons() {addr_space = 0 : i32} : !llvm.array<8 x i32>
  llvm.mlir.global external @in1() {addr_space = 0 : i32} : !llvm.array<8 x i32>
  llvm.mlir.global external @in0_cons() {addr_space = 0 : i32} : !llvm.array<8 x i32>
  llvm.mlir.global external @in0() {addr_space = 0 : i32} : !llvm.array<8 x i32>
  llvm.mlir.global external @in_cons() {addr_space = 0 : i32} : !llvm.array<24 x i32>
  llvm.mlir.global external @in() {addr_space = 0 : i32} : !llvm.array<24 x i32>
  llvm.func @core_0_4() {
    %0 = llvm.mlir.addressof @in2_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.constant(32 : index) : i64
    %2 = llvm.mlir.constant(true) : i1
    %3 = llvm.mlir.addressof @in2_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.constant(48 : i32) : i32
    %5 = llvm.mlir.constant(49 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(-1 : i32) : i32
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(8 : index) : i64
    %11 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%8 : i64)
  ^bb1(%12: i64):  // 2 preds: ^bb0, ^bb8
    %13 = llvm.icmp "slt" %12, %10 : i64
    llvm.cond_br %13, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%5, %7) : (i32, i32) -> ()
    llvm.br ^bb3(%8 : i64)
  ^bb3(%14: i64):  // 2 preds: ^bb2, ^bb4
    %15 = llvm.icmp "slt" %14, %10 : i64
    llvm.cond_br %15, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %16 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x i32>
    llvm.intr.assume %2 ["align"(%16, %1 : !llvm.ptr, i64)] : i1
    %17 = llvm.getelementptr %16[%14] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %18 = llvm.load %17 : !llvm.ptr -> i32
    %19 = llvm.add %18, %6 : i32
    llvm.intr.assume %2 ["align"(%16, %1 : !llvm.ptr, i64)] : i1
    llvm.store %19, %17 : i32, !llvm.ptr
    %20 = llvm.add %14, %9 : i64
    llvm.br ^bb3(%20 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%4, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%5, %7) : (i32, i32) -> ()
    llvm.br ^bb6(%8 : i64)
  ^bb6(%21: i64):  // 2 preds: ^bb5, ^bb7
    %22 = llvm.icmp "slt" %21, %10 : i64
    llvm.cond_br %22, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %23 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x i32>
    llvm.intr.assume %2 ["align"(%23, %1 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %23[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %25 = llvm.load %24 : !llvm.ptr -> i32
    %26 = llvm.add %25, %6 : i32
    llvm.intr.assume %2 ["align"(%23, %1 : !llvm.ptr, i64)] : i1
    llvm.store %26, %24 : i32, !llvm.ptr
    %27 = llvm.add %21, %9 : i64
    llvm.br ^bb6(%27 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%4, %6) : (i32, i32) -> ()
    %28 = llvm.add %12, %11 : i64
    llvm.br ^bb1(%28 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_3() {
    %0 = llvm.mlir.addressof @in1_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.constant(32 : index) : i64
    %2 = llvm.mlir.constant(true) : i1
    %3 = llvm.mlir.addressof @in1_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.constant(48 : i32) : i32
    %5 = llvm.mlir.constant(49 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(-1 : i32) : i32
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(8 : index) : i64
    %11 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%8 : i64)
  ^bb1(%12: i64):  // 2 preds: ^bb0, ^bb8
    %13 = llvm.icmp "slt" %12, %10 : i64
    llvm.cond_br %13, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%5, %7) : (i32, i32) -> ()
    llvm.br ^bb3(%8 : i64)
  ^bb3(%14: i64):  // 2 preds: ^bb2, ^bb4
    %15 = llvm.icmp "slt" %14, %10 : i64
    llvm.cond_br %15, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %16 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x i32>
    llvm.intr.assume %2 ["align"(%16, %1 : !llvm.ptr, i64)] : i1
    %17 = llvm.getelementptr %16[%14] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %18 = llvm.load %17 : !llvm.ptr -> i32
    %19 = llvm.add %18, %6 : i32
    llvm.intr.assume %2 ["align"(%16, %1 : !llvm.ptr, i64)] : i1
    llvm.store %19, %17 : i32, !llvm.ptr
    %20 = llvm.add %14, %9 : i64
    llvm.br ^bb3(%20 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%4, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%5, %7) : (i32, i32) -> ()
    llvm.br ^bb6(%8 : i64)
  ^bb6(%21: i64):  // 2 preds: ^bb5, ^bb7
    %22 = llvm.icmp "slt" %21, %10 : i64
    llvm.cond_br %22, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %23 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x i32>
    llvm.intr.assume %2 ["align"(%23, %1 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %23[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %25 = llvm.load %24 : !llvm.ptr -> i32
    %26 = llvm.add %25, %6 : i32
    llvm.intr.assume %2 ["align"(%23, %1 : !llvm.ptr, i64)] : i1
    llvm.store %26, %24 : i32, !llvm.ptr
    %27 = llvm.add %21, %9 : i64
    llvm.br ^bb6(%27 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%4, %6) : (i32, i32) -> ()
    %28 = llvm.add %12, %11 : i64
    llvm.br ^bb1(%28 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_2() {
    %0 = llvm.mlir.addressof @in0_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.constant(32 : index) : i64
    %2 = llvm.mlir.constant(true) : i1
    %3 = llvm.mlir.addressof @in0_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.constant(48 : i32) : i32
    %5 = llvm.mlir.constant(49 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(-1 : i32) : i32
    %8 = llvm.mlir.constant(0 : index) : i64
    %9 = llvm.mlir.constant(8 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%8 : i64)
  ^bb1(%12: i64):  // 2 preds: ^bb0, ^bb8
    %13 = llvm.icmp "slt" %12, %9 : i64
    llvm.cond_br %13, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%5, %7) : (i32, i32) -> ()
    llvm.br ^bb3(%8 : i64)
  ^bb3(%14: i64):  // 2 preds: ^bb2, ^bb4
    %15 = llvm.icmp "slt" %14, %9 : i64
    llvm.cond_br %15, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %16 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x i32>
    llvm.intr.assume %2 ["align"(%16, %1 : !llvm.ptr, i64)] : i1
    %17 = llvm.getelementptr %16[%14] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %18 = llvm.load %17 : !llvm.ptr -> i32
    %19 = llvm.add %18, %6 : i32
    llvm.intr.assume %2 ["align"(%16, %1 : !llvm.ptr, i64)] : i1
    llvm.store %19, %17 : i32, !llvm.ptr
    %20 = llvm.add %14, %10 : i64
    llvm.br ^bb3(%20 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%4, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%5, %7) : (i32, i32) -> ()
    llvm.br ^bb6(%8 : i64)
  ^bb6(%21: i64):  // 2 preds: ^bb5, ^bb7
    %22 = llvm.icmp "slt" %21, %9 : i64
    llvm.cond_br %22, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %23 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<8 x i32>
    llvm.intr.assume %2 ["align"(%23, %1 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %23[%21] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %25 = llvm.load %24 : !llvm.ptr -> i32
    %26 = llvm.add %25, %6 : i32
    llvm.intr.assume %2 ["align"(%23, %1 : !llvm.ptr, i64)] : i1
    llvm.store %26, %24 : i32, !llvm.ptr
    %27 = llvm.add %21, %10 : i64
    llvm.br ^bb6(%27 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%4, %6) : (i32, i32) -> ()
    %28 = llvm.add %12, %11 : i64
    llvm.br ^bb1(%28 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return
  }
}

