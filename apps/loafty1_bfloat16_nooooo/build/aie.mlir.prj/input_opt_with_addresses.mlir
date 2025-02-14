module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @inA_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @inA_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @memA0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA3_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA4_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA4_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA5_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA5_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC0_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC0_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC1_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC1_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC2_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC2_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC3_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC3_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC4_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC4_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC5_buff_1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC5_buff_0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @outC_buff_1() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @outC_buff_0() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.func @debug_i32(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.put.ms(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.get.ss() -> !llvm.struct<(i32, i32)> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.mcd.write.vec(vector<16xi32>, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.scd.read.vec(i32) -> vector<16xi32> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.acquire(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.release(i32, i32) attributes {sym_visibility = "private"}
  llvm.mlir.global external @outC_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @outC() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @memC5_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC5() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC4_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC4() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC3_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC3() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC2_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC2() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC1_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC0_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memC0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA5_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA5() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA4_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA4() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA3_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA3() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA2_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA2() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA1_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA1() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA0_cons() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @memA0() {addr_space = 0 : i32} : !llvm.array<768 x bf16>
  llvm.mlir.global external @inA_cons() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.mlir.global external @inA() {addr_space = 0 : i32} : !llvm.array<4608 x bf16>
  llvm.func @passthrough(!llvm.ptr, !llvm.ptr, bf16) attributes {sym_visibility = "private"}
  llvm.func @core_3_4() {
    %0 = llvm.mlir.addressof @memC5_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @memA5_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @memC5_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @memA5_cons_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(51 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(49 : i32) : i32
    %9 = llvm.mlir.constant(50 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(768 : index) : i64
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(4 : index) : i64
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%15 : i64)
  ^bb1(%18: i64):  // 2 preds: ^bb0, ^bb25
    %19 = llvm.icmp "slt" %18, %17 : i64
    llvm.cond_br %19, ^bb2(%15 : i64), ^bb26(%15 : i64)
  ^bb2(%20: i64):  // 2 preds: ^bb1, ^bb9
    %21 = llvm.icmp "slt" %20, %13 : i64
    llvm.cond_br %21, ^bb3, ^bb10
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb4(%15 : i64)
  ^bb4(%22: i64):  // 2 preds: ^bb3, ^bb5
    %23 = llvm.icmp "slt" %22, %11 : i64
    llvm.cond_br %23, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %24 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    %25 = llvm.getelementptr %24[%22] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %26 = llvm.load %25 : !llvm.ptr -> bf16
    %27 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%27, %3 : !llvm.ptr, i64)] : i1
    %28 = llvm.getelementptr %27[%22] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %26, %28 : bf16, !llvm.ptr
    %29 = llvm.add %22, %16 : i64
    llvm.br ^bb4(%29 : i64)
  ^bb6:  // pred: ^bb4
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb7(%15 : i64)
  ^bb7(%30: i64):  // 2 preds: ^bb6, ^bb8
    %31 = llvm.icmp "slt" %30, %11 : i64
    llvm.cond_br %31, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %32 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %32[%30] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %34 = llvm.load %33 : !llvm.ptr -> bf16
    %35 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%35, %3 : !llvm.ptr, i64)] : i1
    %36 = llvm.getelementptr %35[%30] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %34, %36 : bf16, !llvm.ptr
    %37 = llvm.add %30, %16 : i64
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %32[%37] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %39 = llvm.load %38 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%35, %3 : !llvm.ptr, i64)] : i1
    %40 = llvm.getelementptr %35[%37] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %39, %40 : bf16, !llvm.ptr
    %41 = llvm.add %30, %14 : i64
    llvm.br ^bb7(%41 : i64)
  ^bb9:  // pred: ^bb7
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %42 = llvm.add %20, %14 : i64
    llvm.br ^bb2(%42 : i64)
  ^bb10:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb11(%15 : i64)
  ^bb11(%43: i64):  // 2 preds: ^bb10, ^bb12
    %44 = llvm.icmp "slt" %43, %11 : i64
    llvm.cond_br %44, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %45 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%45, %3 : !llvm.ptr, i64)] : i1
    %46 = llvm.getelementptr %45[%43] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %47 = llvm.load %46 : !llvm.ptr -> bf16
    %48 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%48, %3 : !llvm.ptr, i64)] : i1
    %49 = llvm.getelementptr %48[%43] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %47, %49 : bf16, !llvm.ptr
    %50 = llvm.add %43, %16 : i64
    llvm.intr.assume %4 ["align"(%45, %3 : !llvm.ptr, i64)] : i1
    %51 = llvm.getelementptr %45[%50] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %52 = llvm.load %51 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%48, %3 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %48[%50] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %52, %53 : bf16, !llvm.ptr
    %54 = llvm.add %43, %14 : i64
    llvm.br ^bb11(%54 : i64)
  ^bb13:  // pred: ^bb11
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.br ^bb14(%15 : i64)
  ^bb14(%55: i64):  // 2 preds: ^bb13, ^bb21
    %56 = llvm.icmp "slt" %55, %13 : i64
    llvm.cond_br %56, ^bb15, ^bb22
  ^bb15:  // pred: ^bb14
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb16(%15 : i64)
  ^bb16(%57: i64):  // 2 preds: ^bb15, ^bb17
    %58 = llvm.icmp "slt" %57, %11 : i64
    llvm.cond_br %58, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %59 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    %60 = llvm.getelementptr %59[%57] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %61 = llvm.load %60 : !llvm.ptr -> bf16
    %62 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%62, %3 : !llvm.ptr, i64)] : i1
    %63 = llvm.getelementptr %62[%57] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %61, %63 : bf16, !llvm.ptr
    %64 = llvm.add %57, %16 : i64
    llvm.br ^bb16(%64 : i64)
  ^bb18:  // pred: ^bb16
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb19(%15 : i64)
  ^bb19(%65: i64):  // 2 preds: ^bb18, ^bb20
    %66 = llvm.icmp "slt" %65, %11 : i64
    llvm.cond_br %66, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %67 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%67, %3 : !llvm.ptr, i64)] : i1
    %68 = llvm.getelementptr %67[%65] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %69 = llvm.load %68 : !llvm.ptr -> bf16
    %70 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%70, %3 : !llvm.ptr, i64)] : i1
    %71 = llvm.getelementptr %70[%65] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %69, %71 : bf16, !llvm.ptr
    %72 = llvm.add %65, %16 : i64
    llvm.intr.assume %4 ["align"(%67, %3 : !llvm.ptr, i64)] : i1
    %73 = llvm.getelementptr %67[%72] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %74 = llvm.load %73 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%70, %3 : !llvm.ptr, i64)] : i1
    %75 = llvm.getelementptr %70[%72] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %74, %75 : bf16, !llvm.ptr
    %76 = llvm.add %65, %14 : i64
    llvm.br ^bb19(%76 : i64)
  ^bb21:  // pred: ^bb19
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %77 = llvm.add %55, %14 : i64
    llvm.br ^bb14(%77 : i64)
  ^bb22:  // pred: ^bb14
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb23(%15 : i64)
  ^bb23(%78: i64):  // 2 preds: ^bb22, ^bb24
    %79 = llvm.icmp "slt" %78, %11 : i64
    llvm.cond_br %79, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %80 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%80, %3 : !llvm.ptr, i64)] : i1
    %81 = llvm.getelementptr %80[%78] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %82 = llvm.load %81 : !llvm.ptr -> bf16
    %83 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%83, %3 : !llvm.ptr, i64)] : i1
    %84 = llvm.getelementptr %83[%78] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %82, %84 : bf16, !llvm.ptr
    %85 = llvm.add %78, %16 : i64
    llvm.intr.assume %4 ["align"(%80, %3 : !llvm.ptr, i64)] : i1
    %86 = llvm.getelementptr %80[%85] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %87 = llvm.load %86 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%83, %3 : !llvm.ptr, i64)] : i1
    %88 = llvm.getelementptr %83[%85] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %87, %88 : bf16, !llvm.ptr
    %89 = llvm.add %78, %14 : i64
    llvm.br ^bb23(%89 : i64)
  ^bb25:  // pred: ^bb23
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %90 = llvm.add %18, %14 : i64
    llvm.br ^bb1(%90 : i64)
  ^bb26(%91: i64):  // 2 preds: ^bb1, ^bb33
    %92 = llvm.icmp "slt" %91, %13 : i64
    llvm.cond_br %92, ^bb27, ^bb34
  ^bb27:  // pred: ^bb26
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb28(%15 : i64)
  ^bb28(%93: i64):  // 2 preds: ^bb27, ^bb29
    %94 = llvm.icmp "slt" %93, %11 : i64
    llvm.cond_br %94, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %95 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%95, %3 : !llvm.ptr, i64)] : i1
    %96 = llvm.getelementptr %95[%93] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %97 = llvm.load %96 : !llvm.ptr -> bf16
    %98 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%98, %3 : !llvm.ptr, i64)] : i1
    %99 = llvm.getelementptr %98[%93] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %97, %99 : bf16, !llvm.ptr
    %100 = llvm.add %93, %16 : i64
    llvm.br ^bb28(%100 : i64)
  ^bb30:  // pred: ^bb28
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb31(%15 : i64)
  ^bb31(%101: i64):  // 2 preds: ^bb30, ^bb32
    %102 = llvm.icmp "slt" %101, %11 : i64
    llvm.cond_br %102, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %103 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%103, %3 : !llvm.ptr, i64)] : i1
    %104 = llvm.getelementptr %103[%101] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %105 = llvm.load %104 : !llvm.ptr -> bf16
    %106 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%106, %3 : !llvm.ptr, i64)] : i1
    %107 = llvm.getelementptr %106[%101] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %105, %107 : bf16, !llvm.ptr
    %108 = llvm.add %101, %16 : i64
    llvm.intr.assume %4 ["align"(%103, %3 : !llvm.ptr, i64)] : i1
    %109 = llvm.getelementptr %103[%108] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %110 = llvm.load %109 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%106, %3 : !llvm.ptr, i64)] : i1
    %111 = llvm.getelementptr %106[%108] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %110, %111 : bf16, !llvm.ptr
    %112 = llvm.add %101, %14 : i64
    llvm.br ^bb31(%112 : i64)
  ^bb33:  // pred: ^bb31
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %113 = llvm.add %91, %14 : i64
    llvm.br ^bb26(%113 : i64)
  ^bb34:  // pred: ^bb26
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb35(%15 : i64)
  ^bb35(%114: i64):  // 2 preds: ^bb34, ^bb36
    %115 = llvm.icmp "slt" %114, %11 : i64
    llvm.cond_br %115, ^bb36, ^bb37
  ^bb36:  // pred: ^bb35
    %116 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%116, %3 : !llvm.ptr, i64)] : i1
    %117 = llvm.getelementptr %116[%114] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %118 = llvm.load %117 : !llvm.ptr -> bf16
    %119 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%119, %3 : !llvm.ptr, i64)] : i1
    %120 = llvm.getelementptr %119[%114] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %118, %120 : bf16, !llvm.ptr
    %121 = llvm.add %114, %16 : i64
    llvm.intr.assume %4 ["align"(%116, %3 : !llvm.ptr, i64)] : i1
    %122 = llvm.getelementptr %116[%121] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %123 = llvm.load %122 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%119, %3 : !llvm.ptr, i64)] : i1
    %124 = llvm.getelementptr %119[%121] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %123, %124 : bf16, !llvm.ptr
    %125 = llvm.add %114, %14 : i64
    llvm.br ^bb35(%125 : i64)
  ^bb37:  // pred: ^bb35
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_3_3() {
    %0 = llvm.mlir.addressof @memC4_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @memA4_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @memC4_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @memA4_cons_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(51 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(49 : i32) : i32
    %9 = llvm.mlir.constant(50 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(768 : index) : i64
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(4 : index) : i64
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%15 : i64)
  ^bb1(%18: i64):  // 2 preds: ^bb0, ^bb25
    %19 = llvm.icmp "slt" %18, %17 : i64
    llvm.cond_br %19, ^bb2(%15 : i64), ^bb26(%15 : i64)
  ^bb2(%20: i64):  // 2 preds: ^bb1, ^bb9
    %21 = llvm.icmp "slt" %20, %13 : i64
    llvm.cond_br %21, ^bb3, ^bb10
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb4(%15 : i64)
  ^bb4(%22: i64):  // 2 preds: ^bb3, ^bb5
    %23 = llvm.icmp "slt" %22, %11 : i64
    llvm.cond_br %23, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %24 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    %25 = llvm.getelementptr %24[%22] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %26 = llvm.load %25 : !llvm.ptr -> bf16
    %27 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%27, %3 : !llvm.ptr, i64)] : i1
    %28 = llvm.getelementptr %27[%22] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %26, %28 : bf16, !llvm.ptr
    %29 = llvm.add %22, %16 : i64
    llvm.br ^bb4(%29 : i64)
  ^bb6:  // pred: ^bb4
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb7(%15 : i64)
  ^bb7(%30: i64):  // 2 preds: ^bb6, ^bb8
    %31 = llvm.icmp "slt" %30, %11 : i64
    llvm.cond_br %31, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %32 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %32[%30] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %34 = llvm.load %33 : !llvm.ptr -> bf16
    %35 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%35, %3 : !llvm.ptr, i64)] : i1
    %36 = llvm.getelementptr %35[%30] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %34, %36 : bf16, !llvm.ptr
    %37 = llvm.add %30, %16 : i64
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %32[%37] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %39 = llvm.load %38 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%35, %3 : !llvm.ptr, i64)] : i1
    %40 = llvm.getelementptr %35[%37] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %39, %40 : bf16, !llvm.ptr
    %41 = llvm.add %30, %14 : i64
    llvm.br ^bb7(%41 : i64)
  ^bb9:  // pred: ^bb7
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %42 = llvm.add %20, %14 : i64
    llvm.br ^bb2(%42 : i64)
  ^bb10:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb11(%15 : i64)
  ^bb11(%43: i64):  // 2 preds: ^bb10, ^bb12
    %44 = llvm.icmp "slt" %43, %11 : i64
    llvm.cond_br %44, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %45 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%45, %3 : !llvm.ptr, i64)] : i1
    %46 = llvm.getelementptr %45[%43] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %47 = llvm.load %46 : !llvm.ptr -> bf16
    %48 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%48, %3 : !llvm.ptr, i64)] : i1
    %49 = llvm.getelementptr %48[%43] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %47, %49 : bf16, !llvm.ptr
    %50 = llvm.add %43, %16 : i64
    llvm.intr.assume %4 ["align"(%45, %3 : !llvm.ptr, i64)] : i1
    %51 = llvm.getelementptr %45[%50] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %52 = llvm.load %51 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%48, %3 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %48[%50] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %52, %53 : bf16, !llvm.ptr
    %54 = llvm.add %43, %14 : i64
    llvm.br ^bb11(%54 : i64)
  ^bb13:  // pred: ^bb11
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.br ^bb14(%15 : i64)
  ^bb14(%55: i64):  // 2 preds: ^bb13, ^bb21
    %56 = llvm.icmp "slt" %55, %13 : i64
    llvm.cond_br %56, ^bb15, ^bb22
  ^bb15:  // pred: ^bb14
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb16(%15 : i64)
  ^bb16(%57: i64):  // 2 preds: ^bb15, ^bb17
    %58 = llvm.icmp "slt" %57, %11 : i64
    llvm.cond_br %58, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %59 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    %60 = llvm.getelementptr %59[%57] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %61 = llvm.load %60 : !llvm.ptr -> bf16
    %62 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%62, %3 : !llvm.ptr, i64)] : i1
    %63 = llvm.getelementptr %62[%57] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %61, %63 : bf16, !llvm.ptr
    %64 = llvm.add %57, %16 : i64
    llvm.br ^bb16(%64 : i64)
  ^bb18:  // pred: ^bb16
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb19(%15 : i64)
  ^bb19(%65: i64):  // 2 preds: ^bb18, ^bb20
    %66 = llvm.icmp "slt" %65, %11 : i64
    llvm.cond_br %66, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %67 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%67, %3 : !llvm.ptr, i64)] : i1
    %68 = llvm.getelementptr %67[%65] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %69 = llvm.load %68 : !llvm.ptr -> bf16
    %70 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%70, %3 : !llvm.ptr, i64)] : i1
    %71 = llvm.getelementptr %70[%65] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %69, %71 : bf16, !llvm.ptr
    %72 = llvm.add %65, %16 : i64
    llvm.intr.assume %4 ["align"(%67, %3 : !llvm.ptr, i64)] : i1
    %73 = llvm.getelementptr %67[%72] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %74 = llvm.load %73 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%70, %3 : !llvm.ptr, i64)] : i1
    %75 = llvm.getelementptr %70[%72] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %74, %75 : bf16, !llvm.ptr
    %76 = llvm.add %65, %14 : i64
    llvm.br ^bb19(%76 : i64)
  ^bb21:  // pred: ^bb19
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %77 = llvm.add %55, %14 : i64
    llvm.br ^bb14(%77 : i64)
  ^bb22:  // pred: ^bb14
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb23(%15 : i64)
  ^bb23(%78: i64):  // 2 preds: ^bb22, ^bb24
    %79 = llvm.icmp "slt" %78, %11 : i64
    llvm.cond_br %79, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %80 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%80, %3 : !llvm.ptr, i64)] : i1
    %81 = llvm.getelementptr %80[%78] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %82 = llvm.load %81 : !llvm.ptr -> bf16
    %83 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%83, %3 : !llvm.ptr, i64)] : i1
    %84 = llvm.getelementptr %83[%78] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %82, %84 : bf16, !llvm.ptr
    %85 = llvm.add %78, %16 : i64
    llvm.intr.assume %4 ["align"(%80, %3 : !llvm.ptr, i64)] : i1
    %86 = llvm.getelementptr %80[%85] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %87 = llvm.load %86 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%83, %3 : !llvm.ptr, i64)] : i1
    %88 = llvm.getelementptr %83[%85] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %87, %88 : bf16, !llvm.ptr
    %89 = llvm.add %78, %14 : i64
    llvm.br ^bb23(%89 : i64)
  ^bb25:  // pred: ^bb23
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %90 = llvm.add %18, %14 : i64
    llvm.br ^bb1(%90 : i64)
  ^bb26(%91: i64):  // 2 preds: ^bb1, ^bb33
    %92 = llvm.icmp "slt" %91, %13 : i64
    llvm.cond_br %92, ^bb27, ^bb34
  ^bb27:  // pred: ^bb26
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb28(%15 : i64)
  ^bb28(%93: i64):  // 2 preds: ^bb27, ^bb29
    %94 = llvm.icmp "slt" %93, %11 : i64
    llvm.cond_br %94, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %95 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%95, %3 : !llvm.ptr, i64)] : i1
    %96 = llvm.getelementptr %95[%93] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %97 = llvm.load %96 : !llvm.ptr -> bf16
    %98 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%98, %3 : !llvm.ptr, i64)] : i1
    %99 = llvm.getelementptr %98[%93] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %97, %99 : bf16, !llvm.ptr
    %100 = llvm.add %93, %16 : i64
    llvm.br ^bb28(%100 : i64)
  ^bb30:  // pred: ^bb28
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb31(%15 : i64)
  ^bb31(%101: i64):  // 2 preds: ^bb30, ^bb32
    %102 = llvm.icmp "slt" %101, %11 : i64
    llvm.cond_br %102, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %103 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%103, %3 : !llvm.ptr, i64)] : i1
    %104 = llvm.getelementptr %103[%101] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %105 = llvm.load %104 : !llvm.ptr -> bf16
    %106 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%106, %3 : !llvm.ptr, i64)] : i1
    %107 = llvm.getelementptr %106[%101] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %105, %107 : bf16, !llvm.ptr
    %108 = llvm.add %101, %16 : i64
    llvm.intr.assume %4 ["align"(%103, %3 : !llvm.ptr, i64)] : i1
    %109 = llvm.getelementptr %103[%108] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %110 = llvm.load %109 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%106, %3 : !llvm.ptr, i64)] : i1
    %111 = llvm.getelementptr %106[%108] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %110, %111 : bf16, !llvm.ptr
    %112 = llvm.add %101, %14 : i64
    llvm.br ^bb31(%112 : i64)
  ^bb33:  // pred: ^bb31
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %113 = llvm.add %91, %14 : i64
    llvm.br ^bb26(%113 : i64)
  ^bb34:  // pred: ^bb26
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb35(%15 : i64)
  ^bb35(%114: i64):  // 2 preds: ^bb34, ^bb36
    %115 = llvm.icmp "slt" %114, %11 : i64
    llvm.cond_br %115, ^bb36, ^bb37
  ^bb36:  // pred: ^bb35
    %116 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%116, %3 : !llvm.ptr, i64)] : i1
    %117 = llvm.getelementptr %116[%114] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %118 = llvm.load %117 : !llvm.ptr -> bf16
    %119 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%119, %3 : !llvm.ptr, i64)] : i1
    %120 = llvm.getelementptr %119[%114] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %118, %120 : bf16, !llvm.ptr
    %121 = llvm.add %114, %16 : i64
    llvm.intr.assume %4 ["align"(%116, %3 : !llvm.ptr, i64)] : i1
    %122 = llvm.getelementptr %116[%121] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %123 = llvm.load %122 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%119, %3 : !llvm.ptr, i64)] : i1
    %124 = llvm.getelementptr %119[%121] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %123, %124 : bf16, !llvm.ptr
    %125 = llvm.add %114, %14 : i64
    llvm.br ^bb35(%125 : i64)
  ^bb37:  // pred: ^bb35
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_3_2() {
    %0 = llvm.mlir.addressof @memC3_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @memA3_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @memC3_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @memA3_cons_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(51 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(49 : i32) : i32
    %9 = llvm.mlir.constant(50 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(768 : index) : i64
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(4 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %17 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%14 : i64)
  ^bb1(%18: i64):  // 2 preds: ^bb0, ^bb25
    %19 = llvm.icmp "slt" %18, %16 : i64
    llvm.cond_br %19, ^bb2(%14 : i64), ^bb26(%14 : i64)
  ^bb2(%20: i64):  // 2 preds: ^bb1, ^bb9
    %21 = llvm.icmp "slt" %20, %13 : i64
    llvm.cond_br %21, ^bb3, ^bb10
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb4(%14 : i64)
  ^bb4(%22: i64):  // 2 preds: ^bb3, ^bb5
    %23 = llvm.icmp "slt" %22, %11 : i64
    llvm.cond_br %23, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %24 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    %25 = llvm.getelementptr %24[%22] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %26 = llvm.load %25 : !llvm.ptr -> bf16
    %27 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%27, %3 : !llvm.ptr, i64)] : i1
    %28 = llvm.getelementptr %27[%22] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %26, %28 : bf16, !llvm.ptr
    %29 = llvm.add %22, %15 : i64
    llvm.br ^bb4(%29 : i64)
  ^bb6:  // pred: ^bb4
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb7(%14 : i64)
  ^bb7(%30: i64):  // 2 preds: ^bb6, ^bb8
    %31 = llvm.icmp "slt" %30, %11 : i64
    llvm.cond_br %31, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %32 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %32[%30] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %34 = llvm.load %33 : !llvm.ptr -> bf16
    %35 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%35, %3 : !llvm.ptr, i64)] : i1
    %36 = llvm.getelementptr %35[%30] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %34, %36 : bf16, !llvm.ptr
    %37 = llvm.add %30, %15 : i64
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %32[%37] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %39 = llvm.load %38 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%35, %3 : !llvm.ptr, i64)] : i1
    %40 = llvm.getelementptr %35[%37] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %39, %40 : bf16, !llvm.ptr
    %41 = llvm.add %30, %17 : i64
    llvm.br ^bb7(%41 : i64)
  ^bb9:  // pred: ^bb7
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %42 = llvm.add %20, %17 : i64
    llvm.br ^bb2(%42 : i64)
  ^bb10:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb11(%14 : i64)
  ^bb11(%43: i64):  // 2 preds: ^bb10, ^bb12
    %44 = llvm.icmp "slt" %43, %11 : i64
    llvm.cond_br %44, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %45 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%45, %3 : !llvm.ptr, i64)] : i1
    %46 = llvm.getelementptr %45[%43] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %47 = llvm.load %46 : !llvm.ptr -> bf16
    %48 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%48, %3 : !llvm.ptr, i64)] : i1
    %49 = llvm.getelementptr %48[%43] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %47, %49 : bf16, !llvm.ptr
    %50 = llvm.add %43, %15 : i64
    llvm.intr.assume %4 ["align"(%45, %3 : !llvm.ptr, i64)] : i1
    %51 = llvm.getelementptr %45[%50] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %52 = llvm.load %51 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%48, %3 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %48[%50] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %52, %53 : bf16, !llvm.ptr
    %54 = llvm.add %43, %17 : i64
    llvm.br ^bb11(%54 : i64)
  ^bb13:  // pred: ^bb11
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.br ^bb14(%14 : i64)
  ^bb14(%55: i64):  // 2 preds: ^bb13, ^bb21
    %56 = llvm.icmp "slt" %55, %13 : i64
    llvm.cond_br %56, ^bb15, ^bb22
  ^bb15:  // pred: ^bb14
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb16(%14 : i64)
  ^bb16(%57: i64):  // 2 preds: ^bb15, ^bb17
    %58 = llvm.icmp "slt" %57, %11 : i64
    llvm.cond_br %58, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %59 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    %60 = llvm.getelementptr %59[%57] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %61 = llvm.load %60 : !llvm.ptr -> bf16
    %62 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%62, %3 : !llvm.ptr, i64)] : i1
    %63 = llvm.getelementptr %62[%57] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %61, %63 : bf16, !llvm.ptr
    %64 = llvm.add %57, %15 : i64
    llvm.br ^bb16(%64 : i64)
  ^bb18:  // pred: ^bb16
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb19(%14 : i64)
  ^bb19(%65: i64):  // 2 preds: ^bb18, ^bb20
    %66 = llvm.icmp "slt" %65, %11 : i64
    llvm.cond_br %66, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %67 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%67, %3 : !llvm.ptr, i64)] : i1
    %68 = llvm.getelementptr %67[%65] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %69 = llvm.load %68 : !llvm.ptr -> bf16
    %70 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%70, %3 : !llvm.ptr, i64)] : i1
    %71 = llvm.getelementptr %70[%65] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %69, %71 : bf16, !llvm.ptr
    %72 = llvm.add %65, %15 : i64
    llvm.intr.assume %4 ["align"(%67, %3 : !llvm.ptr, i64)] : i1
    %73 = llvm.getelementptr %67[%72] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %74 = llvm.load %73 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%70, %3 : !llvm.ptr, i64)] : i1
    %75 = llvm.getelementptr %70[%72] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %74, %75 : bf16, !llvm.ptr
    %76 = llvm.add %65, %17 : i64
    llvm.br ^bb19(%76 : i64)
  ^bb21:  // pred: ^bb19
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %77 = llvm.add %55, %17 : i64
    llvm.br ^bb14(%77 : i64)
  ^bb22:  // pred: ^bb14
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb23(%14 : i64)
  ^bb23(%78: i64):  // 2 preds: ^bb22, ^bb24
    %79 = llvm.icmp "slt" %78, %11 : i64
    llvm.cond_br %79, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %80 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%80, %3 : !llvm.ptr, i64)] : i1
    %81 = llvm.getelementptr %80[%78] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %82 = llvm.load %81 : !llvm.ptr -> bf16
    %83 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%83, %3 : !llvm.ptr, i64)] : i1
    %84 = llvm.getelementptr %83[%78] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %82, %84 : bf16, !llvm.ptr
    %85 = llvm.add %78, %15 : i64
    llvm.intr.assume %4 ["align"(%80, %3 : !llvm.ptr, i64)] : i1
    %86 = llvm.getelementptr %80[%85] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %87 = llvm.load %86 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%83, %3 : !llvm.ptr, i64)] : i1
    %88 = llvm.getelementptr %83[%85] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %87, %88 : bf16, !llvm.ptr
    %89 = llvm.add %78, %17 : i64
    llvm.br ^bb23(%89 : i64)
  ^bb25:  // pred: ^bb23
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %90 = llvm.add %18, %17 : i64
    llvm.br ^bb1(%90 : i64)
  ^bb26(%91: i64):  // 2 preds: ^bb1, ^bb33
    %92 = llvm.icmp "slt" %91, %13 : i64
    llvm.cond_br %92, ^bb27, ^bb34
  ^bb27:  // pred: ^bb26
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb28(%14 : i64)
  ^bb28(%93: i64):  // 2 preds: ^bb27, ^bb29
    %94 = llvm.icmp "slt" %93, %11 : i64
    llvm.cond_br %94, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %95 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%95, %3 : !llvm.ptr, i64)] : i1
    %96 = llvm.getelementptr %95[%93] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %97 = llvm.load %96 : !llvm.ptr -> bf16
    %98 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%98, %3 : !llvm.ptr, i64)] : i1
    %99 = llvm.getelementptr %98[%93] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %97, %99 : bf16, !llvm.ptr
    %100 = llvm.add %93, %15 : i64
    llvm.br ^bb28(%100 : i64)
  ^bb30:  // pred: ^bb28
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb31(%14 : i64)
  ^bb31(%101: i64):  // 2 preds: ^bb30, ^bb32
    %102 = llvm.icmp "slt" %101, %11 : i64
    llvm.cond_br %102, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %103 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%103, %3 : !llvm.ptr, i64)] : i1
    %104 = llvm.getelementptr %103[%101] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %105 = llvm.load %104 : !llvm.ptr -> bf16
    %106 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%106, %3 : !llvm.ptr, i64)] : i1
    %107 = llvm.getelementptr %106[%101] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %105, %107 : bf16, !llvm.ptr
    %108 = llvm.add %101, %15 : i64
    llvm.intr.assume %4 ["align"(%103, %3 : !llvm.ptr, i64)] : i1
    %109 = llvm.getelementptr %103[%108] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %110 = llvm.load %109 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%106, %3 : !llvm.ptr, i64)] : i1
    %111 = llvm.getelementptr %106[%108] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %110, %111 : bf16, !llvm.ptr
    %112 = llvm.add %101, %17 : i64
    llvm.br ^bb31(%112 : i64)
  ^bb33:  // pred: ^bb31
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %113 = llvm.add %91, %17 : i64
    llvm.br ^bb26(%113 : i64)
  ^bb34:  // pred: ^bb26
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb35(%14 : i64)
  ^bb35(%114: i64):  // 2 preds: ^bb34, ^bb36
    %115 = llvm.icmp "slt" %114, %11 : i64
    llvm.cond_br %115, ^bb36, ^bb37
  ^bb36:  // pred: ^bb35
    %116 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%116, %3 : !llvm.ptr, i64)] : i1
    %117 = llvm.getelementptr %116[%114] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %118 = llvm.load %117 : !llvm.ptr -> bf16
    %119 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%119, %3 : !llvm.ptr, i64)] : i1
    %120 = llvm.getelementptr %119[%114] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %118, %120 : bf16, !llvm.ptr
    %121 = llvm.add %114, %15 : i64
    llvm.intr.assume %4 ["align"(%116, %3 : !llvm.ptr, i64)] : i1
    %122 = llvm.getelementptr %116[%121] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %123 = llvm.load %122 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%119, %3 : !llvm.ptr, i64)] : i1
    %124 = llvm.getelementptr %119[%121] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %123, %124 : bf16, !llvm.ptr
    %125 = llvm.add %114, %17 : i64
    llvm.br ^bb35(%125 : i64)
  ^bb37:  // pred: ^bb35
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_2_4() {
    %0 = llvm.mlir.addressof @memC2_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @memA2_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @memC2_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @memA2_cons_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(51 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(49 : i32) : i32
    %9 = llvm.mlir.constant(50 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(768 : index) : i64
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(4 : index) : i64
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%15 : i64)
  ^bb1(%18: i64):  // 2 preds: ^bb0, ^bb25
    %19 = llvm.icmp "slt" %18, %17 : i64
    llvm.cond_br %19, ^bb2(%15 : i64), ^bb26(%15 : i64)
  ^bb2(%20: i64):  // 2 preds: ^bb1, ^bb9
    %21 = llvm.icmp "slt" %20, %13 : i64
    llvm.cond_br %21, ^bb3, ^bb10
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb4(%15 : i64)
  ^bb4(%22: i64):  // 2 preds: ^bb3, ^bb5
    %23 = llvm.icmp "slt" %22, %11 : i64
    llvm.cond_br %23, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %24 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    %25 = llvm.getelementptr %24[%22] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %26 = llvm.load %25 : !llvm.ptr -> bf16
    %27 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%27, %3 : !llvm.ptr, i64)] : i1
    %28 = llvm.getelementptr %27[%22] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %26, %28 : bf16, !llvm.ptr
    %29 = llvm.add %22, %16 : i64
    llvm.br ^bb4(%29 : i64)
  ^bb6:  // pred: ^bb4
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb7(%15 : i64)
  ^bb7(%30: i64):  // 2 preds: ^bb6, ^bb8
    %31 = llvm.icmp "slt" %30, %11 : i64
    llvm.cond_br %31, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %32 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %32[%30] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %34 = llvm.load %33 : !llvm.ptr -> bf16
    %35 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%35, %3 : !llvm.ptr, i64)] : i1
    %36 = llvm.getelementptr %35[%30] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %34, %36 : bf16, !llvm.ptr
    %37 = llvm.add %30, %16 : i64
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %32[%37] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %39 = llvm.load %38 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%35, %3 : !llvm.ptr, i64)] : i1
    %40 = llvm.getelementptr %35[%37] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %39, %40 : bf16, !llvm.ptr
    %41 = llvm.add %30, %14 : i64
    llvm.br ^bb7(%41 : i64)
  ^bb9:  // pred: ^bb7
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %42 = llvm.add %20, %14 : i64
    llvm.br ^bb2(%42 : i64)
  ^bb10:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb11(%15 : i64)
  ^bb11(%43: i64):  // 2 preds: ^bb10, ^bb12
    %44 = llvm.icmp "slt" %43, %11 : i64
    llvm.cond_br %44, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %45 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%45, %3 : !llvm.ptr, i64)] : i1
    %46 = llvm.getelementptr %45[%43] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %47 = llvm.load %46 : !llvm.ptr -> bf16
    %48 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%48, %3 : !llvm.ptr, i64)] : i1
    %49 = llvm.getelementptr %48[%43] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %47, %49 : bf16, !llvm.ptr
    %50 = llvm.add %43, %16 : i64
    llvm.intr.assume %4 ["align"(%45, %3 : !llvm.ptr, i64)] : i1
    %51 = llvm.getelementptr %45[%50] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %52 = llvm.load %51 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%48, %3 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %48[%50] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %52, %53 : bf16, !llvm.ptr
    %54 = llvm.add %43, %14 : i64
    llvm.br ^bb11(%54 : i64)
  ^bb13:  // pred: ^bb11
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.br ^bb14(%15 : i64)
  ^bb14(%55: i64):  // 2 preds: ^bb13, ^bb21
    %56 = llvm.icmp "slt" %55, %13 : i64
    llvm.cond_br %56, ^bb15, ^bb22
  ^bb15:  // pred: ^bb14
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb16(%15 : i64)
  ^bb16(%57: i64):  // 2 preds: ^bb15, ^bb17
    %58 = llvm.icmp "slt" %57, %11 : i64
    llvm.cond_br %58, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %59 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    %60 = llvm.getelementptr %59[%57] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %61 = llvm.load %60 : !llvm.ptr -> bf16
    %62 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%62, %3 : !llvm.ptr, i64)] : i1
    %63 = llvm.getelementptr %62[%57] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %61, %63 : bf16, !llvm.ptr
    %64 = llvm.add %57, %16 : i64
    llvm.br ^bb16(%64 : i64)
  ^bb18:  // pred: ^bb16
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb19(%15 : i64)
  ^bb19(%65: i64):  // 2 preds: ^bb18, ^bb20
    %66 = llvm.icmp "slt" %65, %11 : i64
    llvm.cond_br %66, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %67 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%67, %3 : !llvm.ptr, i64)] : i1
    %68 = llvm.getelementptr %67[%65] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %69 = llvm.load %68 : !llvm.ptr -> bf16
    %70 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%70, %3 : !llvm.ptr, i64)] : i1
    %71 = llvm.getelementptr %70[%65] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %69, %71 : bf16, !llvm.ptr
    %72 = llvm.add %65, %16 : i64
    llvm.intr.assume %4 ["align"(%67, %3 : !llvm.ptr, i64)] : i1
    %73 = llvm.getelementptr %67[%72] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %74 = llvm.load %73 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%70, %3 : !llvm.ptr, i64)] : i1
    %75 = llvm.getelementptr %70[%72] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %74, %75 : bf16, !llvm.ptr
    %76 = llvm.add %65, %14 : i64
    llvm.br ^bb19(%76 : i64)
  ^bb21:  // pred: ^bb19
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %77 = llvm.add %55, %14 : i64
    llvm.br ^bb14(%77 : i64)
  ^bb22:  // pred: ^bb14
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb23(%15 : i64)
  ^bb23(%78: i64):  // 2 preds: ^bb22, ^bb24
    %79 = llvm.icmp "slt" %78, %11 : i64
    llvm.cond_br %79, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %80 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%80, %3 : !llvm.ptr, i64)] : i1
    %81 = llvm.getelementptr %80[%78] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %82 = llvm.load %81 : !llvm.ptr -> bf16
    %83 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%83, %3 : !llvm.ptr, i64)] : i1
    %84 = llvm.getelementptr %83[%78] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %82, %84 : bf16, !llvm.ptr
    %85 = llvm.add %78, %16 : i64
    llvm.intr.assume %4 ["align"(%80, %3 : !llvm.ptr, i64)] : i1
    %86 = llvm.getelementptr %80[%85] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %87 = llvm.load %86 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%83, %3 : !llvm.ptr, i64)] : i1
    %88 = llvm.getelementptr %83[%85] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %87, %88 : bf16, !llvm.ptr
    %89 = llvm.add %78, %14 : i64
    llvm.br ^bb23(%89 : i64)
  ^bb25:  // pred: ^bb23
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %90 = llvm.add %18, %14 : i64
    llvm.br ^bb1(%90 : i64)
  ^bb26(%91: i64):  // 2 preds: ^bb1, ^bb33
    %92 = llvm.icmp "slt" %91, %13 : i64
    llvm.cond_br %92, ^bb27, ^bb34
  ^bb27:  // pred: ^bb26
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb28(%15 : i64)
  ^bb28(%93: i64):  // 2 preds: ^bb27, ^bb29
    %94 = llvm.icmp "slt" %93, %11 : i64
    llvm.cond_br %94, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %95 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%95, %3 : !llvm.ptr, i64)] : i1
    %96 = llvm.getelementptr %95[%93] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %97 = llvm.load %96 : !llvm.ptr -> bf16
    %98 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%98, %3 : !llvm.ptr, i64)] : i1
    %99 = llvm.getelementptr %98[%93] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %97, %99 : bf16, !llvm.ptr
    %100 = llvm.add %93, %16 : i64
    llvm.br ^bb28(%100 : i64)
  ^bb30:  // pred: ^bb28
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb31(%15 : i64)
  ^bb31(%101: i64):  // 2 preds: ^bb30, ^bb32
    %102 = llvm.icmp "slt" %101, %11 : i64
    llvm.cond_br %102, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %103 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%103, %3 : !llvm.ptr, i64)] : i1
    %104 = llvm.getelementptr %103[%101] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %105 = llvm.load %104 : !llvm.ptr -> bf16
    %106 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%106, %3 : !llvm.ptr, i64)] : i1
    %107 = llvm.getelementptr %106[%101] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %105, %107 : bf16, !llvm.ptr
    %108 = llvm.add %101, %16 : i64
    llvm.intr.assume %4 ["align"(%103, %3 : !llvm.ptr, i64)] : i1
    %109 = llvm.getelementptr %103[%108] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %110 = llvm.load %109 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%106, %3 : !llvm.ptr, i64)] : i1
    %111 = llvm.getelementptr %106[%108] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %110, %111 : bf16, !llvm.ptr
    %112 = llvm.add %101, %14 : i64
    llvm.br ^bb31(%112 : i64)
  ^bb33:  // pred: ^bb31
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %113 = llvm.add %91, %14 : i64
    llvm.br ^bb26(%113 : i64)
  ^bb34:  // pred: ^bb26
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb35(%15 : i64)
  ^bb35(%114: i64):  // 2 preds: ^bb34, ^bb36
    %115 = llvm.icmp "slt" %114, %11 : i64
    llvm.cond_br %115, ^bb36, ^bb37
  ^bb36:  // pred: ^bb35
    %116 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%116, %3 : !llvm.ptr, i64)] : i1
    %117 = llvm.getelementptr %116[%114] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %118 = llvm.load %117 : !llvm.ptr -> bf16
    %119 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%119, %3 : !llvm.ptr, i64)] : i1
    %120 = llvm.getelementptr %119[%114] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %118, %120 : bf16, !llvm.ptr
    %121 = llvm.add %114, %16 : i64
    llvm.intr.assume %4 ["align"(%116, %3 : !llvm.ptr, i64)] : i1
    %122 = llvm.getelementptr %116[%121] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %123 = llvm.load %122 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%119, %3 : !llvm.ptr, i64)] : i1
    %124 = llvm.getelementptr %119[%121] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %123, %124 : bf16, !llvm.ptr
    %125 = llvm.add %114, %14 : i64
    llvm.br ^bb35(%125 : i64)
  ^bb37:  // pred: ^bb35
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_2_3() {
    %0 = llvm.mlir.addressof @memC1_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @memA1_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @memC1_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @memA1_cons_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(51 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(49 : i32) : i32
    %9 = llvm.mlir.constant(50 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(768 : index) : i64
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(4 : index) : i64
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%15 : i64)
  ^bb1(%18: i64):  // 2 preds: ^bb0, ^bb25
    %19 = llvm.icmp "slt" %18, %17 : i64
    llvm.cond_br %19, ^bb2(%15 : i64), ^bb26(%15 : i64)
  ^bb2(%20: i64):  // 2 preds: ^bb1, ^bb9
    %21 = llvm.icmp "slt" %20, %13 : i64
    llvm.cond_br %21, ^bb3, ^bb10
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb4(%15 : i64)
  ^bb4(%22: i64):  // 2 preds: ^bb3, ^bb5
    %23 = llvm.icmp "slt" %22, %11 : i64
    llvm.cond_br %23, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %24 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    %25 = llvm.getelementptr %24[%22] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %26 = llvm.load %25 : !llvm.ptr -> bf16
    %27 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%27, %3 : !llvm.ptr, i64)] : i1
    %28 = llvm.getelementptr %27[%22] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %26, %28 : bf16, !llvm.ptr
    %29 = llvm.add %22, %16 : i64
    llvm.br ^bb4(%29 : i64)
  ^bb6:  // pred: ^bb4
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb7(%15 : i64)
  ^bb7(%30: i64):  // 2 preds: ^bb6, ^bb8
    %31 = llvm.icmp "slt" %30, %11 : i64
    llvm.cond_br %31, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %32 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %32[%30] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %34 = llvm.load %33 : !llvm.ptr -> bf16
    %35 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%35, %3 : !llvm.ptr, i64)] : i1
    %36 = llvm.getelementptr %35[%30] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %34, %36 : bf16, !llvm.ptr
    %37 = llvm.add %30, %16 : i64
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %32[%37] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %39 = llvm.load %38 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%35, %3 : !llvm.ptr, i64)] : i1
    %40 = llvm.getelementptr %35[%37] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %39, %40 : bf16, !llvm.ptr
    %41 = llvm.add %30, %14 : i64
    llvm.br ^bb7(%41 : i64)
  ^bb9:  // pred: ^bb7
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %42 = llvm.add %20, %14 : i64
    llvm.br ^bb2(%42 : i64)
  ^bb10:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb11(%15 : i64)
  ^bb11(%43: i64):  // 2 preds: ^bb10, ^bb12
    %44 = llvm.icmp "slt" %43, %11 : i64
    llvm.cond_br %44, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %45 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%45, %3 : !llvm.ptr, i64)] : i1
    %46 = llvm.getelementptr %45[%43] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %47 = llvm.load %46 : !llvm.ptr -> bf16
    %48 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%48, %3 : !llvm.ptr, i64)] : i1
    %49 = llvm.getelementptr %48[%43] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %47, %49 : bf16, !llvm.ptr
    %50 = llvm.add %43, %16 : i64
    llvm.intr.assume %4 ["align"(%45, %3 : !llvm.ptr, i64)] : i1
    %51 = llvm.getelementptr %45[%50] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %52 = llvm.load %51 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%48, %3 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %48[%50] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %52, %53 : bf16, !llvm.ptr
    %54 = llvm.add %43, %14 : i64
    llvm.br ^bb11(%54 : i64)
  ^bb13:  // pred: ^bb11
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.br ^bb14(%15 : i64)
  ^bb14(%55: i64):  // 2 preds: ^bb13, ^bb21
    %56 = llvm.icmp "slt" %55, %13 : i64
    llvm.cond_br %56, ^bb15, ^bb22
  ^bb15:  // pred: ^bb14
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb16(%15 : i64)
  ^bb16(%57: i64):  // 2 preds: ^bb15, ^bb17
    %58 = llvm.icmp "slt" %57, %11 : i64
    llvm.cond_br %58, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %59 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    %60 = llvm.getelementptr %59[%57] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %61 = llvm.load %60 : !llvm.ptr -> bf16
    %62 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%62, %3 : !llvm.ptr, i64)] : i1
    %63 = llvm.getelementptr %62[%57] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %61, %63 : bf16, !llvm.ptr
    %64 = llvm.add %57, %16 : i64
    llvm.br ^bb16(%64 : i64)
  ^bb18:  // pred: ^bb16
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb19(%15 : i64)
  ^bb19(%65: i64):  // 2 preds: ^bb18, ^bb20
    %66 = llvm.icmp "slt" %65, %11 : i64
    llvm.cond_br %66, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %67 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%67, %3 : !llvm.ptr, i64)] : i1
    %68 = llvm.getelementptr %67[%65] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %69 = llvm.load %68 : !llvm.ptr -> bf16
    %70 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%70, %3 : !llvm.ptr, i64)] : i1
    %71 = llvm.getelementptr %70[%65] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %69, %71 : bf16, !llvm.ptr
    %72 = llvm.add %65, %16 : i64
    llvm.intr.assume %4 ["align"(%67, %3 : !llvm.ptr, i64)] : i1
    %73 = llvm.getelementptr %67[%72] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %74 = llvm.load %73 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%70, %3 : !llvm.ptr, i64)] : i1
    %75 = llvm.getelementptr %70[%72] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %74, %75 : bf16, !llvm.ptr
    %76 = llvm.add %65, %14 : i64
    llvm.br ^bb19(%76 : i64)
  ^bb21:  // pred: ^bb19
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %77 = llvm.add %55, %14 : i64
    llvm.br ^bb14(%77 : i64)
  ^bb22:  // pred: ^bb14
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb23(%15 : i64)
  ^bb23(%78: i64):  // 2 preds: ^bb22, ^bb24
    %79 = llvm.icmp "slt" %78, %11 : i64
    llvm.cond_br %79, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %80 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%80, %3 : !llvm.ptr, i64)] : i1
    %81 = llvm.getelementptr %80[%78] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %82 = llvm.load %81 : !llvm.ptr -> bf16
    %83 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%83, %3 : !llvm.ptr, i64)] : i1
    %84 = llvm.getelementptr %83[%78] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %82, %84 : bf16, !llvm.ptr
    %85 = llvm.add %78, %16 : i64
    llvm.intr.assume %4 ["align"(%80, %3 : !llvm.ptr, i64)] : i1
    %86 = llvm.getelementptr %80[%85] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %87 = llvm.load %86 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%83, %3 : !llvm.ptr, i64)] : i1
    %88 = llvm.getelementptr %83[%85] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %87, %88 : bf16, !llvm.ptr
    %89 = llvm.add %78, %14 : i64
    llvm.br ^bb23(%89 : i64)
  ^bb25:  // pred: ^bb23
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %90 = llvm.add %18, %14 : i64
    llvm.br ^bb1(%90 : i64)
  ^bb26(%91: i64):  // 2 preds: ^bb1, ^bb33
    %92 = llvm.icmp "slt" %91, %13 : i64
    llvm.cond_br %92, ^bb27, ^bb34
  ^bb27:  // pred: ^bb26
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb28(%15 : i64)
  ^bb28(%93: i64):  // 2 preds: ^bb27, ^bb29
    %94 = llvm.icmp "slt" %93, %11 : i64
    llvm.cond_br %94, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %95 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%95, %3 : !llvm.ptr, i64)] : i1
    %96 = llvm.getelementptr %95[%93] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %97 = llvm.load %96 : !llvm.ptr -> bf16
    %98 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%98, %3 : !llvm.ptr, i64)] : i1
    %99 = llvm.getelementptr %98[%93] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %97, %99 : bf16, !llvm.ptr
    %100 = llvm.add %93, %16 : i64
    llvm.br ^bb28(%100 : i64)
  ^bb30:  // pred: ^bb28
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb31(%15 : i64)
  ^bb31(%101: i64):  // 2 preds: ^bb30, ^bb32
    %102 = llvm.icmp "slt" %101, %11 : i64
    llvm.cond_br %102, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %103 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%103, %3 : !llvm.ptr, i64)] : i1
    %104 = llvm.getelementptr %103[%101] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %105 = llvm.load %104 : !llvm.ptr -> bf16
    %106 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%106, %3 : !llvm.ptr, i64)] : i1
    %107 = llvm.getelementptr %106[%101] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %105, %107 : bf16, !llvm.ptr
    %108 = llvm.add %101, %16 : i64
    llvm.intr.assume %4 ["align"(%103, %3 : !llvm.ptr, i64)] : i1
    %109 = llvm.getelementptr %103[%108] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %110 = llvm.load %109 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%106, %3 : !llvm.ptr, i64)] : i1
    %111 = llvm.getelementptr %106[%108] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %110, %111 : bf16, !llvm.ptr
    %112 = llvm.add %101, %14 : i64
    llvm.br ^bb31(%112 : i64)
  ^bb33:  // pred: ^bb31
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %113 = llvm.add %91, %14 : i64
    llvm.br ^bb26(%113 : i64)
  ^bb34:  // pred: ^bb26
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb35(%15 : i64)
  ^bb35(%114: i64):  // 2 preds: ^bb34, ^bb36
    %115 = llvm.icmp "slt" %114, %11 : i64
    llvm.cond_br %115, ^bb36, ^bb37
  ^bb36:  // pred: ^bb35
    %116 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%116, %3 : !llvm.ptr, i64)] : i1
    %117 = llvm.getelementptr %116[%114] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %118 = llvm.load %117 : !llvm.ptr -> bf16
    %119 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%119, %3 : !llvm.ptr, i64)] : i1
    %120 = llvm.getelementptr %119[%114] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %118, %120 : bf16, !llvm.ptr
    %121 = llvm.add %114, %16 : i64
    llvm.intr.assume %4 ["align"(%116, %3 : !llvm.ptr, i64)] : i1
    %122 = llvm.getelementptr %116[%121] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %123 = llvm.load %122 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%119, %3 : !llvm.ptr, i64)] : i1
    %124 = llvm.getelementptr %119[%121] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %123, %124 : bf16, !llvm.ptr
    %125 = llvm.add %114, %14 : i64
    llvm.br ^bb35(%125 : i64)
  ^bb37:  // pred: ^bb35
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_2_2() {
    %0 = llvm.mlir.addressof @memC0_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @memA0_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @memC0_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @memA0_cons_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(51 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(49 : i32) : i32
    %9 = llvm.mlir.constant(50 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(768 : index) : i64
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(4 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %17 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%14 : i64)
  ^bb1(%18: i64):  // 2 preds: ^bb0, ^bb25
    %19 = llvm.icmp "slt" %18, %16 : i64
    llvm.cond_br %19, ^bb2(%14 : i64), ^bb26(%14 : i64)
  ^bb2(%20: i64):  // 2 preds: ^bb1, ^bb9
    %21 = llvm.icmp "slt" %20, %13 : i64
    llvm.cond_br %21, ^bb3, ^bb10
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb4(%14 : i64)
  ^bb4(%22: i64):  // 2 preds: ^bb3, ^bb5
    %23 = llvm.icmp "slt" %22, %11 : i64
    llvm.cond_br %23, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %24 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    %25 = llvm.getelementptr %24[%22] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %26 = llvm.load %25 : !llvm.ptr -> bf16
    %27 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%27, %3 : !llvm.ptr, i64)] : i1
    %28 = llvm.getelementptr %27[%22] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %26, %28 : bf16, !llvm.ptr
    %29 = llvm.add %22, %15 : i64
    llvm.br ^bb4(%29 : i64)
  ^bb6:  // pred: ^bb4
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb7(%14 : i64)
  ^bb7(%30: i64):  // 2 preds: ^bb6, ^bb8
    %31 = llvm.icmp "slt" %30, %11 : i64
    llvm.cond_br %31, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %32 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %32[%30] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %34 = llvm.load %33 : !llvm.ptr -> bf16
    %35 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%35, %3 : !llvm.ptr, i64)] : i1
    %36 = llvm.getelementptr %35[%30] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %34, %36 : bf16, !llvm.ptr
    %37 = llvm.add %30, %15 : i64
    llvm.intr.assume %4 ["align"(%32, %3 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %32[%37] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %39 = llvm.load %38 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%35, %3 : !llvm.ptr, i64)] : i1
    %40 = llvm.getelementptr %35[%37] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %39, %40 : bf16, !llvm.ptr
    %41 = llvm.add %30, %17 : i64
    llvm.br ^bb7(%41 : i64)
  ^bb9:  // pred: ^bb7
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %42 = llvm.add %20, %17 : i64
    llvm.br ^bb2(%42 : i64)
  ^bb10:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb11(%14 : i64)
  ^bb11(%43: i64):  // 2 preds: ^bb10, ^bb12
    %44 = llvm.icmp "slt" %43, %11 : i64
    llvm.cond_br %44, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %45 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%45, %3 : !llvm.ptr, i64)] : i1
    %46 = llvm.getelementptr %45[%43] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %47 = llvm.load %46 : !llvm.ptr -> bf16
    %48 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%48, %3 : !llvm.ptr, i64)] : i1
    %49 = llvm.getelementptr %48[%43] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %47, %49 : bf16, !llvm.ptr
    %50 = llvm.add %43, %15 : i64
    llvm.intr.assume %4 ["align"(%45, %3 : !llvm.ptr, i64)] : i1
    %51 = llvm.getelementptr %45[%50] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %52 = llvm.load %51 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%48, %3 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %48[%50] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %52, %53 : bf16, !llvm.ptr
    %54 = llvm.add %43, %17 : i64
    llvm.br ^bb11(%54 : i64)
  ^bb13:  // pred: ^bb11
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.br ^bb14(%14 : i64)
  ^bb14(%55: i64):  // 2 preds: ^bb13, ^bb21
    %56 = llvm.icmp "slt" %55, %13 : i64
    llvm.cond_br %56, ^bb15, ^bb22
  ^bb15:  // pred: ^bb14
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb16(%14 : i64)
  ^bb16(%57: i64):  // 2 preds: ^bb15, ^bb17
    %58 = llvm.icmp "slt" %57, %11 : i64
    llvm.cond_br %58, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %59 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%59, %3 : !llvm.ptr, i64)] : i1
    %60 = llvm.getelementptr %59[%57] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %61 = llvm.load %60 : !llvm.ptr -> bf16
    %62 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%62, %3 : !llvm.ptr, i64)] : i1
    %63 = llvm.getelementptr %62[%57] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %61, %63 : bf16, !llvm.ptr
    %64 = llvm.add %57, %15 : i64
    llvm.br ^bb16(%64 : i64)
  ^bb18:  // pred: ^bb16
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb19(%14 : i64)
  ^bb19(%65: i64):  // 2 preds: ^bb18, ^bb20
    %66 = llvm.icmp "slt" %65, %11 : i64
    llvm.cond_br %66, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %67 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%67, %3 : !llvm.ptr, i64)] : i1
    %68 = llvm.getelementptr %67[%65] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %69 = llvm.load %68 : !llvm.ptr -> bf16
    %70 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%70, %3 : !llvm.ptr, i64)] : i1
    %71 = llvm.getelementptr %70[%65] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %69, %71 : bf16, !llvm.ptr
    %72 = llvm.add %65, %15 : i64
    llvm.intr.assume %4 ["align"(%67, %3 : !llvm.ptr, i64)] : i1
    %73 = llvm.getelementptr %67[%72] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %74 = llvm.load %73 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%70, %3 : !llvm.ptr, i64)] : i1
    %75 = llvm.getelementptr %70[%72] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %74, %75 : bf16, !llvm.ptr
    %76 = llvm.add %65, %17 : i64
    llvm.br ^bb19(%76 : i64)
  ^bb21:  // pred: ^bb19
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %77 = llvm.add %55, %17 : i64
    llvm.br ^bb14(%77 : i64)
  ^bb22:  // pred: ^bb14
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb23(%14 : i64)
  ^bb23(%78: i64):  // 2 preds: ^bb22, ^bb24
    %79 = llvm.icmp "slt" %78, %11 : i64
    llvm.cond_br %79, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %80 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%80, %3 : !llvm.ptr, i64)] : i1
    %81 = llvm.getelementptr %80[%78] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %82 = llvm.load %81 : !llvm.ptr -> bf16
    %83 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%83, %3 : !llvm.ptr, i64)] : i1
    %84 = llvm.getelementptr %83[%78] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %82, %84 : bf16, !llvm.ptr
    %85 = llvm.add %78, %15 : i64
    llvm.intr.assume %4 ["align"(%80, %3 : !llvm.ptr, i64)] : i1
    %86 = llvm.getelementptr %80[%85] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %87 = llvm.load %86 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%83, %3 : !llvm.ptr, i64)] : i1
    %88 = llvm.getelementptr %83[%85] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %87, %88 : bf16, !llvm.ptr
    %89 = llvm.add %78, %17 : i64
    llvm.br ^bb23(%89 : i64)
  ^bb25:  // pred: ^bb23
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %90 = llvm.add %18, %17 : i64
    llvm.br ^bb1(%90 : i64)
  ^bb26(%91: i64):  // 2 preds: ^bb1, ^bb33
    %92 = llvm.icmp "slt" %91, %13 : i64
    llvm.cond_br %92, ^bb27, ^bb34
  ^bb27:  // pred: ^bb26
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb28(%14 : i64)
  ^bb28(%93: i64):  // 2 preds: ^bb27, ^bb29
    %94 = llvm.icmp "slt" %93, %11 : i64
    llvm.cond_br %94, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %95 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%95, %3 : !llvm.ptr, i64)] : i1
    %96 = llvm.getelementptr %95[%93] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %97 = llvm.load %96 : !llvm.ptr -> bf16
    %98 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%98, %3 : !llvm.ptr, i64)] : i1
    %99 = llvm.getelementptr %98[%93] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %97, %99 : bf16, !llvm.ptr
    %100 = llvm.add %93, %15 : i64
    llvm.br ^bb28(%100 : i64)
  ^bb30:  // pred: ^bb28
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb31(%14 : i64)
  ^bb31(%101: i64):  // 2 preds: ^bb30, ^bb32
    %102 = llvm.icmp "slt" %101, %11 : i64
    llvm.cond_br %102, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %103 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%103, %3 : !llvm.ptr, i64)] : i1
    %104 = llvm.getelementptr %103[%101] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %105 = llvm.load %104 : !llvm.ptr -> bf16
    %106 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%106, %3 : !llvm.ptr, i64)] : i1
    %107 = llvm.getelementptr %106[%101] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %105, %107 : bf16, !llvm.ptr
    %108 = llvm.add %101, %15 : i64
    llvm.intr.assume %4 ["align"(%103, %3 : !llvm.ptr, i64)] : i1
    %109 = llvm.getelementptr %103[%108] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %110 = llvm.load %109 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%106, %3 : !llvm.ptr, i64)] : i1
    %111 = llvm.getelementptr %106[%108] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %110, %111 : bf16, !llvm.ptr
    %112 = llvm.add %101, %17 : i64
    llvm.br ^bb31(%112 : i64)
  ^bb33:  // pred: ^bb31
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %113 = llvm.add %91, %17 : i64
    llvm.br ^bb26(%113 : i64)
  ^bb34:  // pred: ^bb26
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.br ^bb35(%14 : i64)
  ^bb35(%114: i64):  // 2 preds: ^bb34, ^bb36
    %115 = llvm.icmp "slt" %114, %11 : i64
    llvm.cond_br %115, ^bb36, ^bb37
  ^bb36:  // pred: ^bb35
    %116 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%116, %3 : !llvm.ptr, i64)] : i1
    %117 = llvm.getelementptr %116[%114] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %118 = llvm.load %117 : !llvm.ptr -> bf16
    %119 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<768 x bf16>
    llvm.intr.assume %4 ["align"(%119, %3 : !llvm.ptr, i64)] : i1
    %120 = llvm.getelementptr %119[%114] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %118, %120 : bf16, !llvm.ptr
    %121 = llvm.add %114, %15 : i64
    llvm.intr.assume %4 ["align"(%116, %3 : !llvm.ptr, i64)] : i1
    %122 = llvm.getelementptr %116[%121] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    %123 = llvm.load %122 : !llvm.ptr -> bf16
    llvm.intr.assume %4 ["align"(%119, %3 : !llvm.ptr, i64)] : i1
    %124 = llvm.getelementptr %119[%121] : (!llvm.ptr, i64) -> !llvm.ptr, bf16
    llvm.store %123, %124 : bf16, !llvm.ptr
    %125 = llvm.add %114, %17 : i64
    llvm.br ^bb35(%125 : i64)
  ^bb37:  // pred: ^bb35
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
}

