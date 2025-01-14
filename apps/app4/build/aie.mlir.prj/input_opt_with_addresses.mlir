module attributes {llvm.target_triple = "aie2"} {
  llvm.mlir.global external @in0_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in0_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in1_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in1_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in2_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in2_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in3_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in3_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @of_c20toc21_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c20toc21_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c20toc21_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c20toc21_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c30toc21_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c30toc21_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c10toc11_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c10toc11_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c10toc11_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c10toc11_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c21toc11_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c21toc11_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c21toc22_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c21toc22_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c22toc12_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c22toc12_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c12toc11_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c12toc11_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @ofc11toc02_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @ofc11toc02_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @ofc11toc02_cons_buff_1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @ofc11toc02_cons_buff_0() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @ofc02toc01_buff_9() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01_buff_8() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01_buff_7() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01_buff_6() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01_buff_5() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01_buff_4() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01_buff_3() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01_buff_2() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @out_buff_1() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @out_buff_0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.func @debug_i32(i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.put.ms(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.get.ss() -> !llvm.struct<(i32, i32)> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.mcd.write.vec(vector<16xi32>, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.scd.read.vec(i32) -> vector<16xi32> attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.acquire(i32, i32) attributes {sym_visibility = "private"}
  llvm.func @llvm.aie2.release(i32, i32) attributes {sym_visibility = "private"}
  llvm.mlir.global external @out_cons() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @out() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc02toc01() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @ofc11toc02_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @ofc11toc02() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c12toc11() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c22toc12() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c21toc22() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c21toc11() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c10toc11_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c10toc11() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c30toc21() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c20toc21_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @of_c20toc21() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in3_cons() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in3() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in2_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in2() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in1_cons() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in1() {addr_space = 0 : i32} : !llvm.array<1024 x f32>
  llvm.mlir.global external @in0_cons() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.mlir.global external @in0() {addr_space = 0 : i32} : !llvm.array<1 x f32>
  llvm.func @vector_scalar_mul_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @passthrough(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @vector_add_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @vector_mult_aie_scalar(!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @mean(!llvm.ptr, !llvm.ptr, i32) attributes {sym_visibility = "private"}
  llvm.func @core_0_3() {
    %0 = llvm.mlir.addressof @out_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @ofc02toc01_buff_9 : !llvm.ptr
    %2 = llvm.mlir.addressof @out_buff_0 : !llvm.ptr
    %3 = llvm.mlir.addressof @ofc02toc01_buff_8 : !llvm.ptr
    %4 = llvm.mlir.addressof @ofc02toc01_buff_7 : !llvm.ptr
    %5 = llvm.mlir.addressof @ofc02toc01_buff_6 : !llvm.ptr
    %6 = llvm.mlir.addressof @ofc02toc01_buff_5 : !llvm.ptr
    %7 = llvm.mlir.addressof @ofc02toc01_buff_4 : !llvm.ptr
    %8 = llvm.mlir.addressof @ofc02toc01_buff_3 : !llvm.ptr
    %9 = llvm.mlir.addressof @ofc02toc01_buff_2 : !llvm.ptr
    %10 = llvm.mlir.addressof @ofc02toc01_buff_1 : !llvm.ptr
    %11 = llvm.mlir.constant(32 : index) : i64
    %12 = llvm.mlir.constant(true) : i1
    %13 = llvm.mlir.addressof @ofc02toc01_buff_0 : !llvm.ptr
    %14 = llvm.mlir.constant(49 : i32) : i32
    %15 = llvm.mlir.constant(34 : i32) : i32
    %16 = llvm.mlir.constant(35 : i32) : i32
    %17 = llvm.mlir.constant(48 : i32) : i32
    %18 = llvm.mlir.constant(1 : i32) : i32
    %19 = llvm.mlir.constant(9 : i32) : i32
    %20 = llvm.mlir.constant(9.000000e+00 : f32) : f32
    %21 = llvm.mlir.constant(-9 : i32) : i32
    %22 = llvm.mlir.constant(-1 : i32) : i32
    %23 = llvm.mlir.constant(0 : index) : i64
    %24 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.mlir.constant(9223372036854775800 : index) : i64
    %27 = llvm.mlir.constant(10 : index) : i64
    llvm.br ^bb1(%23 : i64)
  ^bb1(%28: i64):  // 2 preds: ^bb0, ^bb2
    %29 = llvm.icmp "slt" %28, %26 : i64
    llvm.cond_br %29, ^bb2, ^bb3(%26 : i64)
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    %30 = llvm.getelementptr %13[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %31 = llvm.load %30 : !llvm.ptr -> f32
    %32 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    %33 = llvm.load %32 : !llvm.ptr -> f32
    %34 = llvm.fadd %31, %33 : f32
    %35 = llvm.getelementptr %9[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    %36 = llvm.load %35 : !llvm.ptr -> f32
    %37 = llvm.fadd %34, %36 : f32
    %38 = llvm.getelementptr %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    %39 = llvm.load %38 : !llvm.ptr -> f32
    %40 = llvm.fadd %37, %39 : f32
    %41 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%41, %11 : !llvm.ptr, i64)] : i1
    %42 = llvm.load %41 : !llvm.ptr -> f32
    %43 = llvm.fadd %40, %42 : f32
    %44 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    %45 = llvm.load %44 : !llvm.ptr -> f32
    %46 = llvm.fadd %43, %45 : f32
    %47 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%47, %11 : !llvm.ptr, i64)] : i1
    %48 = llvm.load %47 : !llvm.ptr -> f32
    %49 = llvm.fadd %46, %48 : f32
    %50 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%50, %11 : !llvm.ptr, i64)] : i1
    %51 = llvm.load %50 : !llvm.ptr -> f32
    %52 = llvm.fadd %49, %51 : f32
    %53 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%53, %11 : !llvm.ptr, i64)] : i1
    %54 = llvm.load %53 : !llvm.ptr -> f32
    %55 = llvm.fadd %52, %54 : f32
    %56 = llvm.fdiv %55, %20 : f32
    %57 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%57, %11 : !llvm.ptr, i64)] : i1
    llvm.store %56, %57 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    %58 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%58, %11 : !llvm.ptr, i64)] : i1
    %59 = llvm.load %58 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %60 = llvm.load %30 : !llvm.ptr -> f32
    %61 = llvm.fadd %59, %60 : f32
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    %62 = llvm.load %32 : !llvm.ptr -> f32
    %63 = llvm.fadd %61, %62 : f32
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    %64 = llvm.load %35 : !llvm.ptr -> f32
    %65 = llvm.fadd %63, %64 : f32
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    %66 = llvm.load %38 : !llvm.ptr -> f32
    %67 = llvm.fadd %65, %66 : f32
    llvm.intr.assume %12 ["align"(%41, %11 : !llvm.ptr, i64)] : i1
    %68 = llvm.load %41 : !llvm.ptr -> f32
    %69 = llvm.fadd %67, %68 : f32
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    %70 = llvm.load %44 : !llvm.ptr -> f32
    %71 = llvm.fadd %69, %70 : f32
    llvm.intr.assume %12 ["align"(%47, %11 : !llvm.ptr, i64)] : i1
    %72 = llvm.load %47 : !llvm.ptr -> f32
    %73 = llvm.fadd %71, %72 : f32
    llvm.intr.assume %12 ["align"(%50, %11 : !llvm.ptr, i64)] : i1
    %74 = llvm.load %50 : !llvm.ptr -> f32
    %75 = llvm.fadd %73, %74 : f32
    %76 = llvm.fdiv %75, %20 : f32
    %77 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%77, %11 : !llvm.ptr, i64)] : i1
    llvm.store %76, %77 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%53, %11 : !llvm.ptr, i64)] : i1
    %78 = llvm.load %53 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%58, %11 : !llvm.ptr, i64)] : i1
    %79 = llvm.load %58 : !llvm.ptr -> f32
    %80 = llvm.fadd %78, %79 : f32
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %81 = llvm.load %30 : !llvm.ptr -> f32
    %82 = llvm.fadd %80, %81 : f32
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    %83 = llvm.load %32 : !llvm.ptr -> f32
    %84 = llvm.fadd %82, %83 : f32
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    %85 = llvm.load %35 : !llvm.ptr -> f32
    %86 = llvm.fadd %84, %85 : f32
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    %87 = llvm.load %38 : !llvm.ptr -> f32
    %88 = llvm.fadd %86, %87 : f32
    llvm.intr.assume %12 ["align"(%41, %11 : !llvm.ptr, i64)] : i1
    %89 = llvm.load %41 : !llvm.ptr -> f32
    %90 = llvm.fadd %88, %89 : f32
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    %91 = llvm.load %44 : !llvm.ptr -> f32
    %92 = llvm.fadd %90, %91 : f32
    llvm.intr.assume %12 ["align"(%47, %11 : !llvm.ptr, i64)] : i1
    %93 = llvm.load %47 : !llvm.ptr -> f32
    %94 = llvm.fadd %92, %93 : f32
    %95 = llvm.fdiv %94, %20 : f32
    llvm.intr.assume %12 ["align"(%57, %11 : !llvm.ptr, i64)] : i1
    llvm.store %95, %57 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%50, %11 : !llvm.ptr, i64)] : i1
    %96 = llvm.load %50 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%53, %11 : !llvm.ptr, i64)] : i1
    %97 = llvm.load %53 : !llvm.ptr -> f32
    %98 = llvm.fadd %96, %97 : f32
    llvm.intr.assume %12 ["align"(%58, %11 : !llvm.ptr, i64)] : i1
    %99 = llvm.load %58 : !llvm.ptr -> f32
    %100 = llvm.fadd %98, %99 : f32
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %101 = llvm.load %30 : !llvm.ptr -> f32
    %102 = llvm.fadd %100, %101 : f32
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    %103 = llvm.load %32 : !llvm.ptr -> f32
    %104 = llvm.fadd %102, %103 : f32
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    %105 = llvm.load %35 : !llvm.ptr -> f32
    %106 = llvm.fadd %104, %105 : f32
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    %107 = llvm.load %38 : !llvm.ptr -> f32
    %108 = llvm.fadd %106, %107 : f32
    llvm.intr.assume %12 ["align"(%41, %11 : !llvm.ptr, i64)] : i1
    %109 = llvm.load %41 : !llvm.ptr -> f32
    %110 = llvm.fadd %108, %109 : f32
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    %111 = llvm.load %44 : !llvm.ptr -> f32
    %112 = llvm.fadd %110, %111 : f32
    %113 = llvm.fdiv %112, %20 : f32
    llvm.intr.assume %12 ["align"(%77, %11 : !llvm.ptr, i64)] : i1
    llvm.store %113, %77 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%47, %11 : !llvm.ptr, i64)] : i1
    %114 = llvm.load %47 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%50, %11 : !llvm.ptr, i64)] : i1
    %115 = llvm.load %50 : !llvm.ptr -> f32
    %116 = llvm.fadd %114, %115 : f32
    llvm.intr.assume %12 ["align"(%53, %11 : !llvm.ptr, i64)] : i1
    %117 = llvm.load %53 : !llvm.ptr -> f32
    %118 = llvm.fadd %116, %117 : f32
    llvm.intr.assume %12 ["align"(%58, %11 : !llvm.ptr, i64)] : i1
    %119 = llvm.load %58 : !llvm.ptr -> f32
    %120 = llvm.fadd %118, %119 : f32
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %121 = llvm.load %30 : !llvm.ptr -> f32
    %122 = llvm.fadd %120, %121 : f32
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    %123 = llvm.load %32 : !llvm.ptr -> f32
    %124 = llvm.fadd %122, %123 : f32
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    %125 = llvm.load %35 : !llvm.ptr -> f32
    %126 = llvm.fadd %124, %125 : f32
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    %127 = llvm.load %38 : !llvm.ptr -> f32
    %128 = llvm.fadd %126, %127 : f32
    llvm.intr.assume %12 ["align"(%41, %11 : !llvm.ptr, i64)] : i1
    %129 = llvm.load %41 : !llvm.ptr -> f32
    %130 = llvm.fadd %128, %129 : f32
    %131 = llvm.fdiv %130, %20 : f32
    llvm.intr.assume %12 ["align"(%57, %11 : !llvm.ptr, i64)] : i1
    llvm.store %131, %57 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    %132 = llvm.load %44 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%47, %11 : !llvm.ptr, i64)] : i1
    %133 = llvm.load %47 : !llvm.ptr -> f32
    %134 = llvm.fadd %132, %133 : f32
    llvm.intr.assume %12 ["align"(%50, %11 : !llvm.ptr, i64)] : i1
    %135 = llvm.load %50 : !llvm.ptr -> f32
    %136 = llvm.fadd %134, %135 : f32
    llvm.intr.assume %12 ["align"(%53, %11 : !llvm.ptr, i64)] : i1
    %137 = llvm.load %53 : !llvm.ptr -> f32
    %138 = llvm.fadd %136, %137 : f32
    llvm.intr.assume %12 ["align"(%58, %11 : !llvm.ptr, i64)] : i1
    %139 = llvm.load %58 : !llvm.ptr -> f32
    %140 = llvm.fadd %138, %139 : f32
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %141 = llvm.load %30 : !llvm.ptr -> f32
    %142 = llvm.fadd %140, %141 : f32
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    %143 = llvm.load %32 : !llvm.ptr -> f32
    %144 = llvm.fadd %142, %143 : f32
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    %145 = llvm.load %35 : !llvm.ptr -> f32
    %146 = llvm.fadd %144, %145 : f32
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    %147 = llvm.load %38 : !llvm.ptr -> f32
    %148 = llvm.fadd %146, %147 : f32
    %149 = llvm.fdiv %148, %20 : f32
    llvm.intr.assume %12 ["align"(%77, %11 : !llvm.ptr, i64)] : i1
    llvm.store %149, %77 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%41, %11 : !llvm.ptr, i64)] : i1
    %150 = llvm.load %41 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    %151 = llvm.load %44 : !llvm.ptr -> f32
    %152 = llvm.fadd %150, %151 : f32
    llvm.intr.assume %12 ["align"(%47, %11 : !llvm.ptr, i64)] : i1
    %153 = llvm.load %47 : !llvm.ptr -> f32
    %154 = llvm.fadd %152, %153 : f32
    llvm.intr.assume %12 ["align"(%50, %11 : !llvm.ptr, i64)] : i1
    %155 = llvm.load %50 : !llvm.ptr -> f32
    %156 = llvm.fadd %154, %155 : f32
    llvm.intr.assume %12 ["align"(%53, %11 : !llvm.ptr, i64)] : i1
    %157 = llvm.load %53 : !llvm.ptr -> f32
    %158 = llvm.fadd %156, %157 : f32
    llvm.intr.assume %12 ["align"(%58, %11 : !llvm.ptr, i64)] : i1
    %159 = llvm.load %58 : !llvm.ptr -> f32
    %160 = llvm.fadd %158, %159 : f32
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %161 = llvm.load %30 : !llvm.ptr -> f32
    %162 = llvm.fadd %160, %161 : f32
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    %163 = llvm.load %32 : !llvm.ptr -> f32
    %164 = llvm.fadd %162, %163 : f32
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    %165 = llvm.load %35 : !llvm.ptr -> f32
    %166 = llvm.fadd %164, %165 : f32
    %167 = llvm.fdiv %166, %20 : f32
    llvm.intr.assume %12 ["align"(%57, %11 : !llvm.ptr, i64)] : i1
    llvm.store %167, %57 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    %168 = llvm.load %38 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%41, %11 : !llvm.ptr, i64)] : i1
    %169 = llvm.load %41 : !llvm.ptr -> f32
    %170 = llvm.fadd %168, %169 : f32
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    %171 = llvm.load %44 : !llvm.ptr -> f32
    %172 = llvm.fadd %170, %171 : f32
    llvm.intr.assume %12 ["align"(%47, %11 : !llvm.ptr, i64)] : i1
    %173 = llvm.load %47 : !llvm.ptr -> f32
    %174 = llvm.fadd %172, %173 : f32
    llvm.intr.assume %12 ["align"(%50, %11 : !llvm.ptr, i64)] : i1
    %175 = llvm.load %50 : !llvm.ptr -> f32
    %176 = llvm.fadd %174, %175 : f32
    llvm.intr.assume %12 ["align"(%53, %11 : !llvm.ptr, i64)] : i1
    %177 = llvm.load %53 : !llvm.ptr -> f32
    %178 = llvm.fadd %176, %177 : f32
    llvm.intr.assume %12 ["align"(%58, %11 : !llvm.ptr, i64)] : i1
    %179 = llvm.load %58 : !llvm.ptr -> f32
    %180 = llvm.fadd %178, %179 : f32
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %181 = llvm.load %30 : !llvm.ptr -> f32
    %182 = llvm.fadd %180, %181 : f32
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    %183 = llvm.load %32 : !llvm.ptr -> f32
    %184 = llvm.fadd %182, %183 : f32
    %185 = llvm.fdiv %184, %20 : f32
    llvm.intr.assume %12 ["align"(%77, %11 : !llvm.ptr, i64)] : i1
    llvm.store %185, %77 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    %186 = llvm.load %35 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    %187 = llvm.load %38 : !llvm.ptr -> f32
    %188 = llvm.fadd %186, %187 : f32
    llvm.intr.assume %12 ["align"(%41, %11 : !llvm.ptr, i64)] : i1
    %189 = llvm.load %41 : !llvm.ptr -> f32
    %190 = llvm.fadd %188, %189 : f32
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    %191 = llvm.load %44 : !llvm.ptr -> f32
    %192 = llvm.fadd %190, %191 : f32
    llvm.intr.assume %12 ["align"(%47, %11 : !llvm.ptr, i64)] : i1
    %193 = llvm.load %47 : !llvm.ptr -> f32
    %194 = llvm.fadd %192, %193 : f32
    llvm.intr.assume %12 ["align"(%50, %11 : !llvm.ptr, i64)] : i1
    %195 = llvm.load %50 : !llvm.ptr -> f32
    %196 = llvm.fadd %194, %195 : f32
    llvm.intr.assume %12 ["align"(%53, %11 : !llvm.ptr, i64)] : i1
    %197 = llvm.load %53 : !llvm.ptr -> f32
    %198 = llvm.fadd %196, %197 : f32
    llvm.intr.assume %12 ["align"(%58, %11 : !llvm.ptr, i64)] : i1
    %199 = llvm.load %58 : !llvm.ptr -> f32
    %200 = llvm.fadd %198, %199 : f32
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %201 = llvm.load %30 : !llvm.ptr -> f32
    %202 = llvm.fadd %200, %201 : f32
    %203 = llvm.fdiv %202, %20 : f32
    llvm.intr.assume %12 ["align"(%57, %11 : !llvm.ptr, i64)] : i1
    llvm.store %203, %57 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    %204 = llvm.load %32 : !llvm.ptr -> f32
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    %205 = llvm.load %35 : !llvm.ptr -> f32
    %206 = llvm.fadd %204, %205 : f32
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    %207 = llvm.load %38 : !llvm.ptr -> f32
    %208 = llvm.fadd %206, %207 : f32
    llvm.intr.assume %12 ["align"(%41, %11 : !llvm.ptr, i64)] : i1
    %209 = llvm.load %41 : !llvm.ptr -> f32
    %210 = llvm.fadd %208, %209 : f32
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    %211 = llvm.load %44 : !llvm.ptr -> f32
    %212 = llvm.fadd %210, %211 : f32
    llvm.intr.assume %12 ["align"(%47, %11 : !llvm.ptr, i64)] : i1
    %213 = llvm.load %47 : !llvm.ptr -> f32
    %214 = llvm.fadd %212, %213 : f32
    llvm.intr.assume %12 ["align"(%50, %11 : !llvm.ptr, i64)] : i1
    %215 = llvm.load %50 : !llvm.ptr -> f32
    %216 = llvm.fadd %214, %215 : f32
    llvm.intr.assume %12 ["align"(%53, %11 : !llvm.ptr, i64)] : i1
    %217 = llvm.load %53 : !llvm.ptr -> f32
    %218 = llvm.fadd %216, %217 : f32
    llvm.intr.assume %12 ["align"(%58, %11 : !llvm.ptr, i64)] : i1
    %219 = llvm.load %58 : !llvm.ptr -> f32
    %220 = llvm.fadd %218, %219 : f32
    %221 = llvm.fdiv %220, %20 : f32
    llvm.intr.assume %12 ["align"(%77, %11 : !llvm.ptr, i64)] : i1
    llvm.store %221, %77 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    %222 = llvm.add %28, %27 : i64
    llvm.br ^bb1(%222 : i64)
  ^bb3(%223: i64):  // 2 preds: ^bb1, ^bb4
    %224 = llvm.icmp "slt" %223, %24 : i64
    llvm.cond_br %224, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%17, %22) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %21) : (i32, i32) -> ()
    %225 = llvm.getelementptr %13[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%225, %11 : !llvm.ptr, i64)] : i1
    %226 = llvm.load %225 : !llvm.ptr -> f32
    %227 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%227, %11 : !llvm.ptr, i64)] : i1
    %228 = llvm.load %227 : !llvm.ptr -> f32
    %229 = llvm.fadd %226, %228 : f32
    %230 = llvm.getelementptr %9[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%230, %11 : !llvm.ptr, i64)] : i1
    %231 = llvm.load %230 : !llvm.ptr -> f32
    %232 = llvm.fadd %229, %231 : f32
    %233 = llvm.getelementptr %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%233, %11 : !llvm.ptr, i64)] : i1
    %234 = llvm.load %233 : !llvm.ptr -> f32
    %235 = llvm.fadd %232, %234 : f32
    %236 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%236, %11 : !llvm.ptr, i64)] : i1
    %237 = llvm.load %236 : !llvm.ptr -> f32
    %238 = llvm.fadd %235, %237 : f32
    %239 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%239, %11 : !llvm.ptr, i64)] : i1
    %240 = llvm.load %239 : !llvm.ptr -> f32
    %241 = llvm.fadd %238, %240 : f32
    %242 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%242, %11 : !llvm.ptr, i64)] : i1
    %243 = llvm.load %242 : !llvm.ptr -> f32
    %244 = llvm.fadd %241, %243 : f32
    %245 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%245, %11 : !llvm.ptr, i64)] : i1
    %246 = llvm.load %245 : !llvm.ptr -> f32
    %247 = llvm.fadd %244, %246 : f32
    %248 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%248, %11 : !llvm.ptr, i64)] : i1
    %249 = llvm.load %248 : !llvm.ptr -> f32
    %250 = llvm.fadd %247, %249 : f32
    %251 = llvm.fdiv %250, %20 : f32
    %252 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%252, %11 : !llvm.ptr, i64)] : i1
    llvm.store %251, %252 : f32, !llvm.ptr
    llvm.call @llvm.aie2.release(%15, %19) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    %253 = llvm.add %223, %25 : i64
    llvm.br ^bb3(%253 : i64)
  ^bb5:  // pred: ^bb3
    llvm.return
  }
  llvm.func @core_0_4() {
    %0 = llvm.mlir.addressof @ofc02toc01_buff_9 : !llvm.ptr
    %1 = llvm.mlir.addressof @ofc02toc01_buff_8 : !llvm.ptr
    %2 = llvm.mlir.addressof @ofc02toc01_buff_7 : !llvm.ptr
    %3 = llvm.mlir.addressof @ofc02toc01_buff_6 : !llvm.ptr
    %4 = llvm.mlir.addressof @ofc02toc01_buff_5 : !llvm.ptr
    %5 = llvm.mlir.addressof @ofc02toc01_buff_4 : !llvm.ptr
    %6 = llvm.mlir.addressof @ofc02toc01_buff_3 : !llvm.ptr
    %7 = llvm.mlir.addressof @ofc02toc01_buff_2 : !llvm.ptr
    %8 = llvm.mlir.addressof @ofc11toc02_cons_buff_1 : !llvm.ptr
    %9 = llvm.mlir.addressof @ofc02toc01_buff_1 : !llvm.ptr
    %10 = llvm.mlir.addressof @ofc11toc02_cons_buff_0 : !llvm.ptr
    %11 = llvm.mlir.constant(32 : index) : i64
    %12 = llvm.mlir.constant(true) : i1
    %13 = llvm.mlir.addressof @ofc02toc01_buff_0 : !llvm.ptr
    %14 = llvm.mlir.constant(51 : i32) : i32
    %15 = llvm.mlir.constant(48 : i32) : i32
    %16 = llvm.mlir.constant(49 : i32) : i32
    %17 = llvm.mlir.constant(50 : i32) : i32
    %18 = llvm.mlir.constant(1 : i32) : i32
    %19 = llvm.mlir.constant(1024 : i32) : i32
    %20 = llvm.mlir.constant(-1 : i32) : i32
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.mlir.constant(9223372036854775807 : index) : i64
    %24 = llvm.mlir.constant(9223372036854775800 : index) : i64
    %25 = llvm.mlir.constant(10 : index) : i64
    llvm.br ^bb1(%21 : i64)
  ^bb1(%26: i64):  // 2 preds: ^bb0, ^bb2
    %27 = llvm.icmp "slt" %26, %24 : i64
    llvm.cond_br %27, ^bb2, ^bb3(%24 : i64)
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %28 = llvm.getelementptr %13[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %30 = llvm.getelementptr %9[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    %31 = llvm.getelementptr %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %32 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %33 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %34 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %35 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %36 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %37 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %39 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%28, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %28, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%30, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %30, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%32, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %32, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%33, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %33, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%34, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %34, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%35, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %35, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%36, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %36, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%37, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %37, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%38, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%29, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%29, %38, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    llvm.intr.assume %12 ["align"(%39, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%31, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%31, %39, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    %40 = llvm.add %26, %25 : i64
    llvm.br ^bb1(%40 : i64)
  ^bb3(%41: i64):  // 2 preds: ^bb1, ^bb4
    %42 = llvm.icmp "slt" %41, %23 : i64
    llvm.cond_br %42, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %43 = llvm.getelementptr %13[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%43, %11 : !llvm.ptr, i64)] : i1
    %44 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%44, %43, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %45 = llvm.getelementptr %9[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%45, %11 : !llvm.ptr, i64)] : i1
    %46 = llvm.getelementptr %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %12 ["align"(%46, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%46, %45, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %47 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%47, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%44, %47, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %48 = llvm.getelementptr %6[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%48, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%46, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%46, %48, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %49 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%49, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%44, %49, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %50 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%50, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%46, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%46, %50, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %51 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%51, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%44, %51, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %52 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%52, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%46, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%46, %52, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%17, %20) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%16, %20) : (i32, i32) -> ()
    %53 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %12 ["align"(%53, %11 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %12 ["align"(%44, %11 : !llvm.ptr, i64)] : i1
    llvm.call @mean(%44, %53, %19) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%15, %18) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%14, %18) : (i32, i32) -> ()
    %54 = llvm.add %41, %22 : i64
    llvm.br ^bb3(%54 : i64)
  ^bb5:  // pred: ^bb3
    llvm.return
  }
  llvm.func @core_1_3() {
    %0 = llvm.mlir.addressof @in1_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_c12toc11_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @ofc11toc02_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @in1_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @of_c12toc11_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(32 : index) : i64
    %6 = llvm.mlir.constant(true) : i1
    %7 = llvm.mlir.addressof @ofc11toc02_buff_0 : !llvm.ptr
    %8 = llvm.mlir.constant(51 : i32) : i32
    %9 = llvm.mlir.constant(34 : i32) : i32
    %10 = llvm.mlir.constant(48 : i32) : i32
    %11 = llvm.mlir.constant(35 : i32) : i32
    %12 = llvm.mlir.constant(49 : i32) : i32
    %13 = llvm.mlir.constant(50 : i32) : i32
    %14 = llvm.mlir.constant(1 : i32) : i32
    %15 = llvm.mlir.constant(1024 : i32) : i32
    %16 = llvm.mlir.constant(-1 : i32) : i32
    %17 = llvm.mlir.constant(8 : index) : i64
    %18 = llvm.mlir.constant(2 : index) : i64
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%19 : i64)
  ^bb1(%21: i64):  // 2 preds: ^bb0, ^bb7
    %22 = llvm.icmp "slt" %21, %20 : i64
    llvm.cond_br %22, ^bb2(%19 : i64), ^bb8(%19 : i64)
  ^bb2(%23: i64):  // 2 preds: ^bb1, ^bb3
    %24 = llvm.icmp "slt" %23, %17 : i64
    llvm.cond_br %24, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%27, %26, %25, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    %30 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%30, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%30, %29, %28, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %31 = llvm.add %23, %18 : i64
    llvm.br ^bb2(%31 : i64)
  ^bb4:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %32 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    %34 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%34, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%34, %33, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.br ^bb5(%19 : i64)
  ^bb5(%35: i64):  // 2 preds: ^bb4, ^bb6
    %36 = llvm.icmp "slt" %35, %17 : i64
    llvm.cond_br %36, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %37 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    %39 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%39, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%39, %38, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%34, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%34, %33, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %40 = llvm.add %35, %18 : i64
    llvm.br ^bb5(%40 : i64)
  ^bb7:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %41 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    %43 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%43, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%43, %42, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %44 = llvm.add %21, %18 : i64
    llvm.br ^bb1(%44 : i64)
  ^bb8(%45: i64):  // 2 preds: ^bb1, ^bb9
    %46 = llvm.icmp "slt" %45, %17 : i64
    llvm.cond_br %46, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %47 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %48 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    %49 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%49, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%49, %48, %47, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %50 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%50, %5 : !llvm.ptr, i64)] : i1
    %51 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%51, %5 : !llvm.ptr, i64)] : i1
    %52 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%52, %51, %50, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %53 = llvm.add %45, %18 : i64
    llvm.br ^bb8(%53 : i64)
  ^bb10:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%13, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %16) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %16) : (i32, i32) -> ()
    %54 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    %55 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%55, %5 : !llvm.ptr, i64)] : i1
    %56 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%56, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_mult_aie_scalar(%56, %55, %54, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_1_4() {
    %0 = llvm.mlir.addressof @of_c22toc12_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_c12toc11_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_c22toc12_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_c12toc11_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(51 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(49 : i32) : i32
    %9 = llvm.mlir.constant(50 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(1024 : i32) : i32
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(8 : index) : i64
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%15 : i64)
  ^bb1(%17: i64):  // 2 preds: ^bb0, ^bb7
    %18 = llvm.icmp "slt" %17, %16 : i64
    llvm.cond_br %18, ^bb2(%15 : i64), ^bb8(%15 : i64)
  ^bb2(%19: i64):  // 2 preds: ^bb1, ^bb3
    %20 = llvm.icmp "slt" %19, %13 : i64
    llvm.cond_br %20, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %21 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%21, %3 : !llvm.ptr, i64)] : i1
    %22 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%22, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%22, %21, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %23 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%23, %3 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%24, %23, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %25 = llvm.add %19, %14 : i64
    llvm.br ^bb2(%25 : i64)
  ^bb4:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %26 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%26, %3 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%27, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%27, %26, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.br ^bb5(%15 : i64)
  ^bb5(%28: i64):  // 2 preds: ^bb4, ^bb6
    %29 = llvm.icmp "slt" %28, %13 : i64
    llvm.cond_br %29, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %30 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%30, %3 : !llvm.ptr, i64)] : i1
    %31 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%31, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%31, %30, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%26, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%27, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%27, %26, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %32 = llvm.add %28, %14 : i64
    llvm.br ^bb5(%32 : i64)
  ^bb7:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %33 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%33, %3 : !llvm.ptr, i64)] : i1
    %34 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%34, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%34, %33, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %35 = llvm.add %17, %14 : i64
    llvm.br ^bb1(%35 : i64)
  ^bb8(%36: i64):  // 2 preds: ^bb1, ^bb9
    %37 = llvm.icmp "slt" %36, %13 : i64
    llvm.cond_br %37, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %38 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%38, %3 : !llvm.ptr, i64)] : i1
    %39 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%39, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%39, %38, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %40 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%40, %3 : !llvm.ptr, i64)] : i1
    %41 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%41, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%41, %40, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %42 = llvm.add %36, %14 : i64
    llvm.br ^bb8(%42 : i64)
  ^bb10:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %43 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%43, %3 : !llvm.ptr, i64)] : i1
    %44 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%44, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%44, %43, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_2_4() {
    %0 = llvm.mlir.addressof @in0_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_c21toc22_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_c22toc12_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @in0_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @of_c21toc22_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(32 : index) : i64
    %6 = llvm.mlir.constant(true) : i1
    %7 = llvm.mlir.addressof @of_c22toc12_buff_0 : !llvm.ptr
    %8 = llvm.mlir.constant(48 : i32) : i32
    %9 = llvm.mlir.constant(17 : i32) : i32
    %10 = llvm.mlir.constant(4 : i32) : i32
    %11 = llvm.mlir.constant(5 : i32) : i32
    %12 = llvm.mlir.constant(16 : i32) : i32
    %13 = llvm.mlir.constant(49 : i32) : i32
    %14 = llvm.mlir.constant(1 : i32) : i32
    %15 = llvm.mlir.constant(1024 : i32) : i32
    %16 = llvm.mlir.constant(8 : index) : i64
    %17 = llvm.mlir.constant(-1 : i32) : i32
    %18 = llvm.mlir.constant(2 : index) : i64
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.mlir.constant(9223372036854775806 : index) : i64
    llvm.br ^bb1(%19 : i64)
  ^bb1(%21: i64):  // 2 preds: ^bb0, ^bb8
    %22 = llvm.icmp "slt" %21, %20 : i64
    llvm.cond_br %22, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb3(%19 : i64)
  ^bb3(%23: i64):  // 2 preds: ^bb2, ^bb4
    %24 = llvm.icmp "slt" %23, %16 : i64
    llvm.cond_br %24, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%26, %25, %27, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%29, %28, %27, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %30 = llvm.add %23, %18 : i64
    llvm.br ^bb3(%30 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %31 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    %32 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%32, %31, %33, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb6(%19 : i64)
  ^bb6(%34: i64):  // 2 preds: ^bb5, ^bb7
    %35 = llvm.icmp "slt" %34, %16 : i64
    llvm.cond_br %35, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%36, %5 : !llvm.ptr, i64)] : i1
    %37 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%37, %36, %38, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%32, %31, %38, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %39 = llvm.add %34, %18 : i64
    llvm.br ^bb6(%39 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %40 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%40, %5 : !llvm.ptr, i64)] : i1
    %41 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%41, %40, %42, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %43 = llvm.add %21, %18 : i64
    llvm.br ^bb1(%43 : i64)
  ^bb9:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb10(%19 : i64)
  ^bb10(%44: i64):  // 2 preds: ^bb9, ^bb11
    %45 = llvm.icmp "slt" %44, %16 : i64
    llvm.cond_br %45, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %46 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%46, %5 : !llvm.ptr, i64)] : i1
    %47 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%47, %5 : !llvm.ptr, i64)] : i1
    %48 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%47, %46, %48, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %49 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%49, %5 : !llvm.ptr, i64)] : i1
    %50 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%50, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%48, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%50, %49, %48, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %51 = llvm.add %44, %18 : i64
    llvm.br ^bb10(%51 : i64)
  ^bb12:  // pred: ^bb10
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %52 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    %54 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%53, %52, %54, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_2_3() {
    %0 = llvm.mlir.addressof @of_c10toc11_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @of_c21toc22_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_c10toc11_cons_buff_0 : !llvm.ptr
    %3 = llvm.mlir.constant(32 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.addressof @of_c21toc22_buff_0 : !llvm.ptr
    %6 = llvm.mlir.constant(53 : i32) : i32
    %7 = llvm.mlir.constant(48 : i32) : i32
    %8 = llvm.mlir.constant(49 : i32) : i32
    %9 = llvm.mlir.constant(52 : i32) : i32
    %10 = llvm.mlir.constant(1 : i32) : i32
    %11 = llvm.mlir.constant(1024 : i32) : i32
    %12 = llvm.mlir.constant(-1 : i32) : i32
    %13 = llvm.mlir.constant(8 : index) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %16 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%14 : i64)
  ^bb1(%17: i64):  // 2 preds: ^bb0, ^bb7
    %18 = llvm.icmp "slt" %17, %15 : i64
    llvm.cond_br %18, ^bb2(%14 : i64), ^bb8(%14 : i64)
  ^bb2(%19: i64):  // 2 preds: ^bb1, ^bb3
    %20 = llvm.icmp "slt" %19, %13 : i64
    llvm.cond_br %20, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %21 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%21, %3 : !llvm.ptr, i64)] : i1
    %22 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%22, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%22, %21, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %23 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%23, %3 : !llvm.ptr, i64)] : i1
    %24 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%24, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%24, %23, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %25 = llvm.add %19, %16 : i64
    llvm.br ^bb2(%25 : i64)
  ^bb4:  // pred: ^bb2
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %26 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%26, %3 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%27, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%27, %26, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.br ^bb5(%14 : i64)
  ^bb5(%28: i64):  // 2 preds: ^bb4, ^bb6
    %29 = llvm.icmp "slt" %28, %13 : i64
    llvm.cond_br %29, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %30 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%30, %3 : !llvm.ptr, i64)] : i1
    %31 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%31, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%31, %30, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    llvm.intr.assume %4 ["align"(%26, %3 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %4 ["align"(%27, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%27, %26, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %32 = llvm.add %28, %16 : i64
    llvm.br ^bb5(%32 : i64)
  ^bb7:  // pred: ^bb5
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %33 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%33, %3 : !llvm.ptr, i64)] : i1
    %34 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%34, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%34, %33, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %35 = llvm.add %17, %16 : i64
    llvm.br ^bb1(%35 : i64)
  ^bb8(%36: i64):  // 2 preds: ^bb1, ^bb9
    %37 = llvm.icmp "slt" %36, %13 : i64
    llvm.cond_br %37, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %38 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%38, %3 : !llvm.ptr, i64)] : i1
    %39 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%39, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%39, %38, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %40 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%40, %3 : !llvm.ptr, i64)] : i1
    %41 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%41, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%41, %40, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    %42 = llvm.add %36, %16 : i64
    llvm.br ^bb8(%42 : i64)
  ^bb10:  // pred: ^bb8
    llvm.call @llvm.aie2.acquire(%9, %12) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%8, %12) : (i32, i32) -> ()
    %43 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%43, %3 : !llvm.ptr, i64)] : i1
    %44 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %4 ["align"(%44, %3 : !llvm.ptr, i64)] : i1
    llvm.call @passthrough(%44, %43, %11) : (!llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%7, %10) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%6, %10) : (i32, i32) -> ()
    llvm.return
  }
  llvm.func @core_1_2() {
    %0 = llvm.mlir.addressof @in3_cons_buff_1 : !llvm.ptr
    %1 = llvm.mlir.addressof @in2_cons_buff_1 : !llvm.ptr
    %2 = llvm.mlir.addressof @of_c10toc11_buff_1 : !llvm.ptr
    %3 = llvm.mlir.addressof @in2_cons_buff_0 : !llvm.ptr
    %4 = llvm.mlir.addressof @in3_cons_buff_0 : !llvm.ptr
    %5 = llvm.mlir.constant(32 : index) : i64
    %6 = llvm.mlir.constant(true) : i1
    %7 = llvm.mlir.addressof @of_c10toc11_buff_0 : !llvm.ptr
    %8 = llvm.mlir.constant(50 : i32) : i32
    %9 = llvm.mlir.constant(53 : i32) : i32
    %10 = llvm.mlir.constant(48 : i32) : i32
    %11 = llvm.mlir.constant(49 : i32) : i32
    %12 = llvm.mlir.constant(52 : i32) : i32
    %13 = llvm.mlir.constant(51 : i32) : i32
    %14 = llvm.mlir.constant(1 : i32) : i32
    %15 = llvm.mlir.constant(1024 : i32) : i32
    %16 = llvm.mlir.constant(8 : index) : i64
    %17 = llvm.mlir.constant(-1 : i32) : i32
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(9223372036854775806 : index) : i64
    %20 = llvm.mlir.constant(2 : index) : i64
    llvm.br ^bb1(%18 : i64)
  ^bb1(%21: i64):  // 2 preds: ^bb0, ^bb14
    %22 = llvm.icmp "slt" %21, %19 : i64
    llvm.cond_br %22, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb3(%18 : i64)
  ^bb3(%23: i64):  // 2 preds: ^bb2, ^bb4
    %24 = llvm.icmp "slt" %23, %16 : i64
    llvm.cond_br %24, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %25 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%25, %5 : !llvm.ptr, i64)] : i1
    %26 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %27 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%27, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%27, %25, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %28 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%28, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%26, %5 : !llvm.ptr, i64)] : i1
    %29 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%29, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%29, %28, %26, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %30 = llvm.add %23, %20 : i64
    llvm.br ^bb3(%30 : i64)
  ^bb5:  // pred: ^bb3
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %31 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    %32 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    %33 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb6(%18 : i64)
  ^bb6(%34: i64):  // 2 preds: ^bb5, ^bb7
    %35 = llvm.icmp "slt" %34, %16 : i64
    llvm.cond_br %35, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %36 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%36, %5 : !llvm.ptr, i64)] : i1
    %37 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    %38 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%38, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%38, %36, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%37, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %37, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %39 = llvm.add %34, %20 : i64
    llvm.br ^bb6(%39 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %40 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%40, %5 : !llvm.ptr, i64)] : i1
    %41 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    %42 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%42, %40, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb9(%18 : i64)
  ^bb9(%43: i64):  // 2 preds: ^bb8, ^bb10
    %44 = llvm.icmp "slt" %43, %16 : i64
    llvm.cond_br %44, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%40, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%42, %40, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %45 = llvm.add %43, %20 : i64
    llvm.br ^bb9(%45 : i64)
  ^bb11:  // pred: ^bb9
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%32, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %32, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb12(%18 : i64)
  ^bb12(%46: i64):  // 2 preds: ^bb11, ^bb13
    %47 = llvm.icmp "slt" %46, %16 : i64
    llvm.cond_br %47, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%40, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%42, %40, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%31, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%33, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%33, %31, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %48 = llvm.add %46, %20 : i64
    llvm.br ^bb12(%48 : i64)
  ^bb14:  // pred: ^bb12
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%40, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%41, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%42, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%42, %40, %41, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    %49 = llvm.add %21, %20 : i64
    llvm.br ^bb1(%49 : i64)
  ^bb15:  // pred: ^bb1
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb16(%18 : i64)
  ^bb16(%50: i64):  // 2 preds: ^bb15, ^bb17
    %51 = llvm.icmp "slt" %50, %16 : i64
    llvm.cond_br %51, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %52 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%52, %5 : !llvm.ptr, i64)] : i1
    %53 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    %54 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%54, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%54, %52, %53, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %55 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%55, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%53, %5 : !llvm.ptr, i64)] : i1
    %56 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%56, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%56, %55, %53, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %57 = llvm.add %50, %20 : i64
    llvm.br ^bb16(%57 : i64)
  ^bb18:  // pred: ^bb16
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %58 = llvm.getelementptr %7[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%58, %5 : !llvm.ptr, i64)] : i1
    %59 = llvm.getelementptr %4[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%59, %5 : !llvm.ptr, i64)] : i1
    %60 = llvm.getelementptr %3[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%60, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%60, %58, %59, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%13, %17) : (i32, i32) -> ()
    llvm.br ^bb19(%18 : i64)
  ^bb19(%61: i64):  // 2 preds: ^bb18, ^bb20
    %62 = llvm.icmp "slt" %61, %16 : i64
    llvm.cond_br %62, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %63 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%63, %5 : !llvm.ptr, i64)] : i1
    %64 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%64, %5 : !llvm.ptr, i64)] : i1
    %65 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%65, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%65, %63, %64, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    llvm.intr.assume %6 ["align"(%58, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%64, %5 : !llvm.ptr, i64)] : i1
    llvm.intr.assume %6 ["align"(%60, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%60, %58, %64, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    %66 = llvm.add %61, %20 : i64
    llvm.br ^bb19(%66 : i64)
  ^bb21:  // pred: ^bb19
    llvm.call @llvm.aie2.acquire(%12, %17) : (i32, i32) -> ()
    llvm.call @llvm.aie2.acquire(%11, %17) : (i32, i32) -> ()
    %67 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%67, %5 : !llvm.ptr, i64)] : i1
    %68 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1 x f32>
    llvm.intr.assume %6 ["align"(%68, %5 : !llvm.ptr, i64)] : i1
    %69 = llvm.getelementptr %1[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<1024 x f32>
    llvm.intr.assume %6 ["align"(%69, %5 : !llvm.ptr, i64)] : i1
    llvm.call @vector_scalar_mul_aie_scalar(%69, %67, %68, %15) : (!llvm.ptr, !llvm.ptr, !llvm.ptr, i32) -> ()
    llvm.call @llvm.aie2.release(%10, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%9, %14) : (i32, i32) -> ()
    llvm.call @llvm.aie2.release(%8, %14) : (i32, i32) -> ()
    llvm.return
  }
}

