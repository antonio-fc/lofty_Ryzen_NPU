module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in0_5_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @in0_5_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @in0_4_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @in0_4_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @in0_3_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @in0_3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @in0_2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @in0_2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @in0_1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @in0_1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @in0_0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @in0_0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @in1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<23050 x bf16>
  llvm.mlir.global external @in1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<23050 x bf16>
  llvm.mlir.global external @in2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<23050 x bf16>
  llvm.mlir.global external @in2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<23050 x bf16>
  llvm.mlir.global external @of_in_main00_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main01_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main02_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main03_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main04_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main10_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main11_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main12_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main13_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main14_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_add_u0_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_u1_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_v0_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_v0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_v1_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_v1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w0_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w1_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_uv0_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_uv1_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2main0_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2main0_1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2main0_0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2main1_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2main1_1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2main1_0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_join_real0_buff_0() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_join_real1_buff_0() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_join_imag0_buff_0() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_join_imag1_buff_0() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_real2sub_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_real2sub_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_imag2sub_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_imag2sub_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @test_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @test_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @test_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @test_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @out_buff_1() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @out_buff_0() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.func @debug_i32(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.put.ms(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.get.ss() -> !llvm.struct<(i32, i32)> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.mcd.write.vec(vector<16xi32>, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.scd.read.vec(i32) -> vector<16xi32> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.acquire(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.release(i32, i32) attributes {sym_visibility = "private"}
  llvm.mlir.global external @out_cons() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @out() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @test_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @test() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_imag2sub_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_imag2sub() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_real2sub_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_real2sub() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_join_imag1_cons() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_join_imag1() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_join_imag0_cons() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_join_imag0() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_join_real1_cons() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_join_real1() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_join_real0_cons() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_join_real0() {addr_space = 0 : i32} : !llvm.array<2304 x bf16>
  llvm.mlir.global external @of_add2main1_0_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2main1_1_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2main1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2main0_0_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2main0_1_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add2main0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_uv1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_uv0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w1_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w0_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_v1_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_v1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_v0_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_v0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_u1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_u0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_main14_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main14() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main13_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main13() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main12_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main12() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main11_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main11() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main10_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main10() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main04_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main04() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main03_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main03() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main02_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main02() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main01_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main01() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main00_cons() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @of_in_main00() {addr_space = 0 : i32} : !llvm.array<4610 x bf16>
  llvm.mlir.global external @in2_cons() {addr_space = 0 : i32} : !llvm.array<23050 x bf16>
  llvm.mlir.global external @in2() {addr_space = 0 : i32} : !llvm.array<23050 x bf16>
  llvm.mlir.global external @in1_cons() {addr_space = 0 : i32} : !llvm.array<23050 x bf16>
  llvm.mlir.global external @in1() {addr_space = 0 : i32} : !llvm.array<23050 x bf16>
  llvm.mlir.global external @in0_0_cons() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @in0_1_cons() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @in0_2_cons() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @in0_3_cons() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @in0_4_cons() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @in0_5_cons() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @in0() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.func @passthrough(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @core_2_2() {
    %0 = llvm.mlir.constant(51 : i32) : i32
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(49 : i32) : i32
    %3 = llvm.mlir.constant(50 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(-1 : i32) : i32
    %6 = llvm.mlir.constant(2 : index) : i64
    %7 = llvm.mlir.constant(512 : index) : i64
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
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
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
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%2, %5) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
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
    %0 = llvm.mlir.constant(16384 : index) : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(14 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%1 : i64)
  ^bb1(%4: i64):  // 2 preds: ^bb0, ^bb4
    %5 = llvm.icmp "slt" %4, %2 : i64
    llvm.cond_br %5, ^bb2(%1 : i64), ^bb5
  ^bb2(%6: i64):  // 2 preds: ^bb1, ^bb3
    %7 = llvm.icmp "slt" %6, %0 : i64
    llvm.cond_br %7, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %8 = llvm.add %6, %3 : i64
    llvm.br ^bb2(%8 : i64)
  ^bb4:  // pred: ^bb2
    %9 = llvm.add %4, %3 : i64
    llvm.br ^bb1(%9 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_3_2() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(50 : i32) : i32
    %2 = llvm.mlir.constant(51 : i32) : i32
    %3 = llvm.mlir.constant(49 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(16384 : index) : i64
    %6 = llvm.mlir.constant(-1 : i32) : i32
    %7 = llvm.mlir.constant(0 : index) : i64
    %8 = llvm.mlir.constant(14 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%7 : i64)
  ^bb1(%10: i64):  // 2 preds: ^bb0, ^bb5
    %11 = llvm.icmp "slt" %10, %8 : i64
    llvm.cond_br %11, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb3(%7 : i64)
  ^bb3(%12: i64):  // 2 preds: ^bb2, ^bb4
    %13 = llvm.icmp "slt" %12, %5 : i64
    llvm.cond_br %13, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %14 = llvm.add %12, %9 : i64
    llvm.br ^bb3(%14 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %15 = llvm.add %10, %9 : i64
    llvm.br ^bb1(%15 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_2_3() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(50 : i32) : i32
    %2 = llvm.mlir.constant(51 : i32) : i32
    %3 = llvm.mlir.constant(49 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(16384 : index) : i64
    %6 = llvm.mlir.constant(-1 : i32) : i32
    %7 = llvm.mlir.constant(0 : index) : i64
    %8 = llvm.mlir.constant(1 : index) : i64
    %9 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%7 : i64)
  ^bb1(%10: i64):  // 2 preds: ^bb0, ^bb5
    %11 = llvm.icmp "slt" %10, %9 : i64
    llvm.cond_br %11, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb3(%7 : i64)
  ^bb3(%12: i64):  // 2 preds: ^bb2, ^bb4
    %13 = llvm.icmp "slt" %12, %5 : i64
    llvm.cond_br %13, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %14 = llvm.add %12, %8 : i64
    llvm.br ^bb3(%14 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %15 = llvm.add %10, %8 : i64
    llvm.br ^bb1(%15 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_2() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(50 : i32) : i32
    %2 = llvm.mlir.constant(51 : i32) : i32
    %3 = llvm.mlir.constant(49 : i32) : i32
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(16384 : index) : i64
    %6 = llvm.mlir.constant(-1 : i32) : i32
    %7 = llvm.mlir.constant(0 : index) : i64
    %8 = llvm.mlir.constant(14 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%7 : i64)
  ^bb1(%10: i64):  // 2 preds: ^bb0, ^bb5
    %11 = llvm.icmp "slt" %10, %8 : i64
    llvm.cond_br %11, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%3, %6) : (i32, i32) -> ()
    llvm.br ^bb3(%7 : i64)
  ^bb3(%12: i64):  // 2 preds: ^bb2, ^bb4
    %13 = llvm.icmp "slt" %12, %5 : i64
    llvm.cond_br %13, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %4) : (i32, i32) -> ()
    %14 = llvm.add %12, %9 : i64
    llvm.br ^bb3(%14 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %4) : (i32, i32) -> ()
    %15 = llvm.add %10, %9 : i64
    llvm.br ^bb1(%15 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_1_3() {
    %0 = llvm.mlir.constant(48 : i32) : i32
    %1 = llvm.mlir.constant(50 : i32) : i32
    %2 = llvm.mlir.constant(55 : i32) : i32
    %3 = llvm.mlir.constant(54 : i32) : i32
    %4 = llvm.mlir.constant(51 : i32) : i32
    %5 = llvm.mlir.constant(49 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(16384 : index) : i64
    %8 = llvm.mlir.constant(-1 : i32) : i32
    %9 = llvm.mlir.constant(2 : index) : i64
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%10 : i64)
  ^bb1(%13: i64):  // 2 preds: ^bb0, ^bb5
    %14 = llvm.icmp "slt" %13, %12 : i64
    llvm.cond_br %14, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%5, %8) : (i32, i32) -> ()
    llvm.br ^bb3(%10 : i64)
  ^bb3(%15: i64):  // 2 preds: ^bb2, ^bb4
    %16 = llvm.icmp "slt" %15, %7 : i64
    llvm.cond_br %16, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    %17 = llvm.add %15, %9 : i64
    llvm.br ^bb3(%17 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    %18 = llvm.add %13, %11 : i64
    llvm.br ^bb1(%18 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_2_4() {
    %0 = llvm.mlir.constant(36 : i32) : i32
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(51 : i32) : i32
    %3 = llvm.mlir.constant(50 : i32) : i32
    %4 = llvm.mlir.constant(37 : i32) : i32
    %5 = llvm.mlir.constant(49 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(-1 : i32) : i32
    %8 = llvm.mlir.constant(16384 : index) : i64
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%9 : i64)
  ^bb1(%12: i64):  // 2 preds: ^bb0, ^bb4
    %13 = llvm.icmp "slt" %12, %11 : i64
    llvm.cond_br %13, ^bb2(%9 : i64), ^bb5
  ^bb2(%14: i64):  // 2 preds: ^bb1, ^bb3
    %15 = llvm.icmp "slt" %14, %8 : i64
    llvm.cond_br %15, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%5, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    %16 = llvm.add %14, %10 : i64
    llvm.br ^bb2(%16 : i64)
  ^bb4:  // pred: ^bb2
    %17 = llvm.add %12, %10 : i64
    llvm.br ^bb1(%17 : i64)
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
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%9 : i64)
  ^bb1(%12: i64):  // 2 preds: ^bb0, ^bb4
    %13 = llvm.icmp "slt" %12, %11 : i64
    llvm.cond_br %13, ^bb2(%9 : i64), ^bb5
  ^bb2(%14: i64):  // 2 preds: ^bb1, ^bb3
    %15 = llvm.icmp "slt" %14, %8 : i64
    llvm.cond_br %15, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%5, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    %16 = llvm.add %14, %10 : i64
    llvm.br ^bb2(%16 : i64)
  ^bb4:  // pred: ^bb2
    %17 = llvm.add %12, %10 : i64
    llvm.br ^bb1(%17 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_1_4() {
    %0 = llvm.mlir.constant(34 : i32) : i32
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(51 : i32) : i32
    %3 = llvm.mlir.constant(50 : i32) : i32
    %4 = llvm.mlir.constant(35 : i32) : i32
    %5 = llvm.mlir.constant(49 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(-1 : i32) : i32
    %8 = llvm.mlir.constant(16384 : index) : i64
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%9 : i64)
  ^bb1(%12: i64):  // 2 preds: ^bb0, ^bb4
    %13 = llvm.icmp "slt" %12, %11 : i64
    llvm.cond_br %13, ^bb2(%9 : i64), ^bb5
  ^bb2(%14: i64):  // 2 preds: ^bb1, ^bb3
    %15 = llvm.icmp "slt" %14, %8 : i64
    llvm.cond_br %15, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%5, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    %16 = llvm.add %14, %10 : i64
    llvm.br ^bb2(%16 : i64)
  ^bb4:  // pred: ^bb2
    %17 = llvm.add %12, %10 : i64
    llvm.br ^bb1(%17 : i64)
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
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%9 : i64)
  ^bb1(%12: i64):  // 2 preds: ^bb0, ^bb4
    %13 = llvm.icmp "slt" %12, %11 : i64
    llvm.cond_br %13, ^bb2(%9 : i64), ^bb5
  ^bb2(%14: i64):  // 2 preds: ^bb1, ^bb3
    %15 = llvm.icmp "slt" %14, %8 : i64
    llvm.cond_br %15, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%5, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %7) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    %16 = llvm.add %14, %10 : i64
    llvm.br ^bb2(%16 : i64)
  ^bb4:  // pred: ^bb2
    %17 = llvm.add %12, %10 : i64
    llvm.br ^bb1(%17 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_3_3() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(53 : i32) : i32
    %3 = llvm.mlir.constant(52 : i32) : i32
    %4 = llvm.mlir.constant(49 : i32) : i32
    %5 = llvm.mlir.constant(51 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(512 : index) : i64
    %8 = llvm.mlir.constant(-1 : i32) : i32
    %9 = llvm.mlir.constant(2 : index) : i64
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%10 : i64)
  ^bb1(%13: i64):  // 2 preds: ^bb0, ^bb5
    %14 = llvm.icmp "slt" %13, %12 : i64
    llvm.cond_br %14, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%5, %8) : (i32, i32) -> ()
    llvm.br ^bb3(%10 : i64)
  ^bb3(%15: i64):  // 2 preds: ^bb2, ^bb4
    %16 = llvm.icmp "slt" %15, %7 : i64
    llvm.cond_br %16, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    %17 = llvm.add %15, %9 : i64
    llvm.br ^bb3(%17 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    %18 = llvm.add %13, %11 : i64
    llvm.br ^bb1(%18 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_3_4() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(53 : i32) : i32
    %3 = llvm.mlir.constant(52 : i32) : i32
    %4 = llvm.mlir.constant(49 : i32) : i32
    %5 = llvm.mlir.constant(51 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(512 : index) : i64
    %8 = llvm.mlir.constant(-1 : i32) : i32
    %9 = llvm.mlir.constant(2 : index) : i64
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%10 : i64)
  ^bb1(%13: i64):  // 2 preds: ^bb0, ^bb5
    %14 = llvm.icmp "slt" %13, %12 : i64
    llvm.cond_br %14, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%5, %8) : (i32, i32) -> ()
    llvm.br ^bb3(%10 : i64)
  ^bb3(%15: i64):  // 2 preds: ^bb2, ^bb4
    %16 = llvm.icmp "slt" %15, %7 : i64
    llvm.cond_br %16, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    %17 = llvm.add %15, %9 : i64
    llvm.br ^bb3(%17 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    %18 = llvm.add %13, %11 : i64
    llvm.br ^bb1(%18 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_3_5() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(17 : i32) : i32
    %3 = llvm.mlir.constant(16 : i32) : i32
    %4 = llvm.mlir.constant(49 : i32) : i32
    %5 = llvm.mlir.constant(51 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(512 : index) : i64
    %8 = llvm.mlir.constant(-1 : i32) : i32
    %9 = llvm.mlir.constant(2 : index) : i64
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%10 : i64)
  ^bb1(%13: i64):  // 2 preds: ^bb0, ^bb5
    %14 = llvm.icmp "slt" %13, %12 : i64
    llvm.cond_br %14, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%5, %8) : (i32, i32) -> ()
    llvm.br ^bb3(%10 : i64)
  ^bb3(%15: i64):  // 2 preds: ^bb2, ^bb4
    %16 = llvm.icmp "slt" %15, %7 : i64
    llvm.cond_br %16, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    %17 = llvm.add %15, %9 : i64
    llvm.br ^bb3(%17 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    %18 = llvm.add %13, %11 : i64
    llvm.br ^bb1(%18 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_3() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(53 : i32) : i32
    %3 = llvm.mlir.constant(52 : i32) : i32
    %4 = llvm.mlir.constant(49 : i32) : i32
    %5 = llvm.mlir.constant(51 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(512 : index) : i64
    %8 = llvm.mlir.constant(-1 : i32) : i32
    %9 = llvm.mlir.constant(2 : index) : i64
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%10 : i64)
  ^bb1(%13: i64):  // 2 preds: ^bb0, ^bb5
    %14 = llvm.icmp "slt" %13, %12 : i64
    llvm.cond_br %14, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%5, %8) : (i32, i32) -> ()
    llvm.br ^bb3(%10 : i64)
  ^bb3(%15: i64):  // 2 preds: ^bb2, ^bb4
    %16 = llvm.icmp "slt" %15, %7 : i64
    llvm.cond_br %16, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    %17 = llvm.add %15, %9 : i64
    llvm.br ^bb3(%17 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    %18 = llvm.add %13, %11 : i64
    llvm.br ^bb1(%18 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_4() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(53 : i32) : i32
    %3 = llvm.mlir.constant(52 : i32) : i32
    %4 = llvm.mlir.constant(49 : i32) : i32
    %5 = llvm.mlir.constant(51 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(512 : index) : i64
    %8 = llvm.mlir.constant(-1 : i32) : i32
    %9 = llvm.mlir.constant(2 : index) : i64
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%10 : i64)
  ^bb1(%13: i64):  // 2 preds: ^bb0, ^bb5
    %14 = llvm.icmp "slt" %13, %12 : i64
    llvm.cond_br %14, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%5, %8) : (i32, i32) -> ()
    llvm.br ^bb3(%10 : i64)
  ^bb3(%15: i64):  // 2 preds: ^bb2, ^bb4
    %16 = llvm.icmp "slt" %15, %7 : i64
    llvm.cond_br %16, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    %17 = llvm.add %15, %9 : i64
    llvm.br ^bb3(%17 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    %18 = llvm.add %13, %11 : i64
    llvm.br ^bb1(%18 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_5() {
    %0 = llvm.mlir.constant(50 : i32) : i32
    %1 = llvm.mlir.constant(48 : i32) : i32
    %2 = llvm.mlir.constant(53 : i32) : i32
    %3 = llvm.mlir.constant(52 : i32) : i32
    %4 = llvm.mlir.constant(49 : i32) : i32
    %5 = llvm.mlir.constant(51 : i32) : i32
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(512 : index) : i64
    %8 = llvm.mlir.constant(-1 : i32) : i32
    %9 = llvm.mlir.constant(2 : index) : i64
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.mlir.constant(14 : index) : i64
    llvm.br ^bb1(%10 : i64)
  ^bb1(%13: i64):  // 2 preds: ^bb0, ^bb5
    %14 = llvm.icmp "slt" %13, %12 : i64
    llvm.cond_br %14, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%5, %8) : (i32, i32) -> ()
    llvm.br ^bb3(%10 : i64)
  ^bb3(%15: i64):  // 2 preds: ^bb2, ^bb4
    %16 = llvm.icmp "slt" %15, %7 : i64
    llvm.cond_br %16, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%4, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%3, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%2, %6) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%1, %6) : (i32, i32) -> ()
    %17 = llvm.add %15, %9 : i64
    llvm.br ^bb3(%17 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%0, %6) : (i32, i32) -> ()
    %18 = llvm.add %13, %11 : i64
    llvm.br ^bb1(%18 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
}

