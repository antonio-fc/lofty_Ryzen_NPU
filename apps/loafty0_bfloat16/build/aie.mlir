module {
  aie.device(npu1_4col) {
    func.func private @passthrough(memref<4608xbf16>, memref<4608xbf16>, i32)
    func.func private @scale(memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32)
    func.func private @add_kernel(memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32)
    func.func private @scale_single(memref<4608xbf16>, memref<2xbf16>, memref<4608xbf16>, i32)
    func.func private @cosine(memref<4608xbf16>, memref<4608xbf16>, i32)
    func.func private @sine(memref<4608xbf16>, memref<4608xbf16>, i32)
    func.func private @mul_kernel(memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32)
    func.func private @sub_kernel(memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32)
    func.func private @mean(memref<4608xbf16>, memref<32xbf16>, i32, i32)
    %shim_noc_tile_0_0 = aie.tile(0, 0)
    %mem_tile_0_1 = aie.tile(0, 1)
    %tile_0_2 = aie.tile(0, 2)
    %tile_0_3 = aie.tile(0, 3)
    %tile_0_4 = aie.tile(0, 4)
    %tile_0_5 = aie.tile(0, 5)
    %shim_noc_tile_1_0 = aie.tile(1, 0)
    %mem_tile_1_1 = aie.tile(1, 1)
    %tile_1_2 = aie.tile(1, 2)
    %tile_1_3 = aie.tile(1, 3)
    %tile_1_4 = aie.tile(1, 4)
    %tile_1_5 = aie.tile(1, 5)
    %shim_noc_tile_2_0 = aie.tile(2, 0)
    %mem_tile_2_1 = aie.tile(2, 1)
    %tile_2_2 = aie.tile(2, 2)
    %tile_2_3 = aie.tile(2, 3)
    %tile_2_4 = aie.tile(2, 4)
    %tile_2_5 = aie.tile(2, 5)
    %shim_noc_tile_3_0 = aie.tile(3, 0)
    %mem_tile_3_1 = aie.tile(3, 1)
    %tile_3_2 = aie.tile(3, 2)
    %tile_3_3 = aie.tile(3, 3)
    %tile_3_4 = aie.tile(3, 4)
    %tile_3_5 = aie.tile(3, 5)
    aie.objectfifo @in0(%shim_noc_tile_0_0, {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<2xbf16>> 
    aie.objectfifo @in1(%shim_noc_tile_1_0, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<13824xbf16>> 
    aie.objectfifo @in2(%shim_noc_tile_2_0, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<9216xbf16>> 
    aie.objectfifo @in3(%shim_noc_tile_3_0, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<96xbf16>> 
    aie.objectfifo @of_in_u(%mem_tile_1_1, {%tile_0_5}, [2 : i32, 2 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_in_v(%mem_tile_1_1, {%tile_0_4}, [2 : i32, 2 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_in_w(%mem_tile_1_1, {%tile_0_3}, [2 : i32, 2 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo.link [@in1] -> [@of_in_u, @of_in_v, @of_in_w]([] [0, 4608, 9216])
    aie.objectfifo @of_in_l(%mem_tile_3_1, {%tile_0_5}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<32xbf16>> 
    aie.objectfifo @of_in_m(%mem_tile_3_1, {%tile_0_4}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<32xbf16>> 
    aie.objectfifo @of_in_n(%mem_tile_3_1, {%tile_0_3}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<32xbf16>> 
    aie.objectfifo.link [@in3] -> [@of_in_l, @of_in_m, @of_in_n]([] [0, 32, 64])
    aie.objectfifo @of_in_visR(%mem_tile_2_1, {%tile_2_4}, [2 : i32, 2 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_in_visC(%mem_tile_2_1, {%tile_3_4}, [2 : i32, 2 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo.link [@in2] -> [@of_in_visR, @of_in_visC]([] [0, 4608])
    aie.objectfifo @of_addU(%tile_0_5, {%tile_1_5}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_addV(%tile_0_4, {%tile_1_5}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_addW(%tile_0_3, {%tile_1_4}, [1 : i32, 2 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_addUV(%tile_1_5, {%tile_1_4}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_scaleAddBL(%tile_1_4, {%tile_1_2}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_trigFifo(%tile_1_2, {%tile_2_5, %tile_3_5}, [1 : i32, 1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_multTrigR(%tile_2_5, {%tile_2_4}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_multTrigC(%tile_3_5, {%tile_3_4}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_reduceR(%tile_2_4, {%tile_2_3}, [2 : i32, 2 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_reduceC(%tile_3_4, {%tile_3_3}, [2 : i32, 2 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_reduc2SubR(%tile_2_3, {%tile_3_2}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_reduc2SubC(%tile_3_3, {%tile_3_2}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_sub2mean(%tile_3_2, {%tile_2_2}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @out(%tile_2_2, {%shim_noc_tile_2_0}, 2 : i32) : !aie.objectfifo<memref<32xbf16>> 
    %core_0_5 = aie.core(%tile_0_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_u(Consume, 2) : !aie.objectfifosubview<memref<4608xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
        %2 = aie.objectfifo.subview.access %0[1] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
        %c0_0 = arith.constant 0 : index
        %c512 = arith.constant 512 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c512 step %c1_1 {
          %3 = aie.objectfifo.acquire @of_in_l(Consume, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %5 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %6 = aie.objectfifo.subview.access %5[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          %c0_i32 = arith.constant 0 : i32
          func.call @scale(%1, %4, %6, %c4608_i32, %c0_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %7 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %8 = aie.objectfifo.subview.access %7[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_2 = arith.constant 4608 : i32
          %c0_i32_3 = arith.constant 0 : i32
          func.call @scale(%2, %4, %8, %c4608_i32_2, %c0_i32_3) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %9 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_4 = arith.constant 4608 : i32
          %c1_i32 = arith.constant 1 : i32
          func.call @scale(%1, %4, %10, %c4608_i32_4, %c1_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %11 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %12 = aie.objectfifo.subview.access %11[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_5 = arith.constant 4608 : i32
          %c1_i32_6 = arith.constant 1 : i32
          func.call @scale(%2, %4, %12, %c4608_i32_5, %c1_i32_6) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %13 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %14 = aie.objectfifo.subview.access %13[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_7 = arith.constant 4608 : i32
          %c2_i32 = arith.constant 2 : i32
          func.call @scale(%1, %4, %14, %c4608_i32_7, %c2_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %15 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %16 = aie.objectfifo.subview.access %15[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_8 = arith.constant 4608 : i32
          %c2_i32_9 = arith.constant 2 : i32
          func.call @scale(%2, %4, %16, %c4608_i32_8, %c2_i32_9) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %17 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %18 = aie.objectfifo.subview.access %17[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_10 = arith.constant 4608 : i32
          %c3_i32 = arith.constant 3 : i32
          func.call @scale(%1, %4, %18, %c4608_i32_10, %c3_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %19 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %20 = aie.objectfifo.subview.access %19[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_11 = arith.constant 4608 : i32
          %c3_i32_12 = arith.constant 3 : i32
          func.call @scale(%2, %4, %20, %c4608_i32_11, %c3_i32_12) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %21 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %22 = aie.objectfifo.subview.access %21[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_13 = arith.constant 4608 : i32
          %c4_i32 = arith.constant 4 : i32
          func.call @scale(%1, %4, %22, %c4608_i32_13, %c4_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %23 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %24 = aie.objectfifo.subview.access %23[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_14 = arith.constant 4608 : i32
          %c4_i32_15 = arith.constant 4 : i32
          func.call @scale(%2, %4, %24, %c4608_i32_14, %c4_i32_15) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %25 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %26 = aie.objectfifo.subview.access %25[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_16 = arith.constant 4608 : i32
          %c5_i32 = arith.constant 5 : i32
          func.call @scale(%1, %4, %26, %c4608_i32_16, %c5_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %27 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %28 = aie.objectfifo.subview.access %27[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_17 = arith.constant 4608 : i32
          %c5_i32_18 = arith.constant 5 : i32
          func.call @scale(%2, %4, %28, %c4608_i32_17, %c5_i32_18) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %29 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %30 = aie.objectfifo.subview.access %29[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_19 = arith.constant 4608 : i32
          %c6_i32 = arith.constant 6 : i32
          func.call @scale(%1, %4, %30, %c4608_i32_19, %c6_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %31 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %32 = aie.objectfifo.subview.access %31[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_20 = arith.constant 4608 : i32
          %c6_i32_21 = arith.constant 6 : i32
          func.call @scale(%2, %4, %32, %c4608_i32_20, %c6_i32_21) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %33 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %34 = aie.objectfifo.subview.access %33[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_22 = arith.constant 4608 : i32
          %c7_i32 = arith.constant 7 : i32
          func.call @scale(%1, %4, %34, %c4608_i32_22, %c7_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %35 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %36 = aie.objectfifo.subview.access %35[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_23 = arith.constant 4608 : i32
          %c7_i32_24 = arith.constant 7 : i32
          func.call @scale(%2, %4, %36, %c4608_i32_23, %c7_i32_24) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %37 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %38 = aie.objectfifo.subview.access %37[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_25 = arith.constant 4608 : i32
          %c8_i32 = arith.constant 8 : i32
          func.call @scale(%1, %4, %38, %c4608_i32_25, %c8_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %39 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %40 = aie.objectfifo.subview.access %39[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_26 = arith.constant 4608 : i32
          %c8_i32_27 = arith.constant 8 : i32
          func.call @scale(%2, %4, %40, %c4608_i32_26, %c8_i32_27) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %41 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %42 = aie.objectfifo.subview.access %41[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_28 = arith.constant 4608 : i32
          %c9_i32 = arith.constant 9 : i32
          func.call @scale(%1, %4, %42, %c4608_i32_28, %c9_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %43 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %44 = aie.objectfifo.subview.access %43[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_29 = arith.constant 4608 : i32
          %c9_i32_30 = arith.constant 9 : i32
          func.call @scale(%2, %4, %44, %c4608_i32_29, %c9_i32_30) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %45 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %46 = aie.objectfifo.subview.access %45[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_31 = arith.constant 4608 : i32
          %c10_i32 = arith.constant 10 : i32
          func.call @scale(%1, %4, %46, %c4608_i32_31, %c10_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %47 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %48 = aie.objectfifo.subview.access %47[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_32 = arith.constant 4608 : i32
          %c10_i32_33 = arith.constant 10 : i32
          func.call @scale(%2, %4, %48, %c4608_i32_32, %c10_i32_33) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %49 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %50 = aie.objectfifo.subview.access %49[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_34 = arith.constant 4608 : i32
          %c11_i32 = arith.constant 11 : i32
          func.call @scale(%1, %4, %50, %c4608_i32_34, %c11_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %51 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %52 = aie.objectfifo.subview.access %51[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_35 = arith.constant 4608 : i32
          %c11_i32_36 = arith.constant 11 : i32
          func.call @scale(%2, %4, %52, %c4608_i32_35, %c11_i32_36) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %53 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %54 = aie.objectfifo.subview.access %53[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_37 = arith.constant 4608 : i32
          %c12_i32 = arith.constant 12 : i32
          func.call @scale(%1, %4, %54, %c4608_i32_37, %c12_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %55 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %56 = aie.objectfifo.subview.access %55[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_38 = arith.constant 4608 : i32
          %c12_i32_39 = arith.constant 12 : i32
          func.call @scale(%2, %4, %56, %c4608_i32_38, %c12_i32_39) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %57 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %58 = aie.objectfifo.subview.access %57[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_40 = arith.constant 4608 : i32
          %c13_i32 = arith.constant 13 : i32
          func.call @scale(%1, %4, %58, %c4608_i32_40, %c13_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %59 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %60 = aie.objectfifo.subview.access %59[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_41 = arith.constant 4608 : i32
          %c13_i32_42 = arith.constant 13 : i32
          func.call @scale(%2, %4, %60, %c4608_i32_41, %c13_i32_42) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %61 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %62 = aie.objectfifo.subview.access %61[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_43 = arith.constant 4608 : i32
          %c14_i32 = arith.constant 14 : i32
          func.call @scale(%1, %4, %62, %c4608_i32_43, %c14_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %63 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %64 = aie.objectfifo.subview.access %63[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_44 = arith.constant 4608 : i32
          %c14_i32_45 = arith.constant 14 : i32
          func.call @scale(%2, %4, %64, %c4608_i32_44, %c14_i32_45) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %65 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %66 = aie.objectfifo.subview.access %65[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_46 = arith.constant 4608 : i32
          %c15_i32 = arith.constant 15 : i32
          func.call @scale(%1, %4, %66, %c4608_i32_46, %c15_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %67 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %68 = aie.objectfifo.subview.access %67[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_47 = arith.constant 4608 : i32
          %c15_i32_48 = arith.constant 15 : i32
          func.call @scale(%2, %4, %68, %c4608_i32_47, %c15_i32_48) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %69 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %70 = aie.objectfifo.subview.access %69[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_49 = arith.constant 4608 : i32
          %c16_i32 = arith.constant 16 : i32
          func.call @scale(%1, %4, %70, %c4608_i32_49, %c16_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %71 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %72 = aie.objectfifo.subview.access %71[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_50 = arith.constant 4608 : i32
          %c16_i32_51 = arith.constant 16 : i32
          func.call @scale(%2, %4, %72, %c4608_i32_50, %c16_i32_51) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %73 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %74 = aie.objectfifo.subview.access %73[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_52 = arith.constant 4608 : i32
          %c17_i32 = arith.constant 17 : i32
          func.call @scale(%1, %4, %74, %c4608_i32_52, %c17_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %75 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %76 = aie.objectfifo.subview.access %75[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_53 = arith.constant 4608 : i32
          %c17_i32_54 = arith.constant 17 : i32
          func.call @scale(%2, %4, %76, %c4608_i32_53, %c17_i32_54) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %77 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %78 = aie.objectfifo.subview.access %77[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_55 = arith.constant 4608 : i32
          %c18_i32 = arith.constant 18 : i32
          func.call @scale(%1, %4, %78, %c4608_i32_55, %c18_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %79 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %80 = aie.objectfifo.subview.access %79[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_56 = arith.constant 4608 : i32
          %c18_i32_57 = arith.constant 18 : i32
          func.call @scale(%2, %4, %80, %c4608_i32_56, %c18_i32_57) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %81 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %82 = aie.objectfifo.subview.access %81[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_58 = arith.constant 4608 : i32
          %c19_i32 = arith.constant 19 : i32
          func.call @scale(%1, %4, %82, %c4608_i32_58, %c19_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %83 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %84 = aie.objectfifo.subview.access %83[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_59 = arith.constant 4608 : i32
          %c19_i32_60 = arith.constant 19 : i32
          func.call @scale(%2, %4, %84, %c4608_i32_59, %c19_i32_60) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %85 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %86 = aie.objectfifo.subview.access %85[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_61 = arith.constant 4608 : i32
          %c20_i32 = arith.constant 20 : i32
          func.call @scale(%1, %4, %86, %c4608_i32_61, %c20_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %87 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %88 = aie.objectfifo.subview.access %87[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_62 = arith.constant 4608 : i32
          %c20_i32_63 = arith.constant 20 : i32
          func.call @scale(%2, %4, %88, %c4608_i32_62, %c20_i32_63) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %89 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %90 = aie.objectfifo.subview.access %89[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_64 = arith.constant 4608 : i32
          %c21_i32 = arith.constant 21 : i32
          func.call @scale(%1, %4, %90, %c4608_i32_64, %c21_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %91 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %92 = aie.objectfifo.subview.access %91[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_65 = arith.constant 4608 : i32
          %c21_i32_66 = arith.constant 21 : i32
          func.call @scale(%2, %4, %92, %c4608_i32_65, %c21_i32_66) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %93 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %94 = aie.objectfifo.subview.access %93[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_67 = arith.constant 4608 : i32
          %c22_i32 = arith.constant 22 : i32
          func.call @scale(%1, %4, %94, %c4608_i32_67, %c22_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %95 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %96 = aie.objectfifo.subview.access %95[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_68 = arith.constant 4608 : i32
          %c22_i32_69 = arith.constant 22 : i32
          func.call @scale(%2, %4, %96, %c4608_i32_68, %c22_i32_69) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %97 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %98 = aie.objectfifo.subview.access %97[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_70 = arith.constant 4608 : i32
          %c23_i32 = arith.constant 23 : i32
          func.call @scale(%1, %4, %98, %c4608_i32_70, %c23_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %99 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %100 = aie.objectfifo.subview.access %99[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_71 = arith.constant 4608 : i32
          %c23_i32_72 = arith.constant 23 : i32
          func.call @scale(%2, %4, %100, %c4608_i32_71, %c23_i32_72) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %101 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %102 = aie.objectfifo.subview.access %101[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_73 = arith.constant 4608 : i32
          %c24_i32 = arith.constant 24 : i32
          func.call @scale(%1, %4, %102, %c4608_i32_73, %c24_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %103 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %104 = aie.objectfifo.subview.access %103[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_74 = arith.constant 4608 : i32
          %c24_i32_75 = arith.constant 24 : i32
          func.call @scale(%2, %4, %104, %c4608_i32_74, %c24_i32_75) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %105 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %106 = aie.objectfifo.subview.access %105[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_76 = arith.constant 4608 : i32
          %c25_i32 = arith.constant 25 : i32
          func.call @scale(%1, %4, %106, %c4608_i32_76, %c25_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %107 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %108 = aie.objectfifo.subview.access %107[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_77 = arith.constant 4608 : i32
          %c25_i32_78 = arith.constant 25 : i32
          func.call @scale(%2, %4, %108, %c4608_i32_77, %c25_i32_78) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %109 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %110 = aie.objectfifo.subview.access %109[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_79 = arith.constant 4608 : i32
          %c26_i32 = arith.constant 26 : i32
          func.call @scale(%1, %4, %110, %c4608_i32_79, %c26_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %111 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %112 = aie.objectfifo.subview.access %111[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_80 = arith.constant 4608 : i32
          %c26_i32_81 = arith.constant 26 : i32
          func.call @scale(%2, %4, %112, %c4608_i32_80, %c26_i32_81) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %113 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %114 = aie.objectfifo.subview.access %113[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_82 = arith.constant 4608 : i32
          %c27_i32 = arith.constant 27 : i32
          func.call @scale(%1, %4, %114, %c4608_i32_82, %c27_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %115 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %116 = aie.objectfifo.subview.access %115[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_83 = arith.constant 4608 : i32
          %c27_i32_84 = arith.constant 27 : i32
          func.call @scale(%2, %4, %116, %c4608_i32_83, %c27_i32_84) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %117 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %118 = aie.objectfifo.subview.access %117[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_85 = arith.constant 4608 : i32
          %c28_i32 = arith.constant 28 : i32
          func.call @scale(%1, %4, %118, %c4608_i32_85, %c28_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %119 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %120 = aie.objectfifo.subview.access %119[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_86 = arith.constant 4608 : i32
          %c28_i32_87 = arith.constant 28 : i32
          func.call @scale(%2, %4, %120, %c4608_i32_86, %c28_i32_87) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %121 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %122 = aie.objectfifo.subview.access %121[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_88 = arith.constant 4608 : i32
          %c29_i32 = arith.constant 29 : i32
          func.call @scale(%1, %4, %122, %c4608_i32_88, %c29_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %123 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %124 = aie.objectfifo.subview.access %123[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_89 = arith.constant 4608 : i32
          %c29_i32_90 = arith.constant 29 : i32
          func.call @scale(%2, %4, %124, %c4608_i32_89, %c29_i32_90) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %125 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %126 = aie.objectfifo.subview.access %125[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_91 = arith.constant 4608 : i32
          %c30_i32 = arith.constant 30 : i32
          func.call @scale(%1, %4, %126, %c4608_i32_91, %c30_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %127 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %128 = aie.objectfifo.subview.access %127[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_92 = arith.constant 4608 : i32
          %c30_i32_93 = arith.constant 30 : i32
          func.call @scale(%2, %4, %128, %c4608_i32_92, %c30_i32_93) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %129 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %130 = aie.objectfifo.subview.access %129[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_94 = arith.constant 4608 : i32
          %c31_i32 = arith.constant 31 : i32
          func.call @scale(%1, %4, %130, %c4608_i32_94, %c31_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          %131 = aie.objectfifo.acquire @of_addU(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %132 = aie.objectfifo.subview.access %131[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_95 = arith.constant 4608 : i32
          %c31_i32_96 = arith.constant 31 : i32
          func.call @scale(%2, %4, %132, %c4608_i32_95, %c31_i32_96) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addU(Produce, 1)
          aie.objectfifo.release @of_in_l(Consume, 1)
        }
        aie.objectfifo.release @of_in_u(Consume, 2)
      }
      aie.end
    } {link_with = "scale.o"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_v(Consume, 2) : !aie.objectfifosubview<memref<4608xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
        %2 = aie.objectfifo.subview.access %0[1] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
        %c0_0 = arith.constant 0 : index
        %c512 = arith.constant 512 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c512 step %c1_1 {
          %3 = aie.objectfifo.acquire @of_in_m(Consume, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %5 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %6 = aie.objectfifo.subview.access %5[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          %c0_i32 = arith.constant 0 : i32
          func.call @scale(%1, %4, %6, %c4608_i32, %c0_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %7 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %8 = aie.objectfifo.subview.access %7[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_2 = arith.constant 4608 : i32
          %c0_i32_3 = arith.constant 0 : i32
          func.call @scale(%2, %4, %8, %c4608_i32_2, %c0_i32_3) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %9 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_4 = arith.constant 4608 : i32
          %c1_i32 = arith.constant 1 : i32
          func.call @scale(%1, %4, %10, %c4608_i32_4, %c1_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %11 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %12 = aie.objectfifo.subview.access %11[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_5 = arith.constant 4608 : i32
          %c1_i32_6 = arith.constant 1 : i32
          func.call @scale(%2, %4, %12, %c4608_i32_5, %c1_i32_6) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %13 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %14 = aie.objectfifo.subview.access %13[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_7 = arith.constant 4608 : i32
          %c2_i32 = arith.constant 2 : i32
          func.call @scale(%1, %4, %14, %c4608_i32_7, %c2_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %15 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %16 = aie.objectfifo.subview.access %15[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_8 = arith.constant 4608 : i32
          %c2_i32_9 = arith.constant 2 : i32
          func.call @scale(%2, %4, %16, %c4608_i32_8, %c2_i32_9) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %17 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %18 = aie.objectfifo.subview.access %17[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_10 = arith.constant 4608 : i32
          %c3_i32 = arith.constant 3 : i32
          func.call @scale(%1, %4, %18, %c4608_i32_10, %c3_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %19 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %20 = aie.objectfifo.subview.access %19[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_11 = arith.constant 4608 : i32
          %c3_i32_12 = arith.constant 3 : i32
          func.call @scale(%2, %4, %20, %c4608_i32_11, %c3_i32_12) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %21 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %22 = aie.objectfifo.subview.access %21[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_13 = arith.constant 4608 : i32
          %c4_i32 = arith.constant 4 : i32
          func.call @scale(%1, %4, %22, %c4608_i32_13, %c4_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %23 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %24 = aie.objectfifo.subview.access %23[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_14 = arith.constant 4608 : i32
          %c4_i32_15 = arith.constant 4 : i32
          func.call @scale(%2, %4, %24, %c4608_i32_14, %c4_i32_15) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %25 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %26 = aie.objectfifo.subview.access %25[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_16 = arith.constant 4608 : i32
          %c5_i32 = arith.constant 5 : i32
          func.call @scale(%1, %4, %26, %c4608_i32_16, %c5_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %27 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %28 = aie.objectfifo.subview.access %27[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_17 = arith.constant 4608 : i32
          %c5_i32_18 = arith.constant 5 : i32
          func.call @scale(%2, %4, %28, %c4608_i32_17, %c5_i32_18) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %29 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %30 = aie.objectfifo.subview.access %29[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_19 = arith.constant 4608 : i32
          %c6_i32 = arith.constant 6 : i32
          func.call @scale(%1, %4, %30, %c4608_i32_19, %c6_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %31 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %32 = aie.objectfifo.subview.access %31[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_20 = arith.constant 4608 : i32
          %c6_i32_21 = arith.constant 6 : i32
          func.call @scale(%2, %4, %32, %c4608_i32_20, %c6_i32_21) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %33 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %34 = aie.objectfifo.subview.access %33[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_22 = arith.constant 4608 : i32
          %c7_i32 = arith.constant 7 : i32
          func.call @scale(%1, %4, %34, %c4608_i32_22, %c7_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %35 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %36 = aie.objectfifo.subview.access %35[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_23 = arith.constant 4608 : i32
          %c7_i32_24 = arith.constant 7 : i32
          func.call @scale(%2, %4, %36, %c4608_i32_23, %c7_i32_24) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %37 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %38 = aie.objectfifo.subview.access %37[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_25 = arith.constant 4608 : i32
          %c8_i32 = arith.constant 8 : i32
          func.call @scale(%1, %4, %38, %c4608_i32_25, %c8_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %39 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %40 = aie.objectfifo.subview.access %39[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_26 = arith.constant 4608 : i32
          %c8_i32_27 = arith.constant 8 : i32
          func.call @scale(%2, %4, %40, %c4608_i32_26, %c8_i32_27) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %41 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %42 = aie.objectfifo.subview.access %41[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_28 = arith.constant 4608 : i32
          %c9_i32 = arith.constant 9 : i32
          func.call @scale(%1, %4, %42, %c4608_i32_28, %c9_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %43 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %44 = aie.objectfifo.subview.access %43[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_29 = arith.constant 4608 : i32
          %c9_i32_30 = arith.constant 9 : i32
          func.call @scale(%2, %4, %44, %c4608_i32_29, %c9_i32_30) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %45 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %46 = aie.objectfifo.subview.access %45[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_31 = arith.constant 4608 : i32
          %c10_i32 = arith.constant 10 : i32
          func.call @scale(%1, %4, %46, %c4608_i32_31, %c10_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %47 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %48 = aie.objectfifo.subview.access %47[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_32 = arith.constant 4608 : i32
          %c10_i32_33 = arith.constant 10 : i32
          func.call @scale(%2, %4, %48, %c4608_i32_32, %c10_i32_33) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %49 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %50 = aie.objectfifo.subview.access %49[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_34 = arith.constant 4608 : i32
          %c11_i32 = arith.constant 11 : i32
          func.call @scale(%1, %4, %50, %c4608_i32_34, %c11_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %51 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %52 = aie.objectfifo.subview.access %51[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_35 = arith.constant 4608 : i32
          %c11_i32_36 = arith.constant 11 : i32
          func.call @scale(%2, %4, %52, %c4608_i32_35, %c11_i32_36) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %53 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %54 = aie.objectfifo.subview.access %53[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_37 = arith.constant 4608 : i32
          %c12_i32 = arith.constant 12 : i32
          func.call @scale(%1, %4, %54, %c4608_i32_37, %c12_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %55 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %56 = aie.objectfifo.subview.access %55[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_38 = arith.constant 4608 : i32
          %c12_i32_39 = arith.constant 12 : i32
          func.call @scale(%2, %4, %56, %c4608_i32_38, %c12_i32_39) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %57 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %58 = aie.objectfifo.subview.access %57[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_40 = arith.constant 4608 : i32
          %c13_i32 = arith.constant 13 : i32
          func.call @scale(%1, %4, %58, %c4608_i32_40, %c13_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %59 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %60 = aie.objectfifo.subview.access %59[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_41 = arith.constant 4608 : i32
          %c13_i32_42 = arith.constant 13 : i32
          func.call @scale(%2, %4, %60, %c4608_i32_41, %c13_i32_42) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %61 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %62 = aie.objectfifo.subview.access %61[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_43 = arith.constant 4608 : i32
          %c14_i32 = arith.constant 14 : i32
          func.call @scale(%1, %4, %62, %c4608_i32_43, %c14_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %63 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %64 = aie.objectfifo.subview.access %63[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_44 = arith.constant 4608 : i32
          %c14_i32_45 = arith.constant 14 : i32
          func.call @scale(%2, %4, %64, %c4608_i32_44, %c14_i32_45) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %65 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %66 = aie.objectfifo.subview.access %65[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_46 = arith.constant 4608 : i32
          %c15_i32 = arith.constant 15 : i32
          func.call @scale(%1, %4, %66, %c4608_i32_46, %c15_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %67 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %68 = aie.objectfifo.subview.access %67[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_47 = arith.constant 4608 : i32
          %c15_i32_48 = arith.constant 15 : i32
          func.call @scale(%2, %4, %68, %c4608_i32_47, %c15_i32_48) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %69 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %70 = aie.objectfifo.subview.access %69[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_49 = arith.constant 4608 : i32
          %c16_i32 = arith.constant 16 : i32
          func.call @scale(%1, %4, %70, %c4608_i32_49, %c16_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %71 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %72 = aie.objectfifo.subview.access %71[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_50 = arith.constant 4608 : i32
          %c16_i32_51 = arith.constant 16 : i32
          func.call @scale(%2, %4, %72, %c4608_i32_50, %c16_i32_51) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %73 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %74 = aie.objectfifo.subview.access %73[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_52 = arith.constant 4608 : i32
          %c17_i32 = arith.constant 17 : i32
          func.call @scale(%1, %4, %74, %c4608_i32_52, %c17_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %75 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %76 = aie.objectfifo.subview.access %75[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_53 = arith.constant 4608 : i32
          %c17_i32_54 = arith.constant 17 : i32
          func.call @scale(%2, %4, %76, %c4608_i32_53, %c17_i32_54) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %77 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %78 = aie.objectfifo.subview.access %77[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_55 = arith.constant 4608 : i32
          %c18_i32 = arith.constant 18 : i32
          func.call @scale(%1, %4, %78, %c4608_i32_55, %c18_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %79 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %80 = aie.objectfifo.subview.access %79[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_56 = arith.constant 4608 : i32
          %c18_i32_57 = arith.constant 18 : i32
          func.call @scale(%2, %4, %80, %c4608_i32_56, %c18_i32_57) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %81 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %82 = aie.objectfifo.subview.access %81[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_58 = arith.constant 4608 : i32
          %c19_i32 = arith.constant 19 : i32
          func.call @scale(%1, %4, %82, %c4608_i32_58, %c19_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %83 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %84 = aie.objectfifo.subview.access %83[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_59 = arith.constant 4608 : i32
          %c19_i32_60 = arith.constant 19 : i32
          func.call @scale(%2, %4, %84, %c4608_i32_59, %c19_i32_60) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %85 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %86 = aie.objectfifo.subview.access %85[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_61 = arith.constant 4608 : i32
          %c20_i32 = arith.constant 20 : i32
          func.call @scale(%1, %4, %86, %c4608_i32_61, %c20_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %87 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %88 = aie.objectfifo.subview.access %87[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_62 = arith.constant 4608 : i32
          %c20_i32_63 = arith.constant 20 : i32
          func.call @scale(%2, %4, %88, %c4608_i32_62, %c20_i32_63) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %89 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %90 = aie.objectfifo.subview.access %89[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_64 = arith.constant 4608 : i32
          %c21_i32 = arith.constant 21 : i32
          func.call @scale(%1, %4, %90, %c4608_i32_64, %c21_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %91 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %92 = aie.objectfifo.subview.access %91[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_65 = arith.constant 4608 : i32
          %c21_i32_66 = arith.constant 21 : i32
          func.call @scale(%2, %4, %92, %c4608_i32_65, %c21_i32_66) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %93 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %94 = aie.objectfifo.subview.access %93[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_67 = arith.constant 4608 : i32
          %c22_i32 = arith.constant 22 : i32
          func.call @scale(%1, %4, %94, %c4608_i32_67, %c22_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %95 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %96 = aie.objectfifo.subview.access %95[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_68 = arith.constant 4608 : i32
          %c22_i32_69 = arith.constant 22 : i32
          func.call @scale(%2, %4, %96, %c4608_i32_68, %c22_i32_69) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %97 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %98 = aie.objectfifo.subview.access %97[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_70 = arith.constant 4608 : i32
          %c23_i32 = arith.constant 23 : i32
          func.call @scale(%1, %4, %98, %c4608_i32_70, %c23_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %99 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %100 = aie.objectfifo.subview.access %99[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_71 = arith.constant 4608 : i32
          %c23_i32_72 = arith.constant 23 : i32
          func.call @scale(%2, %4, %100, %c4608_i32_71, %c23_i32_72) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %101 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %102 = aie.objectfifo.subview.access %101[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_73 = arith.constant 4608 : i32
          %c24_i32 = arith.constant 24 : i32
          func.call @scale(%1, %4, %102, %c4608_i32_73, %c24_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %103 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %104 = aie.objectfifo.subview.access %103[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_74 = arith.constant 4608 : i32
          %c24_i32_75 = arith.constant 24 : i32
          func.call @scale(%2, %4, %104, %c4608_i32_74, %c24_i32_75) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %105 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %106 = aie.objectfifo.subview.access %105[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_76 = arith.constant 4608 : i32
          %c25_i32 = arith.constant 25 : i32
          func.call @scale(%1, %4, %106, %c4608_i32_76, %c25_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %107 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %108 = aie.objectfifo.subview.access %107[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_77 = arith.constant 4608 : i32
          %c25_i32_78 = arith.constant 25 : i32
          func.call @scale(%2, %4, %108, %c4608_i32_77, %c25_i32_78) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %109 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %110 = aie.objectfifo.subview.access %109[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_79 = arith.constant 4608 : i32
          %c26_i32 = arith.constant 26 : i32
          func.call @scale(%1, %4, %110, %c4608_i32_79, %c26_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %111 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %112 = aie.objectfifo.subview.access %111[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_80 = arith.constant 4608 : i32
          %c26_i32_81 = arith.constant 26 : i32
          func.call @scale(%2, %4, %112, %c4608_i32_80, %c26_i32_81) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %113 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %114 = aie.objectfifo.subview.access %113[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_82 = arith.constant 4608 : i32
          %c27_i32 = arith.constant 27 : i32
          func.call @scale(%1, %4, %114, %c4608_i32_82, %c27_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %115 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %116 = aie.objectfifo.subview.access %115[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_83 = arith.constant 4608 : i32
          %c27_i32_84 = arith.constant 27 : i32
          func.call @scale(%2, %4, %116, %c4608_i32_83, %c27_i32_84) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %117 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %118 = aie.objectfifo.subview.access %117[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_85 = arith.constant 4608 : i32
          %c28_i32 = arith.constant 28 : i32
          func.call @scale(%1, %4, %118, %c4608_i32_85, %c28_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %119 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %120 = aie.objectfifo.subview.access %119[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_86 = arith.constant 4608 : i32
          %c28_i32_87 = arith.constant 28 : i32
          func.call @scale(%2, %4, %120, %c4608_i32_86, %c28_i32_87) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %121 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %122 = aie.objectfifo.subview.access %121[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_88 = arith.constant 4608 : i32
          %c29_i32 = arith.constant 29 : i32
          func.call @scale(%1, %4, %122, %c4608_i32_88, %c29_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %123 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %124 = aie.objectfifo.subview.access %123[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_89 = arith.constant 4608 : i32
          %c29_i32_90 = arith.constant 29 : i32
          func.call @scale(%2, %4, %124, %c4608_i32_89, %c29_i32_90) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %125 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %126 = aie.objectfifo.subview.access %125[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_91 = arith.constant 4608 : i32
          %c30_i32 = arith.constant 30 : i32
          func.call @scale(%1, %4, %126, %c4608_i32_91, %c30_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %127 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %128 = aie.objectfifo.subview.access %127[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_92 = arith.constant 4608 : i32
          %c30_i32_93 = arith.constant 30 : i32
          func.call @scale(%2, %4, %128, %c4608_i32_92, %c30_i32_93) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %129 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %130 = aie.objectfifo.subview.access %129[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_94 = arith.constant 4608 : i32
          %c31_i32 = arith.constant 31 : i32
          func.call @scale(%1, %4, %130, %c4608_i32_94, %c31_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          %131 = aie.objectfifo.acquire @of_addV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %132 = aie.objectfifo.subview.access %131[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_95 = arith.constant 4608 : i32
          %c31_i32_96 = arith.constant 31 : i32
          func.call @scale(%2, %4, %132, %c4608_i32_95, %c31_i32_96) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addV(Produce, 1)
          aie.objectfifo.release @of_in_m(Consume, 1)
        }
        aie.objectfifo.release @of_in_v(Consume, 2)
      }
      aie.end
    } {link_with = "scale.o"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_w(Consume, 2) : !aie.objectfifosubview<memref<4608xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
        %2 = aie.objectfifo.subview.access %0[1] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
        %c0_0 = arith.constant 0 : index
        %c512 = arith.constant 512 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c512 step %c1_1 {
          %3 = aie.objectfifo.acquire @of_in_n(Consume, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %5 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %6 = aie.objectfifo.subview.access %5[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          %c0_i32 = arith.constant 0 : i32
          func.call @scale(%1, %4, %6, %c4608_i32, %c0_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %7 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %8 = aie.objectfifo.subview.access %7[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_2 = arith.constant 4608 : i32
          %c0_i32_3 = arith.constant 0 : i32
          func.call @scale(%2, %4, %8, %c4608_i32_2, %c0_i32_3) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %9 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_4 = arith.constant 4608 : i32
          %c1_i32 = arith.constant 1 : i32
          func.call @scale(%1, %4, %10, %c4608_i32_4, %c1_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %11 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %12 = aie.objectfifo.subview.access %11[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_5 = arith.constant 4608 : i32
          %c1_i32_6 = arith.constant 1 : i32
          func.call @scale(%2, %4, %12, %c4608_i32_5, %c1_i32_6) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %13 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %14 = aie.objectfifo.subview.access %13[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_7 = arith.constant 4608 : i32
          %c2_i32 = arith.constant 2 : i32
          func.call @scale(%1, %4, %14, %c4608_i32_7, %c2_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %15 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %16 = aie.objectfifo.subview.access %15[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_8 = arith.constant 4608 : i32
          %c2_i32_9 = arith.constant 2 : i32
          func.call @scale(%2, %4, %16, %c4608_i32_8, %c2_i32_9) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %17 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %18 = aie.objectfifo.subview.access %17[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_10 = arith.constant 4608 : i32
          %c3_i32 = arith.constant 3 : i32
          func.call @scale(%1, %4, %18, %c4608_i32_10, %c3_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %19 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %20 = aie.objectfifo.subview.access %19[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_11 = arith.constant 4608 : i32
          %c3_i32_12 = arith.constant 3 : i32
          func.call @scale(%2, %4, %20, %c4608_i32_11, %c3_i32_12) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %21 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %22 = aie.objectfifo.subview.access %21[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_13 = arith.constant 4608 : i32
          %c4_i32 = arith.constant 4 : i32
          func.call @scale(%1, %4, %22, %c4608_i32_13, %c4_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %23 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %24 = aie.objectfifo.subview.access %23[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_14 = arith.constant 4608 : i32
          %c4_i32_15 = arith.constant 4 : i32
          func.call @scale(%2, %4, %24, %c4608_i32_14, %c4_i32_15) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %25 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %26 = aie.objectfifo.subview.access %25[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_16 = arith.constant 4608 : i32
          %c5_i32 = arith.constant 5 : i32
          func.call @scale(%1, %4, %26, %c4608_i32_16, %c5_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %27 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %28 = aie.objectfifo.subview.access %27[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_17 = arith.constant 4608 : i32
          %c5_i32_18 = arith.constant 5 : i32
          func.call @scale(%2, %4, %28, %c4608_i32_17, %c5_i32_18) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %29 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %30 = aie.objectfifo.subview.access %29[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_19 = arith.constant 4608 : i32
          %c6_i32 = arith.constant 6 : i32
          func.call @scale(%1, %4, %30, %c4608_i32_19, %c6_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %31 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %32 = aie.objectfifo.subview.access %31[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_20 = arith.constant 4608 : i32
          %c6_i32_21 = arith.constant 6 : i32
          func.call @scale(%2, %4, %32, %c4608_i32_20, %c6_i32_21) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %33 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %34 = aie.objectfifo.subview.access %33[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_22 = arith.constant 4608 : i32
          %c7_i32 = arith.constant 7 : i32
          func.call @scale(%1, %4, %34, %c4608_i32_22, %c7_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %35 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %36 = aie.objectfifo.subview.access %35[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_23 = arith.constant 4608 : i32
          %c7_i32_24 = arith.constant 7 : i32
          func.call @scale(%2, %4, %36, %c4608_i32_23, %c7_i32_24) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %37 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %38 = aie.objectfifo.subview.access %37[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_25 = arith.constant 4608 : i32
          %c8_i32 = arith.constant 8 : i32
          func.call @scale(%1, %4, %38, %c4608_i32_25, %c8_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %39 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %40 = aie.objectfifo.subview.access %39[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_26 = arith.constant 4608 : i32
          %c8_i32_27 = arith.constant 8 : i32
          func.call @scale(%2, %4, %40, %c4608_i32_26, %c8_i32_27) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %41 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %42 = aie.objectfifo.subview.access %41[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_28 = arith.constant 4608 : i32
          %c9_i32 = arith.constant 9 : i32
          func.call @scale(%1, %4, %42, %c4608_i32_28, %c9_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %43 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %44 = aie.objectfifo.subview.access %43[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_29 = arith.constant 4608 : i32
          %c9_i32_30 = arith.constant 9 : i32
          func.call @scale(%2, %4, %44, %c4608_i32_29, %c9_i32_30) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %45 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %46 = aie.objectfifo.subview.access %45[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_31 = arith.constant 4608 : i32
          %c10_i32 = arith.constant 10 : i32
          func.call @scale(%1, %4, %46, %c4608_i32_31, %c10_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %47 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %48 = aie.objectfifo.subview.access %47[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_32 = arith.constant 4608 : i32
          %c10_i32_33 = arith.constant 10 : i32
          func.call @scale(%2, %4, %48, %c4608_i32_32, %c10_i32_33) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %49 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %50 = aie.objectfifo.subview.access %49[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_34 = arith.constant 4608 : i32
          %c11_i32 = arith.constant 11 : i32
          func.call @scale(%1, %4, %50, %c4608_i32_34, %c11_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %51 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %52 = aie.objectfifo.subview.access %51[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_35 = arith.constant 4608 : i32
          %c11_i32_36 = arith.constant 11 : i32
          func.call @scale(%2, %4, %52, %c4608_i32_35, %c11_i32_36) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %53 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %54 = aie.objectfifo.subview.access %53[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_37 = arith.constant 4608 : i32
          %c12_i32 = arith.constant 12 : i32
          func.call @scale(%1, %4, %54, %c4608_i32_37, %c12_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %55 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %56 = aie.objectfifo.subview.access %55[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_38 = arith.constant 4608 : i32
          %c12_i32_39 = arith.constant 12 : i32
          func.call @scale(%2, %4, %56, %c4608_i32_38, %c12_i32_39) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %57 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %58 = aie.objectfifo.subview.access %57[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_40 = arith.constant 4608 : i32
          %c13_i32 = arith.constant 13 : i32
          func.call @scale(%1, %4, %58, %c4608_i32_40, %c13_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %59 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %60 = aie.objectfifo.subview.access %59[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_41 = arith.constant 4608 : i32
          %c13_i32_42 = arith.constant 13 : i32
          func.call @scale(%2, %4, %60, %c4608_i32_41, %c13_i32_42) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %61 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %62 = aie.objectfifo.subview.access %61[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_43 = arith.constant 4608 : i32
          %c14_i32 = arith.constant 14 : i32
          func.call @scale(%1, %4, %62, %c4608_i32_43, %c14_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %63 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %64 = aie.objectfifo.subview.access %63[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_44 = arith.constant 4608 : i32
          %c14_i32_45 = arith.constant 14 : i32
          func.call @scale(%2, %4, %64, %c4608_i32_44, %c14_i32_45) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %65 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %66 = aie.objectfifo.subview.access %65[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_46 = arith.constant 4608 : i32
          %c15_i32 = arith.constant 15 : i32
          func.call @scale(%1, %4, %66, %c4608_i32_46, %c15_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %67 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %68 = aie.objectfifo.subview.access %67[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_47 = arith.constant 4608 : i32
          %c15_i32_48 = arith.constant 15 : i32
          func.call @scale(%2, %4, %68, %c4608_i32_47, %c15_i32_48) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %69 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %70 = aie.objectfifo.subview.access %69[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_49 = arith.constant 4608 : i32
          %c16_i32 = arith.constant 16 : i32
          func.call @scale(%1, %4, %70, %c4608_i32_49, %c16_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %71 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %72 = aie.objectfifo.subview.access %71[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_50 = arith.constant 4608 : i32
          %c16_i32_51 = arith.constant 16 : i32
          func.call @scale(%2, %4, %72, %c4608_i32_50, %c16_i32_51) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %73 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %74 = aie.objectfifo.subview.access %73[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_52 = arith.constant 4608 : i32
          %c17_i32 = arith.constant 17 : i32
          func.call @scale(%1, %4, %74, %c4608_i32_52, %c17_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %75 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %76 = aie.objectfifo.subview.access %75[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_53 = arith.constant 4608 : i32
          %c17_i32_54 = arith.constant 17 : i32
          func.call @scale(%2, %4, %76, %c4608_i32_53, %c17_i32_54) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %77 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %78 = aie.objectfifo.subview.access %77[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_55 = arith.constant 4608 : i32
          %c18_i32 = arith.constant 18 : i32
          func.call @scale(%1, %4, %78, %c4608_i32_55, %c18_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %79 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %80 = aie.objectfifo.subview.access %79[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_56 = arith.constant 4608 : i32
          %c18_i32_57 = arith.constant 18 : i32
          func.call @scale(%2, %4, %80, %c4608_i32_56, %c18_i32_57) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %81 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %82 = aie.objectfifo.subview.access %81[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_58 = arith.constant 4608 : i32
          %c19_i32 = arith.constant 19 : i32
          func.call @scale(%1, %4, %82, %c4608_i32_58, %c19_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %83 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %84 = aie.objectfifo.subview.access %83[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_59 = arith.constant 4608 : i32
          %c19_i32_60 = arith.constant 19 : i32
          func.call @scale(%2, %4, %84, %c4608_i32_59, %c19_i32_60) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %85 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %86 = aie.objectfifo.subview.access %85[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_61 = arith.constant 4608 : i32
          %c20_i32 = arith.constant 20 : i32
          func.call @scale(%1, %4, %86, %c4608_i32_61, %c20_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %87 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %88 = aie.objectfifo.subview.access %87[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_62 = arith.constant 4608 : i32
          %c20_i32_63 = arith.constant 20 : i32
          func.call @scale(%2, %4, %88, %c4608_i32_62, %c20_i32_63) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %89 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %90 = aie.objectfifo.subview.access %89[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_64 = arith.constant 4608 : i32
          %c21_i32 = arith.constant 21 : i32
          func.call @scale(%1, %4, %90, %c4608_i32_64, %c21_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %91 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %92 = aie.objectfifo.subview.access %91[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_65 = arith.constant 4608 : i32
          %c21_i32_66 = arith.constant 21 : i32
          func.call @scale(%2, %4, %92, %c4608_i32_65, %c21_i32_66) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %93 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %94 = aie.objectfifo.subview.access %93[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_67 = arith.constant 4608 : i32
          %c22_i32 = arith.constant 22 : i32
          func.call @scale(%1, %4, %94, %c4608_i32_67, %c22_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %95 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %96 = aie.objectfifo.subview.access %95[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_68 = arith.constant 4608 : i32
          %c22_i32_69 = arith.constant 22 : i32
          func.call @scale(%2, %4, %96, %c4608_i32_68, %c22_i32_69) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %97 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %98 = aie.objectfifo.subview.access %97[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_70 = arith.constant 4608 : i32
          %c23_i32 = arith.constant 23 : i32
          func.call @scale(%1, %4, %98, %c4608_i32_70, %c23_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %99 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %100 = aie.objectfifo.subview.access %99[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_71 = arith.constant 4608 : i32
          %c23_i32_72 = arith.constant 23 : i32
          func.call @scale(%2, %4, %100, %c4608_i32_71, %c23_i32_72) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %101 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %102 = aie.objectfifo.subview.access %101[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_73 = arith.constant 4608 : i32
          %c24_i32 = arith.constant 24 : i32
          func.call @scale(%1, %4, %102, %c4608_i32_73, %c24_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %103 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %104 = aie.objectfifo.subview.access %103[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_74 = arith.constant 4608 : i32
          %c24_i32_75 = arith.constant 24 : i32
          func.call @scale(%2, %4, %104, %c4608_i32_74, %c24_i32_75) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %105 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %106 = aie.objectfifo.subview.access %105[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_76 = arith.constant 4608 : i32
          %c25_i32 = arith.constant 25 : i32
          func.call @scale(%1, %4, %106, %c4608_i32_76, %c25_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %107 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %108 = aie.objectfifo.subview.access %107[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_77 = arith.constant 4608 : i32
          %c25_i32_78 = arith.constant 25 : i32
          func.call @scale(%2, %4, %108, %c4608_i32_77, %c25_i32_78) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %109 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %110 = aie.objectfifo.subview.access %109[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_79 = arith.constant 4608 : i32
          %c26_i32 = arith.constant 26 : i32
          func.call @scale(%1, %4, %110, %c4608_i32_79, %c26_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %111 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %112 = aie.objectfifo.subview.access %111[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_80 = arith.constant 4608 : i32
          %c26_i32_81 = arith.constant 26 : i32
          func.call @scale(%2, %4, %112, %c4608_i32_80, %c26_i32_81) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %113 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %114 = aie.objectfifo.subview.access %113[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_82 = arith.constant 4608 : i32
          %c27_i32 = arith.constant 27 : i32
          func.call @scale(%1, %4, %114, %c4608_i32_82, %c27_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %115 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %116 = aie.objectfifo.subview.access %115[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_83 = arith.constant 4608 : i32
          %c27_i32_84 = arith.constant 27 : i32
          func.call @scale(%2, %4, %116, %c4608_i32_83, %c27_i32_84) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %117 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %118 = aie.objectfifo.subview.access %117[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_85 = arith.constant 4608 : i32
          %c28_i32 = arith.constant 28 : i32
          func.call @scale(%1, %4, %118, %c4608_i32_85, %c28_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %119 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %120 = aie.objectfifo.subview.access %119[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_86 = arith.constant 4608 : i32
          %c28_i32_87 = arith.constant 28 : i32
          func.call @scale(%2, %4, %120, %c4608_i32_86, %c28_i32_87) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %121 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %122 = aie.objectfifo.subview.access %121[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_88 = arith.constant 4608 : i32
          %c29_i32 = arith.constant 29 : i32
          func.call @scale(%1, %4, %122, %c4608_i32_88, %c29_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %123 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %124 = aie.objectfifo.subview.access %123[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_89 = arith.constant 4608 : i32
          %c29_i32_90 = arith.constant 29 : i32
          func.call @scale(%2, %4, %124, %c4608_i32_89, %c29_i32_90) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %125 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %126 = aie.objectfifo.subview.access %125[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_91 = arith.constant 4608 : i32
          %c30_i32 = arith.constant 30 : i32
          func.call @scale(%1, %4, %126, %c4608_i32_91, %c30_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %127 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %128 = aie.objectfifo.subview.access %127[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_92 = arith.constant 4608 : i32
          %c30_i32_93 = arith.constant 30 : i32
          func.call @scale(%2, %4, %128, %c4608_i32_92, %c30_i32_93) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %129 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %130 = aie.objectfifo.subview.access %129[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_94 = arith.constant 4608 : i32
          %c31_i32 = arith.constant 31 : i32
          func.call @scale(%1, %4, %130, %c4608_i32_94, %c31_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          %131 = aie.objectfifo.acquire @of_addW(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %132 = aie.objectfifo.subview.access %131[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_95 = arith.constant 4608 : i32
          %c31_i32_96 = arith.constant 31 : i32
          func.call @scale(%2, %4, %132, %c4608_i32_95, %c31_i32_96) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_addW(Produce, 1)
          aie.objectfifo.release @of_in_n(Consume, 1)
        }
        aie.objectfifo.release @of_in_w(Consume, 2)
      }
      aie.end
    } {link_with = "scale.o"}
    %core_1_5 = aie.core(%tile_1_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %c0_2 = arith.constant 0 : index
          %c2 = arith.constant 2 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c2 step %c1_3 {
            %0 = aie.objectfifo.acquire @of_addU(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
            %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
            %2 = aie.objectfifo.acquire @of_addV(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
            %4 = aie.objectfifo.acquire @of_addUV(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
            %c4608_i32 = arith.constant 4608 : i32
            func.call @add_kernel(%1, %3, %5, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
            aie.objectfifo.release @of_addUV(Produce, 1)
            aie.objectfifo.release @of_addU(Consume, 1)
            aie.objectfifo.release @of_addV(Consume, 1)
          }
        }
      }
      aie.end
    } {link_with = "add.o"}
    %core_1_4 = aie.core(%tile_1_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %c0_2 = arith.constant 0 : index
          %c2 = arith.constant 2 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c2 step %c1_3 {
            %0 = aie.objectfifo.acquire @of_addUV(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
            %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
            %2 = aie.objectfifo.acquire @of_addW(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
            %4 = aie.objectfifo.acquire @of_scaleAddBL(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
            %c4608_i32 = arith.constant 4608 : i32
            func.call @add_kernel(%1, %3, %5, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
            aie.objectfifo.release @of_scaleAddBL(Produce, 1)
            aie.objectfifo.release @of_addUV(Consume, 1)
            aie.objectfifo.release @of_addW(Consume, 1)
          }
        }
      }
      aie.end
    } {link_with = "add.o"}
    %core_1_2 = aie.core(%tile_1_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<2xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<2xbf16>> -> memref<2xbf16>
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %c0_2 = arith.constant 0 : index
          %c2 = arith.constant 2 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c2 step %c1_3 {
            %2 = aie.objectfifo.acquire @of_scaleAddBL(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
            %4 = aie.objectfifo.acquire @of_trigFifo(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
            %c4608_i32 = arith.constant 4608 : i32
            func.call @scale_single(%3, %1, %5, %c4608_i32) : (memref<4608xbf16>, memref<2xbf16>, memref<4608xbf16>, i32) -> ()
            aie.objectfifo.release @of_trigFifo(Produce, 1)
            aie.objectfifo.release @of_scaleAddBL(Consume, 1)
          }
        }
        aie.objectfifo.release @in0(Consume, 1)
      }
      aie.end
    } {link_with = "scale.o"}
    %core_2_5 = aie.core(%tile_2_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %c0_2 = arith.constant 0 : index
          %c2 = arith.constant 2 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c2 step %c1_3 {
            %0 = aie.objectfifo.acquire @of_trigFifo(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
            %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
            %2 = aie.objectfifo.acquire @of_multTrigR(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
            %c4608_i32 = arith.constant 4608 : i32
            func.call @cosine(%1, %3, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
            aie.objectfifo.release @of_multTrigR(Produce, 1)
            aie.objectfifo.release @of_trigFifo(Consume, 1)
          }
        }
      }
      aie.end
    } {link_with = "kernels.a"}
    %core_3_5 = aie.core(%tile_3_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %c0_2 = arith.constant 0 : index
          %c2 = arith.constant 2 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c2 step %c1_3 {
            %0 = aie.objectfifo.acquire @of_trigFifo(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
            %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
            %2 = aie.objectfifo.acquire @of_multTrigC(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
            %c4608_i32 = arith.constant 4608 : i32
            func.call @sine(%1, %3, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
            aie.objectfifo.release @of_multTrigC(Produce, 1)
            aie.objectfifo.release @of_trigFifo(Consume, 1)
          }
        }
      }
      aie.end
    } {link_with = "kernels.a"}
    %core_2_4 = aie.core(%tile_2_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_visR(Consume, 2) : !aie.objectfifosubview<memref<4608xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
        %2 = aie.objectfifo.subview.access %0[1] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %3 = aie.objectfifo.acquire @of_multTrigR(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %5 = aie.objectfifo.acquire @of_reduceR(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %6 = aie.objectfifo.subview.access %5[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          func.call @mul_kernel(%4, %1, %6, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
          aie.objectfifo.release @of_reduceR(Produce, 1)
          aie.objectfifo.release @of_multTrigR(Consume, 1)
          %7 = aie.objectfifo.acquire @of_multTrigR(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %8 = aie.objectfifo.subview.access %7[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %9 = aie.objectfifo.acquire @of_reduceR(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_2 = arith.constant 4608 : i32
          func.call @mul_kernel(%8, %2, %10, %c4608_i32_2) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
          aie.objectfifo.release @of_reduceR(Produce, 1)
          aie.objectfifo.release @of_multTrigR(Consume, 1)
        }
        aie.objectfifo.release @of_in_visR(Consume, 2)
      }
      aie.end
    } {link_with = "mul.o"}
    %core_3_4 = aie.core(%tile_3_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_visC(Consume, 2) : !aie.objectfifosubview<memref<4608xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
        %2 = aie.objectfifo.subview.access %0[1] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %3 = aie.objectfifo.acquire @of_multTrigC(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %5 = aie.objectfifo.acquire @of_reduceC(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %6 = aie.objectfifo.subview.access %5[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          func.call @mul_kernel(%4, %1, %6, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
          aie.objectfifo.release @of_reduceC(Produce, 1)
          aie.objectfifo.release @of_multTrigC(Consume, 1)
          %7 = aie.objectfifo.acquire @of_multTrigC(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %8 = aie.objectfifo.subview.access %7[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %9 = aie.objectfifo.acquire @of_reduceC(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_2 = arith.constant 4608 : i32
          func.call @mul_kernel(%8, %2, %10, %c4608_i32_2) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
          aie.objectfifo.release @of_reduceC(Produce, 1)
          aie.objectfifo.release @of_multTrigC(Consume, 1)
        }
        aie.objectfifo.release @of_in_visC(Consume, 2)
      }
      aie.end
    } {link_with = "mul.o"}
    %core_2_3 = aie.core(%tile_2_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %0 = aie.objectfifo.acquire @of_reduceR(Consume, 2) : !aie.objectfifosubview<memref<4608xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %2 = aie.objectfifo.subview.access %0[1] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %3 = aie.objectfifo.acquire @of_reduc2SubR(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          func.call @add_kernel(%1, %2, %4, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
          aie.objectfifo.release @of_reduc2SubR(Produce, 1)
          aie.objectfifo.release @of_reduceR(Consume, 2)
        }
      }
      aie.end
    } {link_with = "add.o"}
    %core_3_3 = aie.core(%tile_3_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %0 = aie.objectfifo.acquire @of_reduceC(Consume, 2) : !aie.objectfifosubview<memref<4608xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %2 = aie.objectfifo.subview.access %0[1] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %3 = aie.objectfifo.acquire @of_reduc2SubC(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          func.call @add_kernel(%1, %2, %4, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
          aie.objectfifo.release @of_reduc2SubC(Produce, 1)
          aie.objectfifo.release @of_reduceC(Consume, 2)
        }
      }
      aie.end
    } {link_with = "add.o"}
    %core_3_2 = aie.core(%tile_3_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %0 = aie.objectfifo.acquire @of_reduc2SubR(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %2 = aie.objectfifo.acquire @of_reduc2SubC(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %4 = aie.objectfifo.acquire @of_sub2mean(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          func.call @sub_kernel(%1, %3, %5, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Produce, 1)
          aie.objectfifo.release @of_reduc2SubR(Consume, 1)
          aie.objectfifo.release @of_reduc2SubC(Consume, 1)
        }
      }
      aie.end
    } {link_with = "sub.o"}
    %core_2_2 = aie.core(%tile_2_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c512 = arith.constant 512 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c512 step %c1_1 {
          %0 = aie.objectfifo.acquire @out(Produce, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %2 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          %c0_i32 = arith.constant 0 : i32
          func.call @mean(%3, %1, %c4608_i32, %c0_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %4 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_2 = arith.constant 4608 : i32
          %c1_i32 = arith.constant 1 : i32
          func.call @mean(%5, %1, %c4608_i32_2, %c1_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %6 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_3 = arith.constant 4608 : i32
          %c2_i32 = arith.constant 2 : i32
          func.call @mean(%7, %1, %c4608_i32_3, %c2_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %8 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_4 = arith.constant 4608 : i32
          %c3_i32 = arith.constant 3 : i32
          func.call @mean(%9, %1, %c4608_i32_4, %c3_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %10 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_5 = arith.constant 4608 : i32
          %c4_i32 = arith.constant 4 : i32
          func.call @mean(%11, %1, %c4608_i32_5, %c4_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %12 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_6 = arith.constant 4608 : i32
          %c5_i32 = arith.constant 5 : i32
          func.call @mean(%13, %1, %c4608_i32_6, %c5_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %14 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_7 = arith.constant 4608 : i32
          %c6_i32 = arith.constant 6 : i32
          func.call @mean(%15, %1, %c4608_i32_7, %c6_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %16 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_8 = arith.constant 4608 : i32
          %c7_i32 = arith.constant 7 : i32
          func.call @mean(%17, %1, %c4608_i32_8, %c7_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %18 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_9 = arith.constant 4608 : i32
          %c8_i32 = arith.constant 8 : i32
          func.call @mean(%19, %1, %c4608_i32_9, %c8_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %20 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_10 = arith.constant 4608 : i32
          %c9_i32 = arith.constant 9 : i32
          func.call @mean(%21, %1, %c4608_i32_10, %c9_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %22 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %23 = aie.objectfifo.subview.access %22[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_11 = arith.constant 4608 : i32
          %c10_i32 = arith.constant 10 : i32
          func.call @mean(%23, %1, %c4608_i32_11, %c10_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %24 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %25 = aie.objectfifo.subview.access %24[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_12 = arith.constant 4608 : i32
          %c11_i32 = arith.constant 11 : i32
          func.call @mean(%25, %1, %c4608_i32_12, %c11_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %26 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %27 = aie.objectfifo.subview.access %26[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_13 = arith.constant 4608 : i32
          %c12_i32 = arith.constant 12 : i32
          func.call @mean(%27, %1, %c4608_i32_13, %c12_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %28 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %29 = aie.objectfifo.subview.access %28[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_14 = arith.constant 4608 : i32
          %c13_i32 = arith.constant 13 : i32
          func.call @mean(%29, %1, %c4608_i32_14, %c13_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %30 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %31 = aie.objectfifo.subview.access %30[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_15 = arith.constant 4608 : i32
          %c14_i32 = arith.constant 14 : i32
          func.call @mean(%31, %1, %c4608_i32_15, %c14_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %32 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %33 = aie.objectfifo.subview.access %32[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_16 = arith.constant 4608 : i32
          %c15_i32 = arith.constant 15 : i32
          func.call @mean(%33, %1, %c4608_i32_16, %c15_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %34 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %35 = aie.objectfifo.subview.access %34[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_17 = arith.constant 4608 : i32
          %c16_i32 = arith.constant 16 : i32
          func.call @mean(%35, %1, %c4608_i32_17, %c16_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %36 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %37 = aie.objectfifo.subview.access %36[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_18 = arith.constant 4608 : i32
          %c17_i32 = arith.constant 17 : i32
          func.call @mean(%37, %1, %c4608_i32_18, %c17_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %38 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %39 = aie.objectfifo.subview.access %38[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_19 = arith.constant 4608 : i32
          %c18_i32 = arith.constant 18 : i32
          func.call @mean(%39, %1, %c4608_i32_19, %c18_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %40 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %41 = aie.objectfifo.subview.access %40[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_20 = arith.constant 4608 : i32
          %c19_i32 = arith.constant 19 : i32
          func.call @mean(%41, %1, %c4608_i32_20, %c19_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %42 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %43 = aie.objectfifo.subview.access %42[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_21 = arith.constant 4608 : i32
          %c20_i32 = arith.constant 20 : i32
          func.call @mean(%43, %1, %c4608_i32_21, %c20_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %44 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %45 = aie.objectfifo.subview.access %44[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_22 = arith.constant 4608 : i32
          %c21_i32 = arith.constant 21 : i32
          func.call @mean(%45, %1, %c4608_i32_22, %c21_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %46 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %47 = aie.objectfifo.subview.access %46[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_23 = arith.constant 4608 : i32
          %c22_i32 = arith.constant 22 : i32
          func.call @mean(%47, %1, %c4608_i32_23, %c22_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %48 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %49 = aie.objectfifo.subview.access %48[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_24 = arith.constant 4608 : i32
          %c23_i32 = arith.constant 23 : i32
          func.call @mean(%49, %1, %c4608_i32_24, %c23_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %50 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %51 = aie.objectfifo.subview.access %50[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_25 = arith.constant 4608 : i32
          %c24_i32 = arith.constant 24 : i32
          func.call @mean(%51, %1, %c4608_i32_25, %c24_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %52 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %53 = aie.objectfifo.subview.access %52[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_26 = arith.constant 4608 : i32
          %c25_i32 = arith.constant 25 : i32
          func.call @mean(%53, %1, %c4608_i32_26, %c25_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %54 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %55 = aie.objectfifo.subview.access %54[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_27 = arith.constant 4608 : i32
          %c26_i32 = arith.constant 26 : i32
          func.call @mean(%55, %1, %c4608_i32_27, %c26_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %56 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %57 = aie.objectfifo.subview.access %56[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_28 = arith.constant 4608 : i32
          %c27_i32 = arith.constant 27 : i32
          func.call @mean(%57, %1, %c4608_i32_28, %c27_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %58 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %59 = aie.objectfifo.subview.access %58[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_29 = arith.constant 4608 : i32
          %c28_i32 = arith.constant 28 : i32
          func.call @mean(%59, %1, %c4608_i32_29, %c28_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %60 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %61 = aie.objectfifo.subview.access %60[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_30 = arith.constant 4608 : i32
          %c29_i32 = arith.constant 29 : i32
          func.call @mean(%61, %1, %c4608_i32_30, %c29_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %62 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %63 = aie.objectfifo.subview.access %62[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_31 = arith.constant 4608 : i32
          %c30_i32 = arith.constant 30 : i32
          func.call @mean(%63, %1, %c4608_i32_31, %c30_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          %64 = aie.objectfifo.acquire @of_sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %65 = aie.objectfifo.subview.access %64[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_32 = arith.constant 4608 : i32
          %c31_i32 = arith.constant 31 : i32
          func.call @mean(%65, %1, %c4608_i32_32, %c31_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Consume, 1)
          aie.objectfifo.release @out(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mean.o"}
    aiex.runtime_sequence @sequence(%arg0: memref<27648xbf16>, %arg1: memref<27648xbf16>, %arg2: memref<27648xbf16>, %arg3: memref<27648xbf16>, %arg4: memref<27648xbf16>) {
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 0, 0][1, 1, 1, 2][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<27648xbf16>
      aiex.npu.dma_memcpy_nd(%arg1[0, 0, 0, 0][1, 1, 1, 27648][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<27648xbf16>
      aiex.npu.dma_memcpy_nd(%arg2[0, 0, 0, 0][1, 1, 1, 18432][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<27648xbf16>
      aiex.npu.dma_memcpy_nd(%arg3[0, 0, 0, 0][1, 1, 1, 49152][0, 0, 0, 1]) {id = 4 : i64, metadata = @in3} : memref<27648xbf16>
      aiex.npu.dma_memcpy_nd(%arg4[0, 0, 0, 0][1, 1, 1, 16384][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<27648xbf16>
      aiex.npu.dma_wait {symbol = @out}
    }
  }
}

