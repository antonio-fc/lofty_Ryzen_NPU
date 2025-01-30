module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in2_cons_buff_2() {addr_space = 0 : i32} : !llvm.array<3072 x f32>
  llvm.mlir.global external @in2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<3072 x f32>
  llvm.mlir.global external @in2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<3072 x f32>
  llvm.mlir.global external @hh_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @hh_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @kk_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @kk_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in3_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.func @debug_i32(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.put.ms(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.get.ss() -> !llvm.struct<(i32, i32)> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.mcd.write.vec(vector<16xi32>, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.scd.read.vec(i32) -> vector<16xi32> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.acquire(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.release(i32, i32) attributes {sym_visibility = "private"}
  llvm.mlir.global external @out_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @out() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in3_cons() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in3() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @kk_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @kk() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @hh_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @hh() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in2_cons() {addr_space = 0 : i32} : !llvm.array<3072 x f32>
  llvm.mlir.global external @in2() {addr_space = 0 : i32} : !llvm.array<3072 x f32>
  llvm.mlir.global external @in1_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in0_cons() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.func @vector_scalar_mul_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @passthrough(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @vector_add_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @vector_mult_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @mean(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @core_3_2() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(49 : i32) : i32
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
  llvm.func @core_2_2() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(49 : i32) : i32
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
}

