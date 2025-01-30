module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @infactor_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @infactor_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @out_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @out_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.func @debug_i32(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.put.ms(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.get.ss() -> !llvm.struct<(i32, i32)> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.mcd.write.vec(vector<16xi32>, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.scd.read.vec(i32) -> vector<16xi32> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.acquire(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.release(i32, i32) attributes {sym_visibility = "private"}
  llvm.mlir.global external @out_cons() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @out() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @infactor_cons() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @infactor() {addr_space = 0 : i32} : !llvm.array<1 x i32>
  llvm.mlir.global external @in_cons() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.mlir.global external @in() {addr_space = 0 : i32} : !llvm.array<1024 x i32>
  llvm.func @vector_scalar_mul_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @passthrough(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @mean(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @core_0_2() {
    %0 = llvm.mlir.addressof @in_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @out_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @in_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @out_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(53 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(49 : i32) : i32
    %9 = llvm.mlir.constant(52 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(1024 : i32) : i32
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(4 : index) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%15 : i64)
  ^bb1(%18: i64):  // 2 preds: ^bb0, ^bb4
    %19 = llvm.icmp "slt" %18, %16 : i64
    llvm.cond_br %19, ^bb2(%15 : i64), ^bb5
  ^bb2(%20: i64):  // 2 preds: ^bb1, ^bb3
    %21 = llvm.icmp "slt" %20, %14 : i64
    llvm.cond_br %21, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %22 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    llvm.intr.assume %4 ["align"(%22, %3 : !llvm.ptr, i64)] : i1
    %23 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    llvm.intr.assume %4 ["align"(%23, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%23, %22, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %24 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    %25 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x i32>
    llvm.intr.assume %4 ["align"(%25, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%25, %24, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %26 = llvm.add %20, %13 : i64
    llvm.br ^bb2(%26 : i64)
  ^bb4:  // pred: ^bb2
    %27 = llvm.add %18, %17 : i64
    llvm.br ^bb1(%27 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
}

