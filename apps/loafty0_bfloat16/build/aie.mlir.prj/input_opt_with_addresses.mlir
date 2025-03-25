module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in0_5_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in0_5_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in0_4_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in0_4_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in0_3_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in0_3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in0_2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in0_2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in0_1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in0_1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in0_0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in0_0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
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
  llvm.mlir.global external @of_add_v1_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w0_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w1_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
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
  llvm.mlir.global external @of_sub2mean_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
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
  llvm.mlir.global external @of_add_w1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_w0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @of_add_v1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
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
  llvm.mlir.global external @in0_0_cons() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in0_1_cons() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in0_2_cons() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in0_3_cons() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in0_4_cons() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in0_5_cons() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.mlir.global external @in0() {addr_space = 0 : i32} : !llvm.array<96 x bf16>
  llvm.func @passthrough(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @baseline_scale(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) attributes {sym_visibility = "private"}
  llvm.func @add_kernel(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @main_kernel(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) attributes {sym_visibility = "private"}
  llvm.func @sub_kernel(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @mean(!llvm.ptr, !llvm.ptr, i32, i32) attributes {sym_visibility = "private"}
  llvm.func @core_2_2() {
    %0 = llvm.mlir.addressof @out_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_sub2mean_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_sub2mean_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(true) : i1
    %4 = llvm.mlir.addressof @out_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(32 : index) : i64
    %6 = llvm.mlir.constant(49 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(31 : i32) : i32
    %9 = llvm.mlir.constant(30 : i32) : i32
    %10 = llvm.mlir.constant(29 : i32) : i32
    %11 = llvm.mlir.constant(28 : i32) : i32
    %12 = llvm.mlir.constant(27 : i32) : i32
    %13 = llvm.mlir.constant(26 : i32) : i32
    %14 = llvm.mlir.constant(25 : i32) : i32
    %15 = llvm.mlir.constant(24 : i32) : i32
    %16 = llvm.mlir.constant(23 : i32) : i32
    %17 = llvm.mlir.constant(22 : i32) : i32
    %18 = llvm.mlir.constant(21 : i32) : i32
    %19 = llvm.mlir.constant(20 : i32) : i32
    %20 = llvm.mlir.constant(19 : i32) : i32
    %21 = llvm.mlir.constant(18 : i32) : i32
    %22 = llvm.mlir.constant(17 : i32) : i32
    %23 = llvm.mlir.constant(16 : i32) : i32
    %24 = llvm.mlir.constant(15 : i32) : i32
    %25 = llvm.mlir.constant(14 : i32) : i32
    %26 = llvm.mlir.constant(13 : i32) : i32
    %27 = llvm.mlir.constant(12 : i32) : i32
    %28 = llvm.mlir.constant(11 : i32) : i32
    %29 = llvm.mlir.constant(10 : i32) : i32
    %30 = llvm.mlir.constant(9 : i32) : i32
    %31 = llvm.mlir.constant(8 : i32) : i32
    %32 = llvm.mlir.constant(7 : i32) : i32
    %33 = llvm.mlir.constant(6 : i32) : i32
    %34 = llvm.mlir.constant(5 : i32) : i32
    %35 = llvm.mlir.constant(4 : i32) : i32
    %36 = llvm.mlir.constant(3 : i32) : i32
    %37 = llvm.mlir.constant(2 : i32) : i32
    %38 = llvm.mlir.constant(1 : i32) : i32
    %39 = llvm.mlir.constant(0 : i32) : i32
    %40 = llvm.mlir.constant(4608 : i32) : i32
    %41 = llvm.mlir.constant(-1 : i32) : i32
    %42 = llvm.mlir.constant(2 : index) : i64
    %43 = llvm.mlir.constant(512 : index) : i64
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %46 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%44 : i64)
  ^bb1(%47: i64):  // 2 preds: ^bb0, ^bb4
    %48 = llvm.icmp "slt" %47, %45 : i64
    llvm.cond_br %48, ^bb2(%44 : i64), ^bb5
  ^bb2(%49: i64):  // 2 preds: ^bb1, ^bb3
    %50 = llvm.icmp "slt" %49, %43 : i64
    llvm.cond_br %50, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%7, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    %51 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x bf16>
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    %52 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %51, %40, %39) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %51, %40, %38) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %51, %40, %37) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %51, %40, %36) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %51, %40, %35) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %51, %40, %34) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %51, %40, %33) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %51, %40, %32) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %51, %40, %31) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %51, %40, %30) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %51, %40, %29) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %51, %40, %28) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %51, %40, %27) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %51, %40, %26) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %51, %40, %25) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %51, %40, %24) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %51, %40, %23) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %51, %40, %22) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %51, %40, %21) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %51, %40, %20) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %51, %40, %19) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %51, %40, %18) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %51, %40, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %51, %40, %16) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %51, %40, %15) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %51, %40, %14) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %51, %40, %13) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %51, %40, %12) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %51, %40, %11) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %51, %40, %10) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %51, %40, %9) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %51, %40, %8) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%7, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    %54 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<32 x bf16>
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %54, %40, %39) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %40, %38) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %54, %40, %37) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %40, %36) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %54, %40, %35) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %40, %34) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %54, %40, %33) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %40, %32) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %54, %40, %31) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %40, %30) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %54, %40, %29) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %40, %28) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %54, %40, %27) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %40, %26) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %54, %40, %25) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %40, %24) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %54, %40, %23) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %40, %22) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %54, %40, %21) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %40, %20) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %54, %40, %19) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %40, %18) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %54, %40, %17) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %40, %16) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %54, %40, %15) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %40, %14) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %54, %40, %13) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %40, %12) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %54, %40, %11) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %40, %10) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%52, %54, %40, %9) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%18, %41) : (i32, i32) -> ()
    llvm.intr.assume %3 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %3 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%53, %54, %40, %8) : (!llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%19, %38) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %38) : (i32, i32) -> ()
    %55 = llvm.add %49, %42 : i64
    llvm.br ^bb2(%55 : i64)
  ^bb4:  // pred: ^bb2
    %56 = llvm.add %47, %46 : i64
    llvm.br ^bb1(%56 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_1_2() {
    %0 = llvm.mlir.addressof @of_sub2mean_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_real2sub_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_imag2sub_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_sub2mean_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(50 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(53 : i32) : i32
    %9 = llvm.mlir.constant(52 : i32) : i32
    %10 = llvm.mlir.constant(51 : i32) : i32
    %11 = llvm.mlir.constant(49 : i32) : i32
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
    llvm.call @sub_kernel(%26, %25, %24, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %14) : (i32, i32) -> ()
    %27 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%27, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%25, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%26, %3 : !llvm.ptr, i64)] : i1
    llvm.call @sub_kernel(%26, %25, %27, %13) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
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
  llvm.func @core_3_2() {
    %0 = llvm.mlir.addressof @of_in_main11_cons_buff_0 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_add2main1_1_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.constant(32 : index) : i64
    %3 = llvm.mlir.constant(true) : i1
    %4 = llvm.mlir.addressof @of_join_imag1_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(48 : i32) : i32
    %6 = llvm.mlir.constant(50 : i32) : i32
    %7 = llvm.mlir.constant(53 : i32) : i32
    %8 = llvm.mlir.constant(52 : i32) : i32
    %9 = llvm.mlir.constant(51 : i32) : i32
    %10 = llvm.mlir.constant(49 : i32) : i32
    %11 = llvm.mlir.constant(1 : i32) : i32
    %12 = llvm.mlir.constant(4608 : i32) : i32
    %13 = llvm.mlir.constant(16384 : index) : i64
    %14 = llvm.mlir.constant(-1 : i32) : i32
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%15 : i64)
  ^bb1(%18: i64):  // 2 preds: ^bb0, ^bb5
    %19 = llvm.icmp "slt" %18, %16 : i64
    llvm.cond_br %19, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%10, %14) : (i32, i32) -> ()
    llvm.br ^bb3(%15 : i64)
  ^bb3(%20: i64):  // 2 preds: ^bb2, ^bb4
    %21 = llvm.icmp "slt" %20, %13 : i64
    llvm.cond_br %21, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %14) : (i32, i32) -> ()
    %22 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2304 x bf16>
    llvm.intr.assume %3 ["align"(%22, %2 : !llvm.ptr, i64)] : i1
    %23 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %3 ["align"(%23, %2 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4610 x bf16>
    llvm.intr.assume %3 ["align"(%24, %2 : !llvm.ptr, i64)] : i1
    llvm.call @main_kernel(%23, %24, %22, %12, %11) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %11) : (i32, i32) -> ()
    %25 = llvm.add %20, %17 : i64
    llvm.br ^bb3(%25 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%5, %11) : (i32, i32) -> ()
    %26 = llvm.add %18, %17 : i64
    llvm.br ^bb1(%26 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_2_3() {
    %0 = llvm.mlir.addressof @of_in_main10_cons_buff_0 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_add2main1_0_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.constant(32 : index) : i64
    %3 = llvm.mlir.constant(true) : i1
    %4 = llvm.mlir.addressof @of_join_real1_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(48 : i32) : i32
    %6 = llvm.mlir.constant(50 : i32) : i32
    %7 = llvm.mlir.constant(53 : i32) : i32
    %8 = llvm.mlir.constant(52 : i32) : i32
    %9 = llvm.mlir.constant(51 : i32) : i32
    %10 = llvm.mlir.constant(49 : i32) : i32
    %11 = llvm.mlir.constant(1 : i32) : i32
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(4608 : i32) : i32
    %14 = llvm.mlir.constant(16384 : index) : i64
    %15 = llvm.mlir.constant(-1 : i32) : i32
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%16 : i64)
  ^bb1(%19: i64):  // 2 preds: ^bb0, ^bb5
    %20 = llvm.icmp "slt" %19, %18 : i64
    llvm.cond_br %20, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%10, %15) : (i32, i32) -> ()
    llvm.br ^bb3(%16 : i64)
  ^bb3(%21: i64):  // 2 preds: ^bb2, ^bb4
    %22 = llvm.icmp "slt" %21, %14 : i64
    llvm.cond_br %22, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%9, %15) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %15) : (i32, i32) -> ()
    %23 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2304 x bf16>
    llvm.intr.assume %3 ["align"(%23, %2 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %3 ["align"(%24, %2 : !llvm.ptr, i64)] : i1
    %25 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4610 x bf16>
    llvm.intr.assume %3 ["align"(%25, %2 : !llvm.ptr, i64)] : i1
    llvm.call @main_kernel(%24, %25, %23, %13, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %11) : (i32, i32) -> ()
    %26 = llvm.add %21, %17 : i64
    llvm.br ^bb3(%26 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%5, %11) : (i32, i32) -> ()
    %27 = llvm.add %19, %17 : i64
    llvm.br ^bb1(%27 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_2_4() {
    %0 = llvm.mlir.addressof @of_add_w1_buff_0 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_add_uv1_buff_0 : !llvm.ptr
    %2 = llvm.mlir.constant(32 : index) : i64
    %3 = llvm.mlir.constant(true) : i1
    %4 = llvm.mlir.addressof @of_add2main1_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(48 : i32) : i32
    %6 = llvm.mlir.constant(36 : i32) : i32
    %7 = llvm.mlir.constant(51 : i32) : i32
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(49 : i32) : i32
    %10 = llvm.mlir.constant(37 : i32) : i32
    %11 = llvm.mlir.constant(1 : i32) : i32
    %12 = llvm.mlir.constant(4608 : i32) : i32
    %13 = llvm.mlir.constant(-1 : i32) : i32
    %14 = llvm.mlir.constant(16384 : index) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%15 : i64)
  ^bb1(%18: i64):  // 2 preds: ^bb0, ^bb4
    %19 = llvm.icmp "slt" %18, %17 : i64
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
    llvm.call @add_kernel(%24, %23, %22, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %11) : (i32, i32) -> ()
    %25 = llvm.add %20, %16 : i64
    llvm.br ^bb2(%25 : i64)
  ^bb4:  // pred: ^bb2
    %26 = llvm.add %18, %16 : i64
    llvm.br ^bb1(%26 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_3_4() {
    %0 = llvm.mlir.addressof @of_add_u1_buff_0 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_add_v1_buff_0 : !llvm.ptr
    %2 = llvm.mlir.constant(32 : index) : i64
    %3 = llvm.mlir.constant(true) : i1
    %4 = llvm.mlir.addressof @of_add_uv1_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(4 : i32) : i32
    %6 = llvm.mlir.constant(36 : i32) : i32
    %7 = llvm.mlir.constant(17 : i32) : i32
    %8 = llvm.mlir.constant(16 : i32) : i32
    %9 = llvm.mlir.constant(5 : i32) : i32
    %10 = llvm.mlir.constant(37 : i32) : i32
    %11 = llvm.mlir.constant(1 : i32) : i32
    %12 = llvm.mlir.constant(4608 : i32) : i32
    %13 = llvm.mlir.constant(-1 : i32) : i32
    %14 = llvm.mlir.constant(16384 : index) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%15 : i64)
  ^bb1(%18: i64):  // 2 preds: ^bb0, ^bb4
    %19 = llvm.icmp "slt" %18, %17 : i64
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
    llvm.call @add_kernel(%24, %23, %22, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %11) : (i32, i32) -> ()
    %25 = llvm.add %20, %16 : i64
    llvm.br ^bb2(%25 : i64)
  ^bb4:  // pred: ^bb2
    %26 = llvm.add %18, %16 : i64
    llvm.br ^bb1(%26 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_2_5() {
    %0 = llvm.mlir.addressof @in0_5_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in0_5_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_main14_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_add_w1_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(50 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(53 : i32) : i32
    %9 = llvm.mlir.constant(52 : i32) : i32
    %10 = llvm.mlir.constant(49 : i32) : i32
    %11 = llvm.mlir.constant(51 : i32) : i32
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
    %41 = llvm.mlir.constant(1 : i32) : i32
    %42 = llvm.mlir.constant(2 : i32) : i32
    %43 = llvm.mlir.constant(0 : i32) : i32
    %44 = llvm.mlir.constant(32 : i32) : i32
    %45 = llvm.mlir.constant(4608 : i32) : i32
    %46 = llvm.mlir.constant(512 : index) : i64
    %47 = llvm.mlir.constant(-1 : i32) : i32
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%49 : i64)
  ^bb1(%52: i64):  // 2 preds: ^bb0, ^bb5
    %53 = llvm.icmp "slt" %52, %51 : i64
    llvm.cond_br %53, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%11, %47) : (i32, i32) -> ()
    llvm.br ^bb3(%49 : i64)
  ^bb3(%54: i64):  // 2 preds: ^bb2, ^bb4
    %55 = llvm.icmp "slt" %54, %46 : i64
    llvm.cond_br %55, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%10, %47) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    %56 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    %57 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4610 x bf16>
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    %58 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<96 x bf16>
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %43, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %41, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %42, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %40, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %39, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %38, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %37, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %36, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %35, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %34, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %33, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %32, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %31, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %30, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %29, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %28, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %27, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %26, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %25, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %24, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %23, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %22, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %21, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %20, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %19, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %18, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %17, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %16, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %15, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %14, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %13, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %12, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %47) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    %59 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<96 x bf16>
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %43, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %41, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %42, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %40, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %39, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %38, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %37, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %36, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %35, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %34, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %33, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %32, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %31, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %30, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %29, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %28, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %27, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %26, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %25, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %24, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %23, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %22, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %21, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %20, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %19, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %18, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %17, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %16, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %15, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %14, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %13, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %12, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %41) : (i32, i32) -> ()
    %60 = llvm.add %54, %48 : i64
    llvm.br ^bb3(%60 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%6, %41) : (i32, i32) -> ()
    %61 = llvm.add %52, %50 : i64
    llvm.br ^bb1(%61 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_3_3() {
    %0 = llvm.mlir.addressof @in0_4_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in0_4_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_main13_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_add_v1_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(50 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(53 : i32) : i32
    %9 = llvm.mlir.constant(52 : i32) : i32
    %10 = llvm.mlir.constant(49 : i32) : i32
    %11 = llvm.mlir.constant(51 : i32) : i32
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
    %44 = llvm.mlir.constant(32 : i32) : i32
    %45 = llvm.mlir.constant(4608 : i32) : i32
    %46 = llvm.mlir.constant(512 : index) : i64
    %47 = llvm.mlir.constant(-1 : i32) : i32
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%49 : i64)
  ^bb1(%52: i64):  // 2 preds: ^bb0, ^bb5
    %53 = llvm.icmp "slt" %52, %51 : i64
    llvm.cond_br %53, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%11, %47) : (i32, i32) -> ()
    llvm.br ^bb3(%49 : i64)
  ^bb3(%54: i64):  // 2 preds: ^bb2, ^bb4
    %55 = llvm.icmp "slt" %54, %46 : i64
    llvm.cond_br %55, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%10, %47) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    %56 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    %57 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4610 x bf16>
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    %58 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<96 x bf16>
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %43, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %42, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %41, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %40, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %39, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %38, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %37, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %36, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %35, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %34, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %33, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %32, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %31, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %30, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %29, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %28, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %27, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %26, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %25, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %24, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %23, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %22, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %21, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %20, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %19, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %18, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %17, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %16, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %15, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %14, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %13, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %12, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %47) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    %59 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<96 x bf16>
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %43, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %42, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %41, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %40, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %39, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %38, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %37, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %36, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %35, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %34, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %33, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %32, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %31, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %30, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %29, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %28, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %27, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %26, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %25, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %24, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %23, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %22, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %21, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %20, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %19, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %18, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %17, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %16, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %15, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %14, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %13, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %12, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %42) : (i32, i32) -> ()
    %60 = llvm.add %54, %48 : i64
    llvm.br ^bb3(%60 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%6, %42) : (i32, i32) -> ()
    %61 = llvm.add %52, %50 : i64
    llvm.br ^bb1(%61 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_3_5() {
    %0 = llvm.mlir.addressof @in0_3_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in0_3_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_main12_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_add_u1_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(50 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(53 : i32) : i32
    %9 = llvm.mlir.constant(52 : i32) : i32
    %10 = llvm.mlir.constant(49 : i32) : i32
    %11 = llvm.mlir.constant(51 : i32) : i32
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
    %44 = llvm.mlir.constant(32 : i32) : i32
    %45 = llvm.mlir.constant(4608 : i32) : i32
    %46 = llvm.mlir.constant(2 : index) : i64
    %47 = llvm.mlir.constant(512 : index) : i64
    %48 = llvm.mlir.constant(-1 : i32) : i32
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%49 : i64)
  ^bb1(%52: i64):  // 2 preds: ^bb0, ^bb5
    %53 = llvm.icmp "slt" %52, %50 : i64
    llvm.cond_br %53, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%11, %48) : (i32, i32) -> ()
    llvm.br ^bb3(%49 : i64)
  ^bb3(%54: i64):  // 2 preds: ^bb2, ^bb4
    %55 = llvm.icmp "slt" %54, %47 : i64
    llvm.cond_br %55, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%10, %48) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    %56 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    %57 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4610 x bf16>
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    %58 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<96 x bf16>
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %43, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %42, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %41, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %40, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %39, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %38, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %37, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %36, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %35, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %34, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %33, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %32, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %31, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %30, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %29, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %28, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %27, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %26, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %25, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %24, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %23, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %22, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %21, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %20, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %19, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %18, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %17, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %16, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %15, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %14, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %13, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %12, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %48) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    %59 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<96 x bf16>
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %43, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %42, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %41, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %40, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %39, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %38, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %37, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %36, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %35, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %34, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %33, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %32, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %31, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %30, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %29, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %28, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %27, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %26, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %25, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %24, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %23, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %22, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %21, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %20, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %19, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %18, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %17, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %16, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %15, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %14, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %13, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %12, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %42) : (i32, i32) -> ()
    %60 = llvm.add %54, %46 : i64
    llvm.br ^bb3(%60 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%6, %42) : (i32, i32) -> ()
    %61 = llvm.add %52, %51 : i64
    llvm.br ^bb1(%61 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_2() {
    %0 = llvm.mlir.addressof @of_in_main01_cons_buff_0 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_add2main0_1_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.constant(32 : index) : i64
    %3 = llvm.mlir.constant(true) : i1
    %4 = llvm.mlir.addressof @of_join_imag0_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(48 : i32) : i32
    %6 = llvm.mlir.constant(50 : i32) : i32
    %7 = llvm.mlir.constant(53 : i32) : i32
    %8 = llvm.mlir.constant(52 : i32) : i32
    %9 = llvm.mlir.constant(51 : i32) : i32
    %10 = llvm.mlir.constant(49 : i32) : i32
    %11 = llvm.mlir.constant(1 : i32) : i32
    %12 = llvm.mlir.constant(4608 : i32) : i32
    %13 = llvm.mlir.constant(16384 : index) : i64
    %14 = llvm.mlir.constant(-1 : i32) : i32
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%15 : i64)
  ^bb1(%18: i64):  // 2 preds: ^bb0, ^bb5
    %19 = llvm.icmp "slt" %18, %16 : i64
    llvm.cond_br %19, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%10, %14) : (i32, i32) -> ()
    llvm.br ^bb3(%15 : i64)
  ^bb3(%20: i64):  // 2 preds: ^bb2, ^bb4
    %21 = llvm.icmp "slt" %20, %13 : i64
    llvm.cond_br %21, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %14) : (i32, i32) -> ()
    %22 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2304 x bf16>
    llvm.intr.assume %3 ["align"(%22, %2 : !llvm.ptr, i64)] : i1
    %23 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %3 ["align"(%23, %2 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4610 x bf16>
    llvm.intr.assume %3 ["align"(%24, %2 : !llvm.ptr, i64)] : i1
    llvm.call @main_kernel(%23, %24, %22, %12, %11) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %11) : (i32, i32) -> ()
    %25 = llvm.add %20, %17 : i64
    llvm.br ^bb3(%25 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%5, %11) : (i32, i32) -> ()
    %26 = llvm.add %18, %17 : i64
    llvm.br ^bb1(%26 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_1_3() {
    %0 = llvm.mlir.addressof @of_in_main00_cons_buff_0 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_add2main0_0_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.constant(32 : index) : i64
    %3 = llvm.mlir.constant(true) : i1
    %4 = llvm.mlir.addressof @of_join_real0_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(48 : i32) : i32
    %6 = llvm.mlir.constant(50 : i32) : i32
    %7 = llvm.mlir.constant(53 : i32) : i32
    %8 = llvm.mlir.constant(52 : i32) : i32
    %9 = llvm.mlir.constant(51 : i32) : i32
    %10 = llvm.mlir.constant(49 : i32) : i32
    %11 = llvm.mlir.constant(1 : i32) : i32
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(4608 : i32) : i32
    %14 = llvm.mlir.constant(16384 : index) : i64
    %15 = llvm.mlir.constant(-1 : i32) : i32
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%16 : i64)
  ^bb1(%19: i64):  // 2 preds: ^bb0, ^bb5
    %20 = llvm.icmp "slt" %19, %18 : i64
    llvm.cond_br %20, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%10, %15) : (i32, i32) -> ()
    llvm.br ^bb3(%16 : i64)
  ^bb3(%21: i64):  // 2 preds: ^bb2, ^bb4
    %22 = llvm.icmp "slt" %21, %14 : i64
    llvm.cond_br %22, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%9, %15) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %15) : (i32, i32) -> ()
    %23 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<2304 x bf16>
    llvm.intr.assume %3 ["align"(%23, %2 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %3 ["align"(%24, %2 : !llvm.ptr, i64)] : i1
    %25 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4610 x bf16>
    llvm.intr.assume %3 ["align"(%25, %2 : !llvm.ptr, i64)] : i1
    llvm.call @main_kernel(%24, %25, %23, %13, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %11) : (i32, i32) -> ()
    %26 = llvm.add %21, %17 : i64
    llvm.br ^bb3(%26 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%5, %11) : (i32, i32) -> ()
    %27 = llvm.add %19, %17 : i64
    llvm.br ^bb1(%27 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_1_4() {
    %0 = llvm.mlir.addressof @of_add_w0_buff_0 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_add_uv0_buff_0 : !llvm.ptr
    %2 = llvm.mlir.constant(32 : index) : i64
    %3 = llvm.mlir.constant(true) : i1
    %4 = llvm.mlir.addressof @of_add2main0_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(16 : i32) : i32
    %6 = llvm.mlir.constant(36 : i32) : i32
    %7 = llvm.mlir.constant(49 : i32) : i32
    %8 = llvm.mlir.constant(48 : i32) : i32
    %9 = llvm.mlir.constant(17 : i32) : i32
    %10 = llvm.mlir.constant(37 : i32) : i32
    %11 = llvm.mlir.constant(1 : i32) : i32
    %12 = llvm.mlir.constant(4608 : i32) : i32
    %13 = llvm.mlir.constant(-1 : i32) : i32
    %14 = llvm.mlir.constant(16384 : index) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%15 : i64)
  ^bb1(%18: i64):  // 2 preds: ^bb0, ^bb4
    %19 = llvm.icmp "slt" %18, %17 : i64
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
    llvm.call @add_kernel(%24, %23, %22, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %11) : (i32, i32) -> ()
    %25 = llvm.add %20, %16 : i64
    llvm.br ^bb2(%25 : i64)
  ^bb4:  // pred: ^bb2
    %26 = llvm.add %18, %16 : i64
    llvm.br ^bb1(%26 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_4() {
    %0 = llvm.mlir.addressof @of_add_u0_buff_0 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_add_v0_buff_0 : !llvm.ptr
    %2 = llvm.mlir.constant(32 : index) : i64
    %3 = llvm.mlir.constant(true) : i1
    %4 = llvm.mlir.addressof @of_add_uv0_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(4 : i32) : i32
    %6 = llvm.mlir.constant(36 : i32) : i32
    %7 = llvm.mlir.constant(49 : i32) : i32
    %8 = llvm.mlir.constant(48 : i32) : i32
    %9 = llvm.mlir.constant(5 : i32) : i32
    %10 = llvm.mlir.constant(37 : i32) : i32
    %11 = llvm.mlir.constant(1 : i32) : i32
    %12 = llvm.mlir.constant(4608 : i32) : i32
    %13 = llvm.mlir.constant(-1 : i32) : i32
    %14 = llvm.mlir.constant(16384 : index) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%15 : i64)
  ^bb1(%18: i64):  // 2 preds: ^bb0, ^bb4
    %19 = llvm.icmp "slt" %18, %17 : i64
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
    llvm.call @add_kernel(%24, %23, %22, %12) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %11) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%5, %11) : (i32, i32) -> ()
    %25 = llvm.add %20, %16 : i64
    llvm.br ^bb2(%25 : i64)
  ^bb4:  // pred: ^bb2
    %26 = llvm.add %18, %16 : i64
    llvm.br ^bb1(%26 : i64)
  ^bb5:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_1_5() {
    %0 = llvm.mlir.addressof @in0_2_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in0_2_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_main04_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_add_w0_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(50 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(53 : i32) : i32
    %9 = llvm.mlir.constant(52 : i32) : i32
    %10 = llvm.mlir.constant(49 : i32) : i32
    %11 = llvm.mlir.constant(51 : i32) : i32
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
    %41 = llvm.mlir.constant(1 : i32) : i32
    %42 = llvm.mlir.constant(2 : i32) : i32
    %43 = llvm.mlir.constant(0 : i32) : i32
    %44 = llvm.mlir.constant(32 : i32) : i32
    %45 = llvm.mlir.constant(4608 : i32) : i32
    %46 = llvm.mlir.constant(2 : index) : i64
    %47 = llvm.mlir.constant(512 : index) : i64
    %48 = llvm.mlir.constant(-1 : i32) : i32
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%49 : i64)
  ^bb1(%52: i64):  // 2 preds: ^bb0, ^bb5
    %53 = llvm.icmp "slt" %52, %51 : i64
    llvm.cond_br %53, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%11, %48) : (i32, i32) -> ()
    llvm.br ^bb3(%49 : i64)
  ^bb3(%54: i64):  // 2 preds: ^bb2, ^bb4
    %55 = llvm.icmp "slt" %54, %47 : i64
    llvm.cond_br %55, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%10, %48) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    %56 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    %57 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4610 x bf16>
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    %58 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<96 x bf16>
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %43, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %41, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %42, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %40, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %39, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %38, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %37, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %36, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %35, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %34, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %33, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %32, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %31, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %30, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %29, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %28, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %27, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %26, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %25, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %24, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %23, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %22, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %21, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %20, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %19, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %18, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %17, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %16, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %15, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %14, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %13, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %12, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %48) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    %59 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<96 x bf16>
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %43, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %41, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %42, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %40, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %39, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %38, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %37, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %36, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %35, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %34, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %33, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %32, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %31, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %30, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %29, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %28, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %27, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %26, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %25, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %24, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %23, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %22, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %21, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %20, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %19, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %18, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %17, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %16, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %15, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %14, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %13, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %12, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %41) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %41) : (i32, i32) -> ()
    %60 = llvm.add %54, %46 : i64
    llvm.br ^bb3(%60 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%6, %41) : (i32, i32) -> ()
    %61 = llvm.add %52, %50 : i64
    llvm.br ^bb1(%61 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_3() {
    %0 = llvm.mlir.addressof @in0_1_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in0_1_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_main03_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_add_v0_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(50 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(53 : i32) : i32
    %9 = llvm.mlir.constant(52 : i32) : i32
    %10 = llvm.mlir.constant(49 : i32) : i32
    %11 = llvm.mlir.constant(51 : i32) : i32
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
    %44 = llvm.mlir.constant(32 : i32) : i32
    %45 = llvm.mlir.constant(4608 : i32) : i32
    %46 = llvm.mlir.constant(512 : index) : i64
    %47 = llvm.mlir.constant(-1 : i32) : i32
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%49 : i64)
  ^bb1(%52: i64):  // 2 preds: ^bb0, ^bb5
    %53 = llvm.icmp "slt" %52, %51 : i64
    llvm.cond_br %53, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%11, %47) : (i32, i32) -> ()
    llvm.br ^bb3(%49 : i64)
  ^bb3(%54: i64):  // 2 preds: ^bb2, ^bb4
    %55 = llvm.icmp "slt" %54, %46 : i64
    llvm.cond_br %55, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%10, %47) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    %56 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    %57 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4610 x bf16>
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    %58 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<96 x bf16>
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %43, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %42, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %41, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %40, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %39, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %38, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %37, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %36, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %35, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %34, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %33, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %32, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %31, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %30, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %29, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %28, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %27, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %26, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %25, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %24, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %23, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %22, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %21, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %20, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %19, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %18, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %17, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %16, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %15, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %14, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %13, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %12, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %47) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    %59 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<96 x bf16>
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %43, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %42, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %41, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %40, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %39, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %38, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %37, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %36, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %35, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %34, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %33, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %32, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %31, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %30, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %29, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %28, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %27, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %26, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %25, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %24, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %23, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %22, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %21, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %20, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %19, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %18, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %17, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %16, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %15, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %14, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %13, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %47) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %12, %42) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %42) : (i32, i32) -> ()
    %60 = llvm.add %54, %48 : i64
    llvm.br ^bb3(%60 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%6, %42) : (i32, i32) -> ()
    %61 = llvm.add %52, %50 : i64
    llvm.br ^bb1(%61 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
  llvm.func @core_0_5() {
    %0 = llvm.mlir.addressof @in0_0_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in0_0_cons_buff_0 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_in_main02_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_add_u0_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(50 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(53 : i32) : i32
    %9 = llvm.mlir.constant(52 : i32) : i32
    %10 = llvm.mlir.constant(49 : i32) : i32
    %11 = llvm.mlir.constant(51 : i32) : i32
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
    %44 = llvm.mlir.constant(32 : i32) : i32
    %45 = llvm.mlir.constant(4608 : i32) : i32
    %46 = llvm.mlir.constant(2 : index) : i64
    %47 = llvm.mlir.constant(512 : index) : i64
    %48 = llvm.mlir.constant(-1 : i32) : i32
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(9223372036854775807 : index) : i64
    llvm.br ^bb1(%49 : i64)
  ^bb1(%52: i64):  // 2 preds: ^bb0, ^bb5
    %53 = llvm.icmp "slt" %52, %51 : i64
    llvm.cond_br %53, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%11, %48) : (i32, i32) -> ()
    llvm.br ^bb3(%49 : i64)
  ^bb3(%54: i64):  // 2 preds: ^bb2, ^bb4
    %55 = llvm.icmp "slt" %54, %47 : i64
    llvm.cond_br %55, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%10, %48) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    %56 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4608 x bf16>
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    %57 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4610 x bf16>
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    %58 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<96 x bf16>
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %43, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %42, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %41, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %40, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %39, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %38, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %37, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %36, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %35, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %34, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %33, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %32, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %31, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %30, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %29, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %28, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %27, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %26, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %25, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %24, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %23, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %22, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %21, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %20, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %19, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %18, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %17, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %16, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %15, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %14, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %13, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%58, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %58, %56, %45, %44, %12, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%10, %48) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    %59 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<96 x bf16>
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %43, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %42, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %41, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %40, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %39, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %38, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %37, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %36, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %35, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %34, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %33, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %32, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %31, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %30, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %29, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %28, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %27, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %26, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %25, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %24, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %23, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %22, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %21, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %20, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %19, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %18, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %17, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %16, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %15, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %14, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %13, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %48) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%56, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%57, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    llvm.call @baseline_scale(%57, %59, %56, %45, %44, %12, %43) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32, i32, i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %42) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %42) : (i32, i32) -> ()
    %60 = llvm.add %54, %46 : i64
    llvm.br ^bb3(%60 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.release(%6, %42) : (i32, i32) -> ()
    %61 = llvm.add %52, %50 : i64
    llvm.br ^bb1(%61 : i64)
  ^bb6:  // pred: ^bb1
    llvm.return
  }
}

