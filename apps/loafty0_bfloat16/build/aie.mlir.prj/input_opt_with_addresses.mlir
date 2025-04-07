module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<13824 x bf16>
  llvm.mlir.global external @in1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<13824 x bf16>
  llvm.mlir.global external @in2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<9216 x bf16>
  llvm.mlir.global external @in2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<9216 x bf16>
  llvm.mlir.global external @in3_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @of_in_u_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_u_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_v_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_v_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_w_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_w_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_l_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @of_in_m_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @of_in_n_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @of_in_visR_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_visR_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_visC_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_visC_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_addU_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_addV_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_addV_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_addW_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_addW_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_addW_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_addUV_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_scaleAddBL_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_scaleAddBL_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_trigFifo_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_trigFifo_1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_trigFifo_0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_multTrigR_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_multTrigC_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_reduceR_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_reduceR_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_reduceC_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_reduceC_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_reduc2SubR_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_reduc2SubR_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_reduc2SubC_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_sub2mean_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
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
  llvm.mlir.global external @of_sub2mean() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_reduc2SubC() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_reduc2SubR_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_reduc2SubR() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_reduceC() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_reduceR() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_multTrigC() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_multTrigR() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_trigFifo_0_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_trigFifo_1_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_trigFifo() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_scaleAddBL_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_scaleAddBL() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_addUV() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_addW_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_addW() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_addV_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_addV() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_addU() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_visC_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_visC() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_visR_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_visR() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_n_cons() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @of_in_n() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @of_in_m_cons() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @of_in_m() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @of_in_l_cons() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @of_in_l() {addr_space = 0 : i32} : !llvm.array<32 x bf16>
  llvm.mlir.global external @of_in_w_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_w() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_v_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_v() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_u_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_in_u() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @in3_cons() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in3() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in2_cons() {addr_space = 0 : i32} : !llvm.array<9216 x bf16>
  llvm.mlir.global external @in2() {addr_space = 0 : i32} : !llvm.array<9216 x bf16>
  llvm.mlir.global external @in1_cons() {addr_space = 0 : i32} : !llvm.array<13824 x bf16>
  llvm.mlir.global external @in1() {addr_space = 0 : i32} : !llvm.array<13824 x bf16>
  llvm.mlir.global external @in0_cons() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.mlir.global external @in0() {addr_space = 0 : i32} : !llvm.array<2 x bf16>
  llvm.func @passthrough(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @scale(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) attributes {sym_visibility = "private"}
  llvm.func @add_kernel(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @scale_single(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @cosine(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @sine(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @mul_kernel(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @sub_kernel(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @mean(!llvm.ptr, !llvm.ptr, i32, i32) attributes {sym_visibility = "private"}
  llvm.func @core_2_2() {
    %0 = llvm.mlir.addressof @out_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_sub2mean_buff_0 : !llvm.ptr
    %2 = llvm.mlir.constant(true) : i1
    %3 = llvm.mlir.addressof @out_buff_0 : !llvm.ptr
    %4 = llvm.mlir.constant(32 : index) : i64
    %5 = llvm.mlir.constant(51 : i32) : i32
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(49 : i32) : i32
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(31 : i32) : i32
    %10 = llvm.mlir.constant(30 : i32) : i32
    %11 = llvm.mlir.constant(29 : i32) : i32
    %12 = llvm.mlir.constant(28 : i32) : i32
    %13 = llvm.mlir.constant(27 : i32) : i32
    %14 = llvm.mlir.constant(26 : i32) : i32
    %15 = llvm.mlir.constant(25 : i32) : i32
    %16 = llvm.mlir.constant(24 : i32) : i32
    %17 = llvm.mlir.constant(23 : i32) : i32
    %18 = llvm.mlir.constant(22 : i32) : i32
    %19 = llvm.mlir.constant(21 : i32) : i32
    %20 = llvm.mlir.constant(20 : i32) : i32
    %21 = llvm.mlir.constant(19 : i32) : i32
    %22 = llvm.mlir.constant(18 : i32) : i32
    %23 = llvm.mlir.constant(17 : i32) : i32
    %24 = llvm.mlir.constant(16 : i32) : i32
    %25 = llvm.mlir.constant(15 : i32) : i32
    %26 = llvm.mlir.constant(14 : i32) : i32
    %27 = llvm.mlir.constant(13 : i32) : i32
    %28 = llvm.mlir.constant(12 : i32) : i32
    %29 = llvm.mlir.constant(11 : i32) : i32
    %30 = llvm.mlir.constant(10 : i32) : i32
    %31 = llvm.mlir.constant(9 : i32) : i32
    %32 = llvm.mlir.constant(8 : i32) : i32
    %33 = llvm.mlir.constant(7 : i32) : i32
    %34 = llvm.mlir.constant(6 : i32) : i32
    %35 = llvm.mlir.constant(5 : i32) : i32
    %36 = llvm.mlir.constant(4 : i32) : i32
    %37 = llvm.mlir.constant(3 : i32) : i32
    %38 = llvm.mlir.constant(2 : i32) : i32
    %39 = llvm.mlir.constant(1 : i32) : i32
    %40 = llvm.mlir.constant(0 : i32) : i32
    %41 = llvm.mlir.constant(4608 : i32) : i32
    %42 = llvm.mlir.constant(-1 : i32) : i32
    %43 = llvm.mlir.constant(2 : index) : i64
    %44 = llvm.mlir.constant(512 : index) : i64
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %47 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%45 : i64)
  ^bb1(%48: i64):  // 2 preds: ^bb0, ^bb4
    %49 = llvm.icmp "slt" %48, %46 : i64
    llvm.cond_br %49, ^bb2(%45 : i64), ^bb5
  ^bb2(%50: i64):  // 2 preds: ^bb1, ^bb3
    %51 = llvm.icmp "slt" %50, %44 : i64
    llvm.cond_br %51, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    %52 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x bf16>
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %40) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %39) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %38) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %37) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %36) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %35) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %34) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %33) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %32) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %31) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %30) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %29) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %28) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %27) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %26) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %25) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %24) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %23) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %22) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %21) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %20) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %19) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %18) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %16) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %15) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %14) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %13) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %12) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %11) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %10) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%52, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %52, %41, %9) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    %54 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x bf16>
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %40) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %39) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %38) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %37) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %36) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %35) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %34) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %33) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %32) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %31) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %30) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %29) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %28) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %27) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %26) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %25) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %24) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %23) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %22) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %21) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %20) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %19) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %18) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %16) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %15) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %14) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %13) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %12) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %11) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %10) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %42) : (i32, i32) -> ()
    llvm.intr.assume %2 ["align"(%54, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %2 ["align"(%53, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %41, %9) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %39) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %39) : (i32, i32) -> ()
    %55 = llvm.add %50, %43 : i64
    llvm.br ^bb2(%55 : i64)
  ^bb4:  // pred: ^bb2
    %56 = llvm.add %48, %47 : i64
    llvm.br ^bb1(%56 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_3_2() {
    %0 = llvm.mlir.addressof @of_reduc2SubR_cons_buff_0 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_reduc2SubC_buff_0 : !llvm.ptr
    %2 = llvm.mlir.constant(32 : index) : i64
    %3 = llvm.mlir.constant(true) : i1
    %4 = llvm.mlir.addressof @of_sub2mean_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(32 : i32) : i32
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(17 : i32) : i32
    %8 = llvm.mlir.constant(16 : i32) : i32
    %9 = llvm.mlir.constant(33 : i32) : i32
    %10 = llvm.mlir.constant(49 : i32) : i32
    %11 = llvm.mlir.constant(1 : i32) : i32
    %12 = llvm.mlir.constant(4608 : i32) : i32
    %13 = llvm.mlir.constant(-1 : i32) : i32
    %14 = llvm.mlir.constant(16384 : index) : i64
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
    llvm.call @llvm.aie2.acquire(%10, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %13) : (i32, i32) -> ()
    %22 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %3 ["align"(%22, %2 : !llvm.ptr, i64)] : i1
    %23 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %3 ["align"(%23, %2 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %3 ["align"(%24, %2 : !llvm.ptr, i64)] : i1
    llvm.call @sub_kernel(%24, %23, %22, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %11) : (i32, i32) -> ()
    %25 = llvm.add %20, %17 : i64
    llvm.br ^bb2(%25 : i64)
  ^bb4:  // pred: ^bb2
    %26 = llvm.add %18, %17 : i64
    llvm.br ^bb1(%26 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_3_3() {
    %0 = llvm.mlir.addressof @of_reduceC_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_reduceC_buff_0 : !llvm.ptr
    %2 = llvm.mlir.constant(32 : index) : i64
    %3 = llvm.mlir.constant(true) : i1
    %4 = llvm.mlir.addressof @of_reduc2SubC_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(34 : i32) : i32
    %6 = llvm.mlir.constant(49 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(35 : i32) : i32
    %9 = llvm.mlir.constant(2 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(4608 : i32) : i32
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(-2 : i32) : i32
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.mlir.constant(16384 : index) : i64
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%16 : i64)
  ^bb1(%19: i64):  // 2 preds: ^bb0, ^bb4
    %20 = llvm.icmp "slt" %19, %18 : i64
    llvm.cond_br %20, ^bb2(%16 : i64), ^bb5
  ^bb2(%21: i64):  // 2 preds: ^bb1, ^bb3
    %22 = llvm.icmp "slt" %21, %15 : i64
    llvm.cond_br %22, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %12) : (i32, i32) -> ()
    %23 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %3 ["align"(%23, %2 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %3 ["align"(%24, %2 : !llvm.ptr, i64)] : i1
    %25 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %3 ["align"(%25, %2 : !llvm.ptr, i64)] : i1
    llvm.call @add_kernel(%24, %25, %23, %11) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %12) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%23, %2 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%24, %2 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%25, %2 : !llvm.ptr, i64)] : i1
    llvm.call @add_kernel(%24, %25, %23, %11) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    %26 = llvm.add %21, %14 : i64
    llvm.br ^bb2(%26 : i64)
  ^bb4:  // pred: ^bb2
    %27 = llvm.add %19, %17 : i64
    llvm.br ^bb1(%27 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_2_3() {
    %0 = llvm.mlir.addressof @of_reduceR_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_reduceR_buff_0 : !llvm.ptr
    %2 = llvm.mlir.constant(32 : index) : i64
    %3 = llvm.mlir.constant(true) : i1
    %4 = llvm.mlir.addressof @of_reduc2SubR_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(34 : i32) : i32
    %6 = llvm.mlir.constant(49 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(35 : i32) : i32
    %9 = llvm.mlir.constant(2 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(4608 : i32) : i32
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(-2 : i32) : i32
    %14 = llvm.mlir.constant(16384 : index) : i64
    %15 = llvm.mlir.constant(2 : index) : i64
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%16 : i64)
  ^bb1(%19: i64):  // 2 preds: ^bb0, ^bb4
    %20 = llvm.icmp "slt" %19, %18 : i64
    llvm.cond_br %20, ^bb2(%16 : i64), ^bb5
  ^bb2(%21: i64):  // 2 preds: ^bb1, ^bb3
    %22 = llvm.icmp "slt" %21, %14 : i64
    llvm.cond_br %22, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %12) : (i32, i32) -> ()
    %23 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %3 ["align"(%23, %2 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %3 ["align"(%24, %2 : !llvm.ptr, i64)] : i1
    %25 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %3 ["align"(%25, %2 : !llvm.ptr, i64)] : i1
    llvm.call @add_kernel(%24, %25, %23, %11) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %12) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%23, %2 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%24, %2 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%25, %2 : !llvm.ptr, i64)] : i1
    llvm.call @add_kernel(%24, %25, %23, %11) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %9) : (i32, i32) -> ()
    %26 = llvm.add %21, %15 : i64
    llvm.br ^bb2(%26 : i64)
  ^bb4:  // pred: ^bb2
    %27 = llvm.add %19, %17 : i64
    llvm.br ^bb1(%27 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_3_4() {
    %0 = llvm.mlir.addressof @of_in_visC_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_reduceC_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_visC_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.addressof @of_multTrigC_buff_0 : !llvm.ptr
    %4 = llvm.mlir.constant(32 : index) : i64
    %5 = llvm.mlir.constant(true) : i1
    %6 = llvm.mlir.addressof @of_reduceC_buff_0 : !llvm.ptr
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(34 : i32) : i32
    %9 = llvm.mlir.constant(51 : i32) : i32
    %10 = llvm.mlir.constant(50 : i32) : i32
    %11 = llvm.mlir.constant(35 : i32) : i32
    %12 = llvm.mlir.constant(49 : i32) : i32
    %13 = llvm.mlir.constant(2 : i32) : i32
    %14 = llvm.mlir.constant(1 : i32) : i32
    %15 = llvm.mlir.constant(4608 : i32) : i32
    %16 = llvm.mlir.constant(-1 : i32) : i32
    %17 = llvm.mlir.constant(16384 : index) : i64
    %18 = llvm.mlir.constant(-2 : i32) : i32
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %21 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%19 : i64)
  ^bb1(%22: i64):  // 2 preds: ^bb0, ^bb8
    %23 = llvm.icmp "slt" %22, %20 : i64
    llvm.cond_br %23, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%12, %18) : (i32, i32) -> ()
    llvm.br ^bb3(%19 : i64)
  ^bb3(%24: i64):  // 2 preds: ^bb2, ^bb4
    %25 = llvm.icmp "slt" %24, %17 : i64
    llvm.cond_br %25, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %26 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%26, %4 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%27, %4 : !llvm.ptr, i64)] : i1
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%28, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%27, %28, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%29, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%27, %4 : !llvm.ptr, i64)] : i1
    %30 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%30, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%27, %30, %29, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    llvm.intr.assume %5 ["align"(%26, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%27, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%28, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%27, %28, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    llvm.intr.assume %5 ["align"(%29, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%27, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%30, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%27, %30, %29, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %31 = llvm.add %24, %21 : i64
    llvm.br ^bb3(%31 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %18) : (i32, i32) -> ()
    llvm.br ^bb6(%19 : i64)
  ^bb6(%32: i64):  // 2 preds: ^bb5, ^bb7
    %33 = llvm.icmp "slt" %32, %17 : i64
    llvm.cond_br %33, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %34 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%34, %4 : !llvm.ptr, i64)] : i1
    %35 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%35, %4 : !llvm.ptr, i64)] : i1
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%36, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%35, %36, %34, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %37 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%37, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%35, %4 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%38, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%35, %38, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    llvm.intr.assume %5 ["align"(%34, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%35, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%36, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%35, %36, %34, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    llvm.intr.assume %5 ["align"(%37, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%35, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%38, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%35, %38, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %39 = llvm.add %32, %21 : i64
    llvm.br ^bb6(%39 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    %40 = llvm.add %22, %21 : i64
    llvm.br ^bb1(%40 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%12, %18) : (i32, i32) -> ()
    llvm.br ^bb10(%19 : i64)
  ^bb10(%41: i64):  // 2 preds: ^bb9, ^bb11
    %42 = llvm.icmp "slt" %41, %17 : i64
    llvm.cond_br %42, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %43 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%43, %4 : !llvm.ptr, i64)] : i1
    %44 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%44, %4 : !llvm.ptr, i64)] : i1
    %45 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%45, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%44, %45, %43, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %46 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%46, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%44, %4 : !llvm.ptr, i64)] : i1
    %47 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%47, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%44, %47, %46, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    llvm.intr.assume %5 ["align"(%43, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%44, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%45, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%44, %45, %43, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    llvm.intr.assume %5 ["align"(%46, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%44, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%47, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%44, %47, %46, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %48 = llvm.add %41, %21 : i64
    llvm.br ^bb10(%48 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_2_4() {
    %0 = llvm.mlir.addressof @of_in_visR_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_reduceR_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_visR_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.addressof @of_multTrigR_buff_0 : !llvm.ptr
    %4 = llvm.mlir.constant(32 : index) : i64
    %5 = llvm.mlir.constant(true) : i1
    %6 = llvm.mlir.addressof @of_reduceR_buff_0 : !llvm.ptr
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(34 : i32) : i32
    %9 = llvm.mlir.constant(51 : i32) : i32
    %10 = llvm.mlir.constant(50 : i32) : i32
    %11 = llvm.mlir.constant(35 : i32) : i32
    %12 = llvm.mlir.constant(49 : i32) : i32
    %13 = llvm.mlir.constant(2 : i32) : i32
    %14 = llvm.mlir.constant(1 : i32) : i32
    %15 = llvm.mlir.constant(4608 : i32) : i32
    %16 = llvm.mlir.constant(-1 : i32) : i32
    %17 = llvm.mlir.constant(16384 : index) : i64
    %18 = llvm.mlir.constant(-2 : i32) : i32
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %21 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%19 : i64)
  ^bb1(%22: i64):  // 2 preds: ^bb0, ^bb8
    %23 = llvm.icmp "slt" %22, %20 : i64
    llvm.cond_br %23, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%12, %18) : (i32, i32) -> ()
    llvm.br ^bb3(%19 : i64)
  ^bb3(%24: i64):  // 2 preds: ^bb2, ^bb4
    %25 = llvm.icmp "slt" %24, %17 : i64
    llvm.cond_br %25, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %26 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%26, %4 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%27, %4 : !llvm.ptr, i64)] : i1
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%28, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%27, %28, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%29, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%27, %4 : !llvm.ptr, i64)] : i1
    %30 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%30, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%27, %30, %29, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    llvm.intr.assume %5 ["align"(%26, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%27, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%28, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%27, %28, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    llvm.intr.assume %5 ["align"(%29, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%27, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%30, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%27, %30, %29, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %31 = llvm.add %24, %21 : i64
    llvm.br ^bb3(%31 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %18) : (i32, i32) -> ()
    llvm.br ^bb6(%19 : i64)
  ^bb6(%32: i64):  // 2 preds: ^bb5, ^bb7
    %33 = llvm.icmp "slt" %32, %17 : i64
    llvm.cond_br %33, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %34 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%34, %4 : !llvm.ptr, i64)] : i1
    %35 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%35, %4 : !llvm.ptr, i64)] : i1
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%36, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%35, %36, %34, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %37 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%37, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%35, %4 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%38, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%35, %38, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    llvm.intr.assume %5 ["align"(%34, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%35, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%36, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%35, %36, %34, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    llvm.intr.assume %5 ["align"(%37, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%35, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%38, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%35, %38, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %39 = llvm.add %32, %21 : i64
    llvm.br ^bb6(%39 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    %40 = llvm.add %22, %21 : i64
    llvm.br ^bb1(%40 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%12, %18) : (i32, i32) -> ()
    llvm.br ^bb10(%19 : i64)
  ^bb10(%41: i64):  // 2 preds: ^bb9, ^bb11
    %42 = llvm.icmp "slt" %41, %17 : i64
    llvm.cond_br %42, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %43 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%43, %4 : !llvm.ptr, i64)] : i1
    %44 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%44, %4 : !llvm.ptr, i64)] : i1
    %45 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%45, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%44, %45, %43, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    %46 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%46, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%44, %4 : !llvm.ptr, i64)] : i1
    %47 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %5 ["align"(%47, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%44, %47, %46, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    llvm.intr.assume %5 ["align"(%43, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%44, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%45, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%44, %45, %43, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %16) : (i32, i32) -> ()
    llvm.intr.assume %5 ["align"(%46, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%44, %4 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %5 ["align"(%47, %4 : !llvm.ptr, i64)] : i1
    llvm.call @mul_kernel(%44, %47, %46, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %48 = llvm.add %41, %21 : i64
    llvm.br ^bb10(%48 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.release(%7, %13) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_3_5() {
    %0 = llvm.mlir.addressof @of_trigFifo_1_cons_buff_0 : !llvm.ptr
    %1 = llvm.mlir.constant(32 : index) : i64
    %2 = llvm.mlir.constant(true) : i1
    %3 = llvm.mlir.addressof @of_multTrigC_buff_0 : !llvm.ptr
    %4 = llvm.mlir.constant(48 : i32) : i32
    %5 = llvm.mlir.constant(51 : i32) : i32
    %6 = llvm.mlir.constant(50 : i32) : i32
    %7 = llvm.mlir.constant(49 : i32) : i32
    %8 = llvm.mlir.constant(1 : i32) : i32
    %9 = llvm.mlir.constant(4608 : i32) : i32
    %10 = llvm.mlir.constant(-1 : i32) : i32
    %11 = llvm.mlir.constant(16384 : index) : i64
    %12 = llvm.mlir.constant(2 : index) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%13 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb6
    %17 = llvm.icmp "slt" %16, %15 : i64
    llvm.cond_br %17, ^bb2(%13 : i64), ^bb7
  ^bb2(%18: i64):  // 2 preds: ^bb1, ^bb5
    %19 = llvm.icmp "slt" %18, %11 : i64
    llvm.cond_br %19, ^bb3(%13 : i64), ^bb6
  ^bb3(%20: i64):  // 2 preds: ^bb2, ^bb4
    %21 = llvm.icmp "slt" %20, %12 : i64
    llvm.cond_br %21, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%6, %10) : (i32, i32) -> ()
    %22 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %2 ["align"(%22, %1 : !llvm.ptr, i64)] : i1
    %23 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %2 ["align"(%23, %1 : !llvm.ptr, i64)] : i1
    llvm.call @sine(%23, %22, %9) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%4, %8) : (i32, i32) -> ()
    %24 = llvm.add %20, %14 : i64
    llvm.br ^bb3(%24 : i64)
  ^bb5:  // pred: ^bb3
    %25 = llvm.add %18, %14 : i64
    llvm.br ^bb2(%25 : i64)
  ^bb6:  // pred: ^bb2
    %26 = llvm.add %16, %14 : i64
    llvm.br ^bb1(%26 : i64)
  ^bb7:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_2_5() {
    %0 = llvm.mlir.addressof @of_trigFifo_0_cons_buff_0 : !llvm.ptr
    %1 = llvm.mlir.constant(32 : index) : i64
    %2 = llvm.mlir.constant(true) : i1
    %3 = llvm.mlir.addressof @of_multTrigR_buff_0 : !llvm.ptr
    %4 = llvm.mlir.constant(48 : i32) : i32
    %5 = llvm.mlir.constant(51 : i32) : i32
    %6 = llvm.mlir.constant(50 : i32) : i32
    %7 = llvm.mlir.constant(49 : i32) : i32
    %8 = llvm.mlir.constant(1 : i32) : i32
    %9 = llvm.mlir.constant(4608 : i32) : i32
    %10 = llvm.mlir.constant(-1 : i32) : i32
    %11 = llvm.mlir.constant(16384 : index) : i64
    %12 = llvm.mlir.constant(2 : index) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%13 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb6
    %17 = llvm.icmp "slt" %16, %15 : i64
    llvm.cond_br %17, ^bb2(%13 : i64), ^bb7
  ^bb2(%18: i64):  // 2 preds: ^bb1, ^bb5
    %19 = llvm.icmp "slt" %18, %11 : i64
    llvm.cond_br %19, ^bb3(%13 : i64), ^bb6
  ^bb3(%20: i64):  // 2 preds: ^bb2, ^bb4
    %21 = llvm.icmp "slt" %20, %12 : i64
    llvm.cond_br %21, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%6, %10) : (i32, i32) -> ()
    %22 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %2 ["align"(%22, %1 : !llvm.ptr, i64)] : i1
    %23 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %2 ["align"(%23, %1 : !llvm.ptr, i64)] : i1
    llvm.call @cosine(%23, %22, %9) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %8) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%4, %8) : (i32, i32) -> ()
    %24 = llvm.add %20, %14 : i64
    llvm.br ^bb3(%24 : i64)
  ^bb5:  // pred: ^bb3
    %25 = llvm.add %18, %14 : i64
    llvm.br ^bb2(%25 : i64)
  ^bb6:  // pred: ^bb2
    %26 = llvm.add %16, %14 : i64
    llvm.br ^bb1(%26 : i64)
  ^bb7:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_1_2() {
    %0 = llvm.mlir.addressof @in0_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in0_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_scaleAddBL_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_trigFifo_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(50 : i32) : i32
    %8 = llvm.mlir.constant(53 : i32) : i32
    %9 = llvm.mlir.constant(52 : i32) : i32
    %10 = llvm.mlir.constant(51 : i32) : i32
    %11 = llvm.mlir.constant(49 : i32) : i32
    %12 = llvm.mlir.constant(1 : i32) : i32
    %13 = llvm.mlir.constant(4608 : i32) : i32
    %14 = llvm.mlir.constant(16384 : index) : i64
    %15 = llvm.mlir.constant(-1 : i32) : i32
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %19 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%16 : i64)
  ^bb1(%20: i64):  // 2 preds: ^bb0, ^bb12
    %21 = llvm.icmp "slt" %20, %18 : i64
    llvm.cond_br %21, ^bb2, ^bb13
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%11, %15) : (i32, i32) -> ()
    llvm.br ^bb3(%16 : i64)
  ^bb3(%22: i64):  // 2 preds: ^bb2, ^bb6
    %23 = llvm.icmp "slt" %22, %14 : i64
    llvm.cond_br %23, ^bb4(%16 : i64), ^bb7
  ^bb4(%24: i64):  // 2 preds: ^bb3, ^bb5
    %25 = llvm.icmp "slt" %24, %19 : i64
    llvm.cond_br %25, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    llvm.call @llvm.aie2.acquire(%10, %15) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %15) : (i32, i32) -> ()
    %26 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%26, %3 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%27, %3 : !llvm.ptr, i64)] : i1
    %28 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %4 ["align"(%28, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale_single(%27, %28, %26, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %12) : (i32, i32) -> ()
    %29 = llvm.add %24, %17 : i64
    llvm.br ^bb4(%29 : i64)
  ^bb6:  // pred: ^bb4
    %30 = llvm.add %22, %17 : i64
    llvm.br ^bb3(%30 : i64)
  ^bb7:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%6, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %15) : (i32, i32) -> ()
    llvm.br ^bb8(%16 : i64)
  ^bb8(%31: i64):  // 2 preds: ^bb7, ^bb11
    %32 = llvm.icmp "slt" %31, %14 : i64
    llvm.cond_br %32, ^bb9(%16 : i64), ^bb12
  ^bb9(%33: i64):  // 2 preds: ^bb8, ^bb10
    %34 = llvm.icmp "slt" %33, %19 : i64
    llvm.cond_br %34, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    llvm.call @llvm.aie2.acquire(%10, %15) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %15) : (i32, i32) -> ()
    %35 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%35, %3 : !llvm.ptr, i64)] : i1
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%36, %3 : !llvm.ptr, i64)] : i1
    %37 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %4 ["align"(%37, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale_single(%36, %37, %35, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %12) : (i32, i32) -> ()
    %38 = llvm.add %33, %17 : i64
    llvm.br ^bb9(%38 : i64)
  ^bb11:  // pred: ^bb9
    %39 = llvm.add %31, %17 : i64
    llvm.br ^bb8(%39 : i64)
  ^bb12:  // pred: ^bb8
    llvm.call @llvm.aie2.release(%6, %12) : (i32, i32) -> ()
    %40 = llvm.add %20, %19 : i64
    llvm.br ^bb1(%40 : i64)
  ^bb13:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%11, %15) : (i32, i32) -> ()
    llvm.br ^bb14(%16 : i64)
  ^bb14(%41: i64):  // 2 preds: ^bb13, ^bb17
    %42 = llvm.icmp "slt" %41, %14 : i64
    llvm.cond_br %42, ^bb15(%16 : i64), ^bb18
  ^bb15(%43: i64):  // 2 preds: ^bb14, ^bb16
    %44 = llvm.icmp "slt" %43, %19 : i64
    llvm.cond_br %44, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    llvm.call @llvm.aie2.acquire(%10, %15) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %15) : (i32, i32) -> ()
    %45 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%45, %3 : !llvm.ptr, i64)] : i1
    %46 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%46, %3 : !llvm.ptr, i64)] : i1
    %47 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2 x bf16>
    llvm.intr.assume %4 ["align"(%47, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale_single(%46, %47, %45, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %12) : (i32, i32) -> ()
    %48 = llvm.add %43, %17 : i64
    llvm.br ^bb15(%48 : i64)
  ^bb17:  // pred: ^bb15
    %49 = llvm.add %41, %17 : i64
    llvm.br ^bb14(%49 : i64)
  ^bb18:  // pred: ^bb14
    llvm.call @llvm.aie2.release(%6, %12) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_1_4() {
    %0 = llvm.mlir.addressof @of_addW_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_addW_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_addUV_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_scaleAddBL_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(34 : i32) : i32
    %8 = llvm.mlir.constant(51 : i32) : i32
    %9 = llvm.mlir.constant(50 : i32) : i32
    %10 = llvm.mlir.constant(49 : i32) : i32
    %11 = llvm.mlir.constant(35 : i32) : i32
    %12 = llvm.mlir.constant(1 : i32) : i32
    %13 = llvm.mlir.constant(4608 : i32) : i32
    %14 = llvm.mlir.constant(-1 : i32) : i32
    %15 = llvm.mlir.constant(2 : index) : i64
    %16 = llvm.mlir.constant(16384 : index) : i64
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%17 : i64)
  ^bb1(%20: i64):  // 2 preds: ^bb0, ^bb4
    %21 = llvm.icmp "slt" %20, %18 : i64
    llvm.cond_br %21, ^bb2(%17 : i64), ^bb5
  ^bb2(%22: i64):  // 2 preds: ^bb1, ^bb3
    %23 = llvm.icmp "slt" %22, %16 : i64
    llvm.cond_br %23, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%11, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %14) : (i32, i32) -> ()
    %24 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    %25 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%25, %3 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%26, %3 : !llvm.ptr, i64)] : i1
    llvm.call @add_kernel(%25, %26, %24, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %14) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%25, %3 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%27, %3 : !llvm.ptr, i64)] : i1
    llvm.call @add_kernel(%25, %27, %24, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %14) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%25, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%26, %3 : !llvm.ptr, i64)] : i1
    llvm.call @add_kernel(%25, %26, %24, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %14) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%25, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%27, %3 : !llvm.ptr, i64)] : i1
    llvm.call @add_kernel(%25, %27, %24, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %12) : (i32, i32) -> ()
    %28 = llvm.add %22, %15 : i64
    llvm.br ^bb2(%28 : i64)
  ^bb4:  // pred: ^bb2
    %29 = llvm.add %20, %19 : i64
    llvm.br ^bb1(%29 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_1_5() {
    %0 = llvm.mlir.addressof @of_addU_buff_0 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_addV_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.constant(32 : index) : i64
    %3 = llvm.mlir.constant(true) : i1
    %4 = llvm.mlir.addressof @of_addUV_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(48 : i32) : i32
    %6 = llvm.mlir.constant(20 : i32) : i32
    %7 = llvm.mlir.constant(51 : i32) : i32
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(49 : i32) : i32
    %10 = llvm.mlir.constant(21 : i32) : i32
    %11 = llvm.mlir.constant(1 : i32) : i32
    %12 = llvm.mlir.constant(4608 : i32) : i32
    %13 = llvm.mlir.constant(-1 : i32) : i32
    %14 = llvm.mlir.constant(16384 : index) : i64
    %15 = llvm.mlir.constant(2 : index) : i64
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%16 : i64)
  ^bb1(%19: i64):  // 2 preds: ^bb0, ^bb6
    %20 = llvm.icmp "slt" %19, %18 : i64
    llvm.cond_br %20, ^bb2(%16 : i64), ^bb7
  ^bb2(%21: i64):  // 2 preds: ^bb1, ^bb5
    %22 = llvm.icmp "slt" %21, %14 : i64
    llvm.cond_br %22, ^bb3(%16 : i64), ^bb6
  ^bb3(%23: i64):  // 2 preds: ^bb2, ^bb4
    %24 = llvm.icmp "slt" %23, %15 : i64
    llvm.cond_br %24, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%10, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %13) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %13) : (i32, i32) -> ()
    %25 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %3 ["align"(%25, %2 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %3 ["align"(%26, %2 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %3 ["align"(%27, %2 : !llvm.ptr, i64)] : i1
    llvm.call @add_kernel(%27, %26, %25, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %11) : (i32, i32) -> ()
    %28 = llvm.add %23, %17 : i64
    llvm.br ^bb3(%28 : i64)
  ^bb5:  // pred: ^bb3
    %29 = llvm.add %21, %17 : i64
    llvm.br ^bb2(%29 : i64)
  ^bb6:  // pred: ^bb2
    %30 = llvm.add %19, %17 : i64
    llvm.br ^bb1(%30 : i64)
  ^bb7:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_3() {
    %0 = llvm.mlir.addressof @of_in_w_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_in_w_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_n_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_addW_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(50 : i32) : i32
    %8 = llvm.mlir.constant(53 : i32) : i32
    %9 = llvm.mlir.constant(52 : i32) : i32
    %10 = llvm.mlir.constant(51 : i32) : i32
    %11 = llvm.mlir.constant(49 : i32) : i32
    %12 = llvm.mlir.constant(31 : i32) : i32
    %13 = llvm.mlir.constant(30 : i32) : i32
    %14 = llvm.mlir.constant(29 : i32) : i32
    %15 = llvm.mlir.constant(28 : i32) : i32
    %16 = llvm.mlir.constant(27 : i32) : i32
    %17 = llvm.mlir.constant(26 : i32) : i32
    %18 = llvm.mlir.constant(25 : i32) : i32
    %19 = llvm.mlir.constant(24 : i32) : i32
    %20 = llvm.mlir.constant(23 : i32) : i32
    %21 = llvm.mlir.constant(22 : i32) : i32
    %22 = llvm.mlir.constant(21 : i32) : i32
    %23 = llvm.mlir.constant(20 : i32) : i32
    %24 = llvm.mlir.constant(19 : i32) : i32
    %25 = llvm.mlir.constant(18 : i32) : i32
    %26 = llvm.mlir.constant(17 : i32) : i32
    %27 = llvm.mlir.constant(16 : i32) : i32
    %28 = llvm.mlir.constant(15 : i32) : i32
    %29 = llvm.mlir.constant(14 : i32) : i32
    %30 = llvm.mlir.constant(13 : i32) : i32
    %31 = llvm.mlir.constant(12 : i32) : i32
    %32 = llvm.mlir.constant(11 : i32) : i32
    %33 = llvm.mlir.constant(10 : i32) : i32
    %34 = llvm.mlir.constant(9 : i32) : i32
    %35 = llvm.mlir.constant(8 : i32) : i32
    %36 = llvm.mlir.constant(7 : i32) : i32
    %37 = llvm.mlir.constant(6 : i32) : i32
    %38 = llvm.mlir.constant(5 : i32) : i32
    %39 = llvm.mlir.constant(4 : i32) : i32
    %40 = llvm.mlir.constant(3 : i32) : i32
    %41 = llvm.mlir.constant(2 : i32) : i32
    %42 = llvm.mlir.constant(1 : i32) : i32
    %43 = llvm.mlir.constant(0 : i32) : i32
    %44 = llvm.mlir.constant(4608 : i32) : i32
    %45 = llvm.mlir.constant(-1 : i32) : i32
    %46 = llvm.mlir.constant(512 : index) : i64
    %47 = llvm.mlir.constant(-2 : i32) : i32
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %51 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%48 : i64)
  ^bb1(%52: i64):  // 2 preds: ^bb0, ^bb8
    %53 = llvm.icmp "slt" %52, %50 : i64
    llvm.cond_br %53, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%11, %47) : (i32, i32) -> ()
    llvm.br ^bb3(%48 : i64)
  ^bb3(%54: i64):  // 2 preds: ^bb2, ^bb4
    %55 = llvm.icmp "slt" %54, %46 : i64
    llvm.cond_br %55, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%10, %45) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    %56 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    %57 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x bf16>
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    %58 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    %59 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %40) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %40) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %39) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %39) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %38) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %38) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %37) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %37) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %36) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %36) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %35) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %35) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %34) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %34) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %33) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %33) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %31) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %31) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %30) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %30) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %29) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %29) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %28) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %28) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %27) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %27) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %26) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %26) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %25) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %25) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %24) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %24) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %23) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %23) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %21) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %21) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %20) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %20) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %18) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %18) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %17) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %17) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %16) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %16) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %42) : (i32, i32) -> ()
    %60 = llvm.add %54, %49 : i64
    llvm.br ^bb3(%60 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%6, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %47) : (i32, i32) -> ()
    llvm.br ^bb6(%48 : i64)
  ^bb6(%61: i64):  // 2 preds: ^bb5, ^bb7
    %62 = llvm.icmp "slt" %61, %46 : i64
    llvm.cond_br %62, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%10, %45) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    %63 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    %64 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x bf16>
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    %65 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    %66 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %40) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %40) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %39) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %39) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %38) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %38) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %37) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %37) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %36) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %36) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %35) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %35) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %34) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %34) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %33) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %33) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %31) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %31) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %30) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %30) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %29) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %29) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %28) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %28) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %27) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %27) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %26) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %26) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %25) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %25) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %24) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %24) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %23) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %23) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %21) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %21) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %20) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %20) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %18) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %18) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %17) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %17) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %16) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %16) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %42) : (i32, i32) -> ()
    %67 = llvm.add %61, %49 : i64
    llvm.br ^bb6(%67 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%6, %41) : (i32, i32) -> ()
    %68 = llvm.add %52, %51 : i64
    llvm.br ^bb1(%68 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%11, %47) : (i32, i32) -> ()
    llvm.br ^bb10(%48 : i64)
  ^bb10(%69: i64):  // 2 preds: ^bb9, ^bb11
    %70 = llvm.icmp "slt" %69, %46 : i64
    llvm.cond_br %70, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%10, %45) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    %71 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    %72 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x bf16>
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    %73 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    %74 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %40) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %40) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %39) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %39) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %38) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %38) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %37) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %37) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %36) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %36) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %35) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %35) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %34) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %34) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %33) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %33) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %31) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %31) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %30) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %30) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %29) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %29) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %28) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %28) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %27) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %27) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %26) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %26) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %25) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %25) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %24) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %24) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %23) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %23) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %21) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %21) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %20) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %20) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %18) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %18) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %17) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %17) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %16) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %16) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %42) : (i32, i32) -> ()
    %75 = llvm.add %69, %49 : i64
    llvm.br ^bb10(%75 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.release(%6, %41) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_0_4() {
    %0 = llvm.mlir.addressof @of_in_v_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_in_v_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_m_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_addV_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(50 : i32) : i32
    %8 = llvm.mlir.constant(53 : i32) : i32
    %9 = llvm.mlir.constant(52 : i32) : i32
    %10 = llvm.mlir.constant(51 : i32) : i32
    %11 = llvm.mlir.constant(49 : i32) : i32
    %12 = llvm.mlir.constant(31 : i32) : i32
    %13 = llvm.mlir.constant(30 : i32) : i32
    %14 = llvm.mlir.constant(29 : i32) : i32
    %15 = llvm.mlir.constant(28 : i32) : i32
    %16 = llvm.mlir.constant(27 : i32) : i32
    %17 = llvm.mlir.constant(26 : i32) : i32
    %18 = llvm.mlir.constant(25 : i32) : i32
    %19 = llvm.mlir.constant(24 : i32) : i32
    %20 = llvm.mlir.constant(23 : i32) : i32
    %21 = llvm.mlir.constant(22 : i32) : i32
    %22 = llvm.mlir.constant(21 : i32) : i32
    %23 = llvm.mlir.constant(20 : i32) : i32
    %24 = llvm.mlir.constant(19 : i32) : i32
    %25 = llvm.mlir.constant(18 : i32) : i32
    %26 = llvm.mlir.constant(17 : i32) : i32
    %27 = llvm.mlir.constant(16 : i32) : i32
    %28 = llvm.mlir.constant(15 : i32) : i32
    %29 = llvm.mlir.constant(14 : i32) : i32
    %30 = llvm.mlir.constant(13 : i32) : i32
    %31 = llvm.mlir.constant(12 : i32) : i32
    %32 = llvm.mlir.constant(11 : i32) : i32
    %33 = llvm.mlir.constant(10 : i32) : i32
    %34 = llvm.mlir.constant(9 : i32) : i32
    %35 = llvm.mlir.constant(8 : i32) : i32
    %36 = llvm.mlir.constant(7 : i32) : i32
    %37 = llvm.mlir.constant(6 : i32) : i32
    %38 = llvm.mlir.constant(5 : i32) : i32
    %39 = llvm.mlir.constant(4 : i32) : i32
    %40 = llvm.mlir.constant(3 : i32) : i32
    %41 = llvm.mlir.constant(2 : i32) : i32
    %42 = llvm.mlir.constant(1 : i32) : i32
    %43 = llvm.mlir.constant(0 : i32) : i32
    %44 = llvm.mlir.constant(4608 : i32) : i32
    %45 = llvm.mlir.constant(-1 : i32) : i32
    %46 = llvm.mlir.constant(512 : index) : i64
    %47 = llvm.mlir.constant(-2 : i32) : i32
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%49 : i64)
  ^bb1(%52: i64):  // 2 preds: ^bb0, ^bb8
    %53 = llvm.icmp "slt" %52, %51 : i64
    llvm.cond_br %53, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%11, %47) : (i32, i32) -> ()
    llvm.br ^bb3(%49 : i64)
  ^bb3(%54: i64):  // 2 preds: ^bb2, ^bb4
    %55 = llvm.icmp "slt" %54, %46 : i64
    llvm.cond_br %55, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%10, %45) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    %56 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    %57 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x bf16>
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    %58 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    %59 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %40) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %40) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %39) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %39) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %38) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %38) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %37) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %37) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %36) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %36) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %35) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %35) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %34) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %34) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %33) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %33) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %31) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %31) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %30) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %30) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %29) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %29) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %28) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %28) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %27) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %27) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %26) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %26) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %25) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %25) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %24) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %24) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %23) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %23) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %21) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %21) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %20) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %20) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %18) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %18) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %17) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %17) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %16) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %16) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %42) : (i32, i32) -> ()
    %60 = llvm.add %54, %50 : i64
    llvm.br ^bb3(%60 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%6, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %47) : (i32, i32) -> ()
    llvm.br ^bb6(%49 : i64)
  ^bb6(%61: i64):  // 2 preds: ^bb5, ^bb7
    %62 = llvm.icmp "slt" %61, %46 : i64
    llvm.cond_br %62, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%10, %45) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    %63 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    %64 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x bf16>
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    %65 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    %66 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %40) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %40) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %39) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %39) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %38) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %38) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %37) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %37) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %36) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %36) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %35) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %35) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %34) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %34) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %33) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %33) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %31) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %31) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %30) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %30) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %29) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %29) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %28) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %28) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %27) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %27) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %26) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %26) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %25) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %25) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %24) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %24) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %23) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %23) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %21) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %21) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %20) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %20) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %18) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %18) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %17) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %17) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %16) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %16) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %42) : (i32, i32) -> ()
    %67 = llvm.add %61, %50 : i64
    llvm.br ^bb6(%67 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%6, %41) : (i32, i32) -> ()
    %68 = llvm.add %52, %48 : i64
    llvm.br ^bb1(%68 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%11, %47) : (i32, i32) -> ()
    llvm.br ^bb10(%49 : i64)
  ^bb10(%69: i64):  // 2 preds: ^bb9, ^bb11
    %70 = llvm.icmp "slt" %69, %46 : i64
    llvm.cond_br %70, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%10, %45) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    %71 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    %72 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x bf16>
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    %73 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    %74 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %40) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %40) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %39) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %39) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %38) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %38) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %37) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %37) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %36) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %36) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %35) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %35) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %34) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %34) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %33) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %33) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %31) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %31) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %30) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %30) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %29) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %29) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %28) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %28) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %27) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %27) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %26) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %26) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %25) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %25) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %24) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %24) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %23) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %23) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %21) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %21) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %20) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %20) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %18) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %18) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %17) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %17) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %16) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %16) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %42) : (i32, i32) -> ()
    %75 = llvm.add %69, %50 : i64
    llvm.br ^bb10(%75 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.release(%6, %41) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_0_5() {
    %0 = llvm.mlir.addressof @of_in_u_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_in_u_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_l_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_addU_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(48 : i32) : i32
    %7 = llvm.mlir.constant(50 : i32) : i32
    %8 = llvm.mlir.constant(53 : i32) : i32
    %9 = llvm.mlir.constant(52 : i32) : i32
    %10 = llvm.mlir.constant(51 : i32) : i32
    %11 = llvm.mlir.constant(49 : i32) : i32
    %12 = llvm.mlir.constant(31 : i32) : i32
    %13 = llvm.mlir.constant(30 : i32) : i32
    %14 = llvm.mlir.constant(29 : i32) : i32
    %15 = llvm.mlir.constant(28 : i32) : i32
    %16 = llvm.mlir.constant(27 : i32) : i32
    %17 = llvm.mlir.constant(26 : i32) : i32
    %18 = llvm.mlir.constant(25 : i32) : i32
    %19 = llvm.mlir.constant(24 : i32) : i32
    %20 = llvm.mlir.constant(23 : i32) : i32
    %21 = llvm.mlir.constant(22 : i32) : i32
    %22 = llvm.mlir.constant(21 : i32) : i32
    %23 = llvm.mlir.constant(20 : i32) : i32
    %24 = llvm.mlir.constant(19 : i32) : i32
    %25 = llvm.mlir.constant(18 : i32) : i32
    %26 = llvm.mlir.constant(17 : i32) : i32
    %27 = llvm.mlir.constant(16 : i32) : i32
    %28 = llvm.mlir.constant(15 : i32) : i32
    %29 = llvm.mlir.constant(14 : i32) : i32
    %30 = llvm.mlir.constant(13 : i32) : i32
    %31 = llvm.mlir.constant(12 : i32) : i32
    %32 = llvm.mlir.constant(11 : i32) : i32
    %33 = llvm.mlir.constant(10 : i32) : i32
    %34 = llvm.mlir.constant(9 : i32) : i32
    %35 = llvm.mlir.constant(8 : i32) : i32
    %36 = llvm.mlir.constant(7 : i32) : i32
    %37 = llvm.mlir.constant(6 : i32) : i32
    %38 = llvm.mlir.constant(5 : i32) : i32
    %39 = llvm.mlir.constant(4 : i32) : i32
    %40 = llvm.mlir.constant(3 : i32) : i32
    %41 = llvm.mlir.constant(2 : i32) : i32
    %42 = llvm.mlir.constant(1 : i32) : i32
    %43 = llvm.mlir.constant(0 : i32) : i32
    %44 = llvm.mlir.constant(4608 : i32) : i32
    %45 = llvm.mlir.constant(-1 : i32) : i32
    %46 = llvm.mlir.constant(512 : index) : i64
    %47 = llvm.mlir.constant(-2 : i32) : i32
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%49 : i64)
  ^bb1(%52: i64):  // 2 preds: ^bb0, ^bb8
    %53 = llvm.icmp "slt" %52, %51 : i64
    llvm.cond_br %53, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%11, %47) : (i32, i32) -> ()
    llvm.br ^bb3(%49 : i64)
  ^bb3(%54: i64):  // 2 preds: ^bb2, ^bb4
    %55 = llvm.icmp "slt" %54, %46 : i64
    llvm.cond_br %55, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%10, %45) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    %56 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    %57 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x bf16>
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    %58 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    %59 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %40) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %40) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %39) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %39) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %38) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %38) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %37) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %37) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %36) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %36) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %35) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %35) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %34) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %34) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %33) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %33) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %31) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %31) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %30) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %30) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %29) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %29) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %28) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %28) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %27) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %27) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %26) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %26) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %25) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %25) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %24) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %24) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %23) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %23) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %21) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %21) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %20) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %20) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %18) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %18) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %17) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %17) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %16) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %16) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%58, %57, %56, %44, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%59, %57, %56, %44, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %42) : (i32, i32) -> ()
    %60 = llvm.add %54, %50 : i64
    llvm.br ^bb3(%60 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%6, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %47) : (i32, i32) -> ()
    llvm.br ^bb6(%49 : i64)
  ^bb6(%61: i64):  // 2 preds: ^bb5, ^bb7
    %62 = llvm.icmp "slt" %61, %46 : i64
    llvm.cond_br %62, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%10, %45) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    %63 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    %64 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x bf16>
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    %65 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    %66 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %40) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %40) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %39) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %39) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %38) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %38) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %37) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %37) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %36) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %36) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %35) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %35) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %34) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %34) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %33) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %33) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %31) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %31) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %30) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %30) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %29) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %29) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %28) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %28) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %27) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %27) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %26) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %26) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %25) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %25) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %24) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %24) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %23) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %23) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %21) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %21) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %20) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %20) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %18) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %18) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %17) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %17) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %16) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %16) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%65, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%65, %64, %63, %44, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%63, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%64, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%66, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%66, %64, %63, %44, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %42) : (i32, i32) -> ()
    %67 = llvm.add %61, %50 : i64
    llvm.br ^bb6(%67 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.release(%6, %41) : (i32, i32) -> ()
    %68 = llvm.add %52, %48 : i64
    llvm.br ^bb1(%68 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%11, %47) : (i32, i32) -> ()
    llvm.br ^bb10(%49 : i64)
  ^bb10(%69: i64):  // 2 preds: ^bb9, ^bb11
    %70 = llvm.icmp "slt" %69, %46 : i64
    llvm.cond_br %70, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%10, %45) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    %71 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    %72 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x bf16>
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    %73 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    %74 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %41) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %40) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %40) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %39) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %39) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %38) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %38) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %37) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %37) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %36) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %36) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %35) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %35) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %34) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %34) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %33) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %33) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %32) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %31) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %31) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %30) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %30) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %29) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %29) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %28) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %28) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %27) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %27) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %26) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %26) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %25) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %25) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %24) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %24) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %23) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %23) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %22) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %21) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %21) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %20) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %20) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %19) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %18) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %18) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %17) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %17) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %16) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %16) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %14) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%73, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%73, %72, %71, %44, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %45) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%71, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%72, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%74, %3 : !llvm.ptr, i64)] : i1
    llvm.call @scale(%74, %72, %71, %44, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %42) : (i32, i32) -> ()
    %75 = llvm.add %69, %50 : i64
    llvm.br ^bb10(%75 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.release(%6, %41) : (i32, i32) -> ()
    llvm.return
  }
}

