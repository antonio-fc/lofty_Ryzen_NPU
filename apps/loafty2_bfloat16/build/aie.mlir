module {
  aie.device(npu1_4col) {
    func.func private @passthrough(memref<4610xbf16>, memref<4610xbf16>, i32)
    func.func private @baseline_scale(memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32)
    func.func private @add_kernel(memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32)
    func.func private @main_kernel(memref<4608xbf16>, memref<4610xbf16>, memref<2304xbf16>, i32, i32)
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
    aie.objectfifo @in0(%shim_noc_tile_1_0, {%tile_0_5, %tile_0_4, %tile_0_3, %tile_3_5, %tile_3_4, %tile_3_3}, 4 : i32) : !aie.objectfifo<memref<96xbf16>> 
    aie.objectfifo @in1(%shim_noc_tile_0_0, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<23050xbf16>> 
    aie.objectfifo @in2(%shim_noc_tile_3_0, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<23050xbf16>> 
    aie.objectfifo @of_in_main00(%mem_tile_0_1, {%tile_1_3}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo @of_in_main01(%mem_tile_0_1, {%tile_0_2}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo @of_in_main02(%mem_tile_0_1, {%tile_0_5}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo @of_in_main03(%mem_tile_0_1, {%tile_0_4}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo @of_in_main04(%mem_tile_0_1, {%tile_0_3}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo.link [@in1] -> [@of_in_main00, @of_in_main01, @of_in_main02, @of_in_main03, @of_in_main04]([] [0, 4610, 9220, 13830, 18440])
    aie.objectfifo @of_in_main10(%mem_tile_3_1, {%tile_2_3}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo @of_in_main11(%mem_tile_3_1, {%tile_3_2}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo @of_in_main12(%mem_tile_3_1, {%tile_3_5}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo @of_in_main13(%mem_tile_3_1, {%tile_3_4}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo @of_in_main14(%mem_tile_3_1, {%tile_3_3}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo.link [@in2] -> [@of_in_main10, @of_in_main11, @of_in_main12, @of_in_main13, @of_in_main14]([] [0, 4610, 9220, 13830, 18440])
    aie.objectfifo @of_add_u0(%tile_0_5, {%tile_1_5}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_add_u1(%tile_3_5, {%tile_2_5}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_add_v0(%tile_0_4, {%tile_1_5}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_add_v1(%tile_3_4, {%tile_2_5}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_add_w0(%tile_0_3, {%tile_1_4}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_add_w1(%tile_3_3, {%tile_2_4}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_add_uv0(%tile_1_5, {%tile_1_4}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_add_uv1(%tile_2_5, {%tile_2_4}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_add2main0(%tile_1_4, {%tile_1_3, %tile_0_2}, [1 : i32, 1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_add2main1(%tile_2_4, {%tile_2_3, %tile_3_2}, [1 : i32, 1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_join_real0(%tile_1_3, {%mem_tile_2_1}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<2304xbf16>> 
    aie.objectfifo @of_join_real1(%tile_2_3, {%mem_tile_2_1}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<2304xbf16>> 
    aie.objectfifo @of_join_imag0(%tile_0_2, {%mem_tile_1_1}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<2304xbf16>> 
    aie.objectfifo @of_join_imag1(%tile_3_2, {%mem_tile_1_1}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<2304xbf16>> 
    aie.objectfifo @of_real2sub(%mem_tile_2_1, {%tile_1_2}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_imag2sub(%mem_tile_1_1, {%tile_1_2}, [1 : i32, 1 : i32]) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo.link [@of_join_real0, @of_join_real1] -> [@of_real2sub]([0, 2304] [])
    aie.objectfifo.link [@of_join_imag0, @of_join_imag1] -> [@of_imag2sub]([0, 2304] [])
    aie.objectfifo @of_sub2mean(%tile_1_2, {%tile_2_2}, 2 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @out(%tile_2_2, {%shim_noc_tile_2_0}, 2 : i32) : !aie.objectfifo<memref<32xbf16>> 
    %core_0_5 = aie.core(%tile_0_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main02(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c512 = arith.constant 512 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c512 step %c1_1 {
          %2 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
          %4 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          %c32_i32 = arith.constant 32 : i32
          %c0_i32 = arith.constant 0 : i32
          %c0_i32_2 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %5, %c4608_i32, %c32_i32, %c0_i32, %c0_i32_2) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %6 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_3 = arith.constant 4608 : i32
          %c32_i32_4 = arith.constant 32 : i32
          %c1_i32 = arith.constant 1 : i32
          %c0_i32_5 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %7, %c4608_i32_3, %c32_i32_4, %c1_i32, %c0_i32_5) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %8 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_6 = arith.constant 4608 : i32
          %c32_i32_7 = arith.constant 32 : i32
          %c2_i32 = arith.constant 2 : i32
          %c0_i32_8 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %9, %c4608_i32_6, %c32_i32_7, %c2_i32, %c0_i32_8) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %10 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_9 = arith.constant 4608 : i32
          %c32_i32_10 = arith.constant 32 : i32
          %c3_i32 = arith.constant 3 : i32
          %c0_i32_11 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %11, %c4608_i32_9, %c32_i32_10, %c3_i32, %c0_i32_11) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %12 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_12 = arith.constant 4608 : i32
          %c32_i32_13 = arith.constant 32 : i32
          %c4_i32 = arith.constant 4 : i32
          %c0_i32_14 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %13, %c4608_i32_12, %c32_i32_13, %c4_i32, %c0_i32_14) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %14 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_15 = arith.constant 4608 : i32
          %c32_i32_16 = arith.constant 32 : i32
          %c5_i32 = arith.constant 5 : i32
          %c0_i32_17 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %15, %c4608_i32_15, %c32_i32_16, %c5_i32, %c0_i32_17) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %16 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_18 = arith.constant 4608 : i32
          %c32_i32_19 = arith.constant 32 : i32
          %c6_i32 = arith.constant 6 : i32
          %c0_i32_20 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %17, %c4608_i32_18, %c32_i32_19, %c6_i32, %c0_i32_20) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %18 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_21 = arith.constant 4608 : i32
          %c32_i32_22 = arith.constant 32 : i32
          %c7_i32 = arith.constant 7 : i32
          %c0_i32_23 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %19, %c4608_i32_21, %c32_i32_22, %c7_i32, %c0_i32_23) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %20 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_24 = arith.constant 4608 : i32
          %c32_i32_25 = arith.constant 32 : i32
          %c8_i32 = arith.constant 8 : i32
          %c0_i32_26 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %21, %c4608_i32_24, %c32_i32_25, %c8_i32, %c0_i32_26) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %22 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %23 = aie.objectfifo.subview.access %22[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_27 = arith.constant 4608 : i32
          %c32_i32_28 = arith.constant 32 : i32
          %c9_i32 = arith.constant 9 : i32
          %c0_i32_29 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %23, %c4608_i32_27, %c32_i32_28, %c9_i32, %c0_i32_29) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %24 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %25 = aie.objectfifo.subview.access %24[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_30 = arith.constant 4608 : i32
          %c32_i32_31 = arith.constant 32 : i32
          %c10_i32 = arith.constant 10 : i32
          %c0_i32_32 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %25, %c4608_i32_30, %c32_i32_31, %c10_i32, %c0_i32_32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %26 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %27 = aie.objectfifo.subview.access %26[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_33 = arith.constant 4608 : i32
          %c32_i32_34 = arith.constant 32 : i32
          %c11_i32 = arith.constant 11 : i32
          %c0_i32_35 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %27, %c4608_i32_33, %c32_i32_34, %c11_i32, %c0_i32_35) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %28 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %29 = aie.objectfifo.subview.access %28[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_36 = arith.constant 4608 : i32
          %c32_i32_37 = arith.constant 32 : i32
          %c12_i32 = arith.constant 12 : i32
          %c0_i32_38 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %29, %c4608_i32_36, %c32_i32_37, %c12_i32, %c0_i32_38) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %30 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %31 = aie.objectfifo.subview.access %30[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_39 = arith.constant 4608 : i32
          %c32_i32_40 = arith.constant 32 : i32
          %c13_i32 = arith.constant 13 : i32
          %c0_i32_41 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %31, %c4608_i32_39, %c32_i32_40, %c13_i32, %c0_i32_41) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %32 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %33 = aie.objectfifo.subview.access %32[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_42 = arith.constant 4608 : i32
          %c32_i32_43 = arith.constant 32 : i32
          %c14_i32 = arith.constant 14 : i32
          %c0_i32_44 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %33, %c4608_i32_42, %c32_i32_43, %c14_i32, %c0_i32_44) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %34 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %35 = aie.objectfifo.subview.access %34[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_45 = arith.constant 4608 : i32
          %c32_i32_46 = arith.constant 32 : i32
          %c15_i32 = arith.constant 15 : i32
          %c0_i32_47 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %35, %c4608_i32_45, %c32_i32_46, %c15_i32, %c0_i32_47) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %36 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %37 = aie.objectfifo.subview.access %36[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_48 = arith.constant 4608 : i32
          %c32_i32_49 = arith.constant 32 : i32
          %c16_i32 = arith.constant 16 : i32
          %c0_i32_50 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %37, %c4608_i32_48, %c32_i32_49, %c16_i32, %c0_i32_50) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %38 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %39 = aie.objectfifo.subview.access %38[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_51 = arith.constant 4608 : i32
          %c32_i32_52 = arith.constant 32 : i32
          %c17_i32 = arith.constant 17 : i32
          %c0_i32_53 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %39, %c4608_i32_51, %c32_i32_52, %c17_i32, %c0_i32_53) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %40 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %41 = aie.objectfifo.subview.access %40[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_54 = arith.constant 4608 : i32
          %c32_i32_55 = arith.constant 32 : i32
          %c18_i32 = arith.constant 18 : i32
          %c0_i32_56 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %41, %c4608_i32_54, %c32_i32_55, %c18_i32, %c0_i32_56) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %42 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %43 = aie.objectfifo.subview.access %42[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_57 = arith.constant 4608 : i32
          %c32_i32_58 = arith.constant 32 : i32
          %c19_i32 = arith.constant 19 : i32
          %c0_i32_59 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %43, %c4608_i32_57, %c32_i32_58, %c19_i32, %c0_i32_59) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %44 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %45 = aie.objectfifo.subview.access %44[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_60 = arith.constant 4608 : i32
          %c32_i32_61 = arith.constant 32 : i32
          %c20_i32 = arith.constant 20 : i32
          %c0_i32_62 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %45, %c4608_i32_60, %c32_i32_61, %c20_i32, %c0_i32_62) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %46 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %47 = aie.objectfifo.subview.access %46[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_63 = arith.constant 4608 : i32
          %c32_i32_64 = arith.constant 32 : i32
          %c21_i32 = arith.constant 21 : i32
          %c0_i32_65 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %47, %c4608_i32_63, %c32_i32_64, %c21_i32, %c0_i32_65) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %48 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %49 = aie.objectfifo.subview.access %48[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_66 = arith.constant 4608 : i32
          %c32_i32_67 = arith.constant 32 : i32
          %c22_i32 = arith.constant 22 : i32
          %c0_i32_68 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %49, %c4608_i32_66, %c32_i32_67, %c22_i32, %c0_i32_68) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %50 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %51 = aie.objectfifo.subview.access %50[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_69 = arith.constant 4608 : i32
          %c32_i32_70 = arith.constant 32 : i32
          %c23_i32 = arith.constant 23 : i32
          %c0_i32_71 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %51, %c4608_i32_69, %c32_i32_70, %c23_i32, %c0_i32_71) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %52 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %53 = aie.objectfifo.subview.access %52[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_72 = arith.constant 4608 : i32
          %c32_i32_73 = arith.constant 32 : i32
          %c24_i32 = arith.constant 24 : i32
          %c0_i32_74 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %53, %c4608_i32_72, %c32_i32_73, %c24_i32, %c0_i32_74) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %54 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %55 = aie.objectfifo.subview.access %54[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_75 = arith.constant 4608 : i32
          %c32_i32_76 = arith.constant 32 : i32
          %c25_i32 = arith.constant 25 : i32
          %c0_i32_77 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %55, %c4608_i32_75, %c32_i32_76, %c25_i32, %c0_i32_77) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %56 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %57 = aie.objectfifo.subview.access %56[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_78 = arith.constant 4608 : i32
          %c32_i32_79 = arith.constant 32 : i32
          %c26_i32 = arith.constant 26 : i32
          %c0_i32_80 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %57, %c4608_i32_78, %c32_i32_79, %c26_i32, %c0_i32_80) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %58 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %59 = aie.objectfifo.subview.access %58[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_81 = arith.constant 4608 : i32
          %c32_i32_82 = arith.constant 32 : i32
          %c27_i32 = arith.constant 27 : i32
          %c0_i32_83 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %59, %c4608_i32_81, %c32_i32_82, %c27_i32, %c0_i32_83) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %60 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %61 = aie.objectfifo.subview.access %60[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_84 = arith.constant 4608 : i32
          %c32_i32_85 = arith.constant 32 : i32
          %c28_i32 = arith.constant 28 : i32
          %c0_i32_86 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %61, %c4608_i32_84, %c32_i32_85, %c28_i32, %c0_i32_86) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %62 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %63 = aie.objectfifo.subview.access %62[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_87 = arith.constant 4608 : i32
          %c32_i32_88 = arith.constant 32 : i32
          %c29_i32 = arith.constant 29 : i32
          %c0_i32_89 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %63, %c4608_i32_87, %c32_i32_88, %c29_i32, %c0_i32_89) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %64 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %65 = aie.objectfifo.subview.access %64[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_90 = arith.constant 4608 : i32
          %c32_i32_91 = arith.constant 32 : i32
          %c30_i32 = arith.constant 30 : i32
          %c0_i32_92 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %65, %c4608_i32_90, %c32_i32_91, %c30_i32, %c0_i32_92) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %66 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %67 = aie.objectfifo.subview.access %66[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_93 = arith.constant 4608 : i32
          %c32_i32_94 = arith.constant 32 : i32
          %c31_i32 = arith.constant 31 : i32
          %c0_i32_95 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %67, %c4608_i32_93, %c32_i32_94, %c31_i32, %c0_i32_95) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u0(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_main02(Consume, 1)
      }
      aie.end
    } {link_with = "scale.o"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main03(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c512 = arith.constant 512 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c512 step %c1_1 {
          %2 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
          %4 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          %c32_i32 = arith.constant 32 : i32
          %c0_i32 = arith.constant 0 : i32
          %c1_i32 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %5, %c4608_i32, %c32_i32, %c0_i32, %c1_i32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %6 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_2 = arith.constant 4608 : i32
          %c32_i32_3 = arith.constant 32 : i32
          %c1_i32_4 = arith.constant 1 : i32
          %c1_i32_5 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %7, %c4608_i32_2, %c32_i32_3, %c1_i32_4, %c1_i32_5) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %8 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_6 = arith.constant 4608 : i32
          %c32_i32_7 = arith.constant 32 : i32
          %c2_i32 = arith.constant 2 : i32
          %c1_i32_8 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %9, %c4608_i32_6, %c32_i32_7, %c2_i32, %c1_i32_8) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %10 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_9 = arith.constant 4608 : i32
          %c32_i32_10 = arith.constant 32 : i32
          %c3_i32 = arith.constant 3 : i32
          %c1_i32_11 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %11, %c4608_i32_9, %c32_i32_10, %c3_i32, %c1_i32_11) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %12 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_12 = arith.constant 4608 : i32
          %c32_i32_13 = arith.constant 32 : i32
          %c4_i32 = arith.constant 4 : i32
          %c1_i32_14 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %13, %c4608_i32_12, %c32_i32_13, %c4_i32, %c1_i32_14) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %14 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_15 = arith.constant 4608 : i32
          %c32_i32_16 = arith.constant 32 : i32
          %c5_i32 = arith.constant 5 : i32
          %c1_i32_17 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %15, %c4608_i32_15, %c32_i32_16, %c5_i32, %c1_i32_17) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %16 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_18 = arith.constant 4608 : i32
          %c32_i32_19 = arith.constant 32 : i32
          %c6_i32 = arith.constant 6 : i32
          %c1_i32_20 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %17, %c4608_i32_18, %c32_i32_19, %c6_i32, %c1_i32_20) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %18 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_21 = arith.constant 4608 : i32
          %c32_i32_22 = arith.constant 32 : i32
          %c7_i32 = arith.constant 7 : i32
          %c1_i32_23 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %19, %c4608_i32_21, %c32_i32_22, %c7_i32, %c1_i32_23) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %20 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_24 = arith.constant 4608 : i32
          %c32_i32_25 = arith.constant 32 : i32
          %c8_i32 = arith.constant 8 : i32
          %c1_i32_26 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %21, %c4608_i32_24, %c32_i32_25, %c8_i32, %c1_i32_26) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %22 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %23 = aie.objectfifo.subview.access %22[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_27 = arith.constant 4608 : i32
          %c32_i32_28 = arith.constant 32 : i32
          %c9_i32 = arith.constant 9 : i32
          %c1_i32_29 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %23, %c4608_i32_27, %c32_i32_28, %c9_i32, %c1_i32_29) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %24 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %25 = aie.objectfifo.subview.access %24[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_30 = arith.constant 4608 : i32
          %c32_i32_31 = arith.constant 32 : i32
          %c10_i32 = arith.constant 10 : i32
          %c1_i32_32 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %25, %c4608_i32_30, %c32_i32_31, %c10_i32, %c1_i32_32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %26 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %27 = aie.objectfifo.subview.access %26[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_33 = arith.constant 4608 : i32
          %c32_i32_34 = arith.constant 32 : i32
          %c11_i32 = arith.constant 11 : i32
          %c1_i32_35 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %27, %c4608_i32_33, %c32_i32_34, %c11_i32, %c1_i32_35) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %28 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %29 = aie.objectfifo.subview.access %28[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_36 = arith.constant 4608 : i32
          %c32_i32_37 = arith.constant 32 : i32
          %c12_i32 = arith.constant 12 : i32
          %c1_i32_38 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %29, %c4608_i32_36, %c32_i32_37, %c12_i32, %c1_i32_38) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %30 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %31 = aie.objectfifo.subview.access %30[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_39 = arith.constant 4608 : i32
          %c32_i32_40 = arith.constant 32 : i32
          %c13_i32 = arith.constant 13 : i32
          %c1_i32_41 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %31, %c4608_i32_39, %c32_i32_40, %c13_i32, %c1_i32_41) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %32 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %33 = aie.objectfifo.subview.access %32[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_42 = arith.constant 4608 : i32
          %c32_i32_43 = arith.constant 32 : i32
          %c14_i32 = arith.constant 14 : i32
          %c1_i32_44 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %33, %c4608_i32_42, %c32_i32_43, %c14_i32, %c1_i32_44) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %34 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %35 = aie.objectfifo.subview.access %34[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_45 = arith.constant 4608 : i32
          %c32_i32_46 = arith.constant 32 : i32
          %c15_i32 = arith.constant 15 : i32
          %c1_i32_47 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %35, %c4608_i32_45, %c32_i32_46, %c15_i32, %c1_i32_47) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %36 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %37 = aie.objectfifo.subview.access %36[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_48 = arith.constant 4608 : i32
          %c32_i32_49 = arith.constant 32 : i32
          %c16_i32 = arith.constant 16 : i32
          %c1_i32_50 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %37, %c4608_i32_48, %c32_i32_49, %c16_i32, %c1_i32_50) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %38 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %39 = aie.objectfifo.subview.access %38[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_51 = arith.constant 4608 : i32
          %c32_i32_52 = arith.constant 32 : i32
          %c17_i32 = arith.constant 17 : i32
          %c1_i32_53 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %39, %c4608_i32_51, %c32_i32_52, %c17_i32, %c1_i32_53) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %40 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %41 = aie.objectfifo.subview.access %40[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_54 = arith.constant 4608 : i32
          %c32_i32_55 = arith.constant 32 : i32
          %c18_i32 = arith.constant 18 : i32
          %c1_i32_56 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %41, %c4608_i32_54, %c32_i32_55, %c18_i32, %c1_i32_56) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %42 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %43 = aie.objectfifo.subview.access %42[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_57 = arith.constant 4608 : i32
          %c32_i32_58 = arith.constant 32 : i32
          %c19_i32 = arith.constant 19 : i32
          %c1_i32_59 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %43, %c4608_i32_57, %c32_i32_58, %c19_i32, %c1_i32_59) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %44 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %45 = aie.objectfifo.subview.access %44[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_60 = arith.constant 4608 : i32
          %c32_i32_61 = arith.constant 32 : i32
          %c20_i32 = arith.constant 20 : i32
          %c1_i32_62 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %45, %c4608_i32_60, %c32_i32_61, %c20_i32, %c1_i32_62) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %46 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %47 = aie.objectfifo.subview.access %46[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_63 = arith.constant 4608 : i32
          %c32_i32_64 = arith.constant 32 : i32
          %c21_i32 = arith.constant 21 : i32
          %c1_i32_65 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %47, %c4608_i32_63, %c32_i32_64, %c21_i32, %c1_i32_65) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %48 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %49 = aie.objectfifo.subview.access %48[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_66 = arith.constant 4608 : i32
          %c32_i32_67 = arith.constant 32 : i32
          %c22_i32 = arith.constant 22 : i32
          %c1_i32_68 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %49, %c4608_i32_66, %c32_i32_67, %c22_i32, %c1_i32_68) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %50 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %51 = aie.objectfifo.subview.access %50[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_69 = arith.constant 4608 : i32
          %c32_i32_70 = arith.constant 32 : i32
          %c23_i32 = arith.constant 23 : i32
          %c1_i32_71 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %51, %c4608_i32_69, %c32_i32_70, %c23_i32, %c1_i32_71) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %52 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %53 = aie.objectfifo.subview.access %52[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_72 = arith.constant 4608 : i32
          %c32_i32_73 = arith.constant 32 : i32
          %c24_i32 = arith.constant 24 : i32
          %c1_i32_74 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %53, %c4608_i32_72, %c32_i32_73, %c24_i32, %c1_i32_74) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %54 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %55 = aie.objectfifo.subview.access %54[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_75 = arith.constant 4608 : i32
          %c32_i32_76 = arith.constant 32 : i32
          %c25_i32 = arith.constant 25 : i32
          %c1_i32_77 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %55, %c4608_i32_75, %c32_i32_76, %c25_i32, %c1_i32_77) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %56 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %57 = aie.objectfifo.subview.access %56[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_78 = arith.constant 4608 : i32
          %c32_i32_79 = arith.constant 32 : i32
          %c26_i32 = arith.constant 26 : i32
          %c1_i32_80 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %57, %c4608_i32_78, %c32_i32_79, %c26_i32, %c1_i32_80) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %58 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %59 = aie.objectfifo.subview.access %58[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_81 = arith.constant 4608 : i32
          %c32_i32_82 = arith.constant 32 : i32
          %c27_i32 = arith.constant 27 : i32
          %c1_i32_83 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %59, %c4608_i32_81, %c32_i32_82, %c27_i32, %c1_i32_83) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %60 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %61 = aie.objectfifo.subview.access %60[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_84 = arith.constant 4608 : i32
          %c32_i32_85 = arith.constant 32 : i32
          %c28_i32 = arith.constant 28 : i32
          %c1_i32_86 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %61, %c4608_i32_84, %c32_i32_85, %c28_i32, %c1_i32_86) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %62 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %63 = aie.objectfifo.subview.access %62[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_87 = arith.constant 4608 : i32
          %c32_i32_88 = arith.constant 32 : i32
          %c29_i32 = arith.constant 29 : i32
          %c1_i32_89 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %63, %c4608_i32_87, %c32_i32_88, %c29_i32, %c1_i32_89) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %64 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %65 = aie.objectfifo.subview.access %64[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_90 = arith.constant 4608 : i32
          %c32_i32_91 = arith.constant 32 : i32
          %c30_i32 = arith.constant 30 : i32
          %c1_i32_92 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %65, %c4608_i32_90, %c32_i32_91, %c30_i32, %c1_i32_92) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %66 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %67 = aie.objectfifo.subview.access %66[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_93 = arith.constant 4608 : i32
          %c32_i32_94 = arith.constant 32 : i32
          %c31_i32 = arith.constant 31 : i32
          %c1_i32_95 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %67, %c4608_i32_93, %c32_i32_94, %c31_i32, %c1_i32_95) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v0(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_main03(Consume, 1)
      }
      aie.end
    } {link_with = "scale.o"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main04(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c512 = arith.constant 512 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c512 step %c1_1 {
          %2 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
          %4 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          %c32_i32 = arith.constant 32 : i32
          %c0_i32 = arith.constant 0 : i32
          %c2_i32 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %5, %c4608_i32, %c32_i32, %c0_i32, %c2_i32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %6 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_2 = arith.constant 4608 : i32
          %c32_i32_3 = arith.constant 32 : i32
          %c1_i32 = arith.constant 1 : i32
          %c2_i32_4 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %7, %c4608_i32_2, %c32_i32_3, %c1_i32, %c2_i32_4) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %8 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_5 = arith.constant 4608 : i32
          %c32_i32_6 = arith.constant 32 : i32
          %c2_i32_7 = arith.constant 2 : i32
          %c2_i32_8 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %9, %c4608_i32_5, %c32_i32_6, %c2_i32_7, %c2_i32_8) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %10 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_9 = arith.constant 4608 : i32
          %c32_i32_10 = arith.constant 32 : i32
          %c3_i32 = arith.constant 3 : i32
          %c2_i32_11 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %11, %c4608_i32_9, %c32_i32_10, %c3_i32, %c2_i32_11) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %12 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_12 = arith.constant 4608 : i32
          %c32_i32_13 = arith.constant 32 : i32
          %c4_i32 = arith.constant 4 : i32
          %c2_i32_14 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %13, %c4608_i32_12, %c32_i32_13, %c4_i32, %c2_i32_14) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %14 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_15 = arith.constant 4608 : i32
          %c32_i32_16 = arith.constant 32 : i32
          %c5_i32 = arith.constant 5 : i32
          %c2_i32_17 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %15, %c4608_i32_15, %c32_i32_16, %c5_i32, %c2_i32_17) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %16 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_18 = arith.constant 4608 : i32
          %c32_i32_19 = arith.constant 32 : i32
          %c6_i32 = arith.constant 6 : i32
          %c2_i32_20 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %17, %c4608_i32_18, %c32_i32_19, %c6_i32, %c2_i32_20) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %18 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_21 = arith.constant 4608 : i32
          %c32_i32_22 = arith.constant 32 : i32
          %c7_i32 = arith.constant 7 : i32
          %c2_i32_23 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %19, %c4608_i32_21, %c32_i32_22, %c7_i32, %c2_i32_23) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %20 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_24 = arith.constant 4608 : i32
          %c32_i32_25 = arith.constant 32 : i32
          %c8_i32 = arith.constant 8 : i32
          %c2_i32_26 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %21, %c4608_i32_24, %c32_i32_25, %c8_i32, %c2_i32_26) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %22 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %23 = aie.objectfifo.subview.access %22[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_27 = arith.constant 4608 : i32
          %c32_i32_28 = arith.constant 32 : i32
          %c9_i32 = arith.constant 9 : i32
          %c2_i32_29 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %23, %c4608_i32_27, %c32_i32_28, %c9_i32, %c2_i32_29) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %24 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %25 = aie.objectfifo.subview.access %24[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_30 = arith.constant 4608 : i32
          %c32_i32_31 = arith.constant 32 : i32
          %c10_i32 = arith.constant 10 : i32
          %c2_i32_32 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %25, %c4608_i32_30, %c32_i32_31, %c10_i32, %c2_i32_32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %26 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %27 = aie.objectfifo.subview.access %26[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_33 = arith.constant 4608 : i32
          %c32_i32_34 = arith.constant 32 : i32
          %c11_i32 = arith.constant 11 : i32
          %c2_i32_35 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %27, %c4608_i32_33, %c32_i32_34, %c11_i32, %c2_i32_35) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %28 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %29 = aie.objectfifo.subview.access %28[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_36 = arith.constant 4608 : i32
          %c32_i32_37 = arith.constant 32 : i32
          %c12_i32 = arith.constant 12 : i32
          %c2_i32_38 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %29, %c4608_i32_36, %c32_i32_37, %c12_i32, %c2_i32_38) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %30 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %31 = aie.objectfifo.subview.access %30[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_39 = arith.constant 4608 : i32
          %c32_i32_40 = arith.constant 32 : i32
          %c13_i32 = arith.constant 13 : i32
          %c2_i32_41 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %31, %c4608_i32_39, %c32_i32_40, %c13_i32, %c2_i32_41) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %32 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %33 = aie.objectfifo.subview.access %32[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_42 = arith.constant 4608 : i32
          %c32_i32_43 = arith.constant 32 : i32
          %c14_i32 = arith.constant 14 : i32
          %c2_i32_44 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %33, %c4608_i32_42, %c32_i32_43, %c14_i32, %c2_i32_44) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %34 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %35 = aie.objectfifo.subview.access %34[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_45 = arith.constant 4608 : i32
          %c32_i32_46 = arith.constant 32 : i32
          %c15_i32 = arith.constant 15 : i32
          %c2_i32_47 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %35, %c4608_i32_45, %c32_i32_46, %c15_i32, %c2_i32_47) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %36 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %37 = aie.objectfifo.subview.access %36[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_48 = arith.constant 4608 : i32
          %c32_i32_49 = arith.constant 32 : i32
          %c16_i32 = arith.constant 16 : i32
          %c2_i32_50 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %37, %c4608_i32_48, %c32_i32_49, %c16_i32, %c2_i32_50) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %38 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %39 = aie.objectfifo.subview.access %38[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_51 = arith.constant 4608 : i32
          %c32_i32_52 = arith.constant 32 : i32
          %c17_i32 = arith.constant 17 : i32
          %c2_i32_53 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %39, %c4608_i32_51, %c32_i32_52, %c17_i32, %c2_i32_53) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %40 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %41 = aie.objectfifo.subview.access %40[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_54 = arith.constant 4608 : i32
          %c32_i32_55 = arith.constant 32 : i32
          %c18_i32 = arith.constant 18 : i32
          %c2_i32_56 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %41, %c4608_i32_54, %c32_i32_55, %c18_i32, %c2_i32_56) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %42 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %43 = aie.objectfifo.subview.access %42[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_57 = arith.constant 4608 : i32
          %c32_i32_58 = arith.constant 32 : i32
          %c19_i32 = arith.constant 19 : i32
          %c2_i32_59 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %43, %c4608_i32_57, %c32_i32_58, %c19_i32, %c2_i32_59) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %44 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %45 = aie.objectfifo.subview.access %44[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_60 = arith.constant 4608 : i32
          %c32_i32_61 = arith.constant 32 : i32
          %c20_i32 = arith.constant 20 : i32
          %c2_i32_62 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %45, %c4608_i32_60, %c32_i32_61, %c20_i32, %c2_i32_62) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %46 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %47 = aie.objectfifo.subview.access %46[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_63 = arith.constant 4608 : i32
          %c32_i32_64 = arith.constant 32 : i32
          %c21_i32 = arith.constant 21 : i32
          %c2_i32_65 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %47, %c4608_i32_63, %c32_i32_64, %c21_i32, %c2_i32_65) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %48 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %49 = aie.objectfifo.subview.access %48[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_66 = arith.constant 4608 : i32
          %c32_i32_67 = arith.constant 32 : i32
          %c22_i32 = arith.constant 22 : i32
          %c2_i32_68 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %49, %c4608_i32_66, %c32_i32_67, %c22_i32, %c2_i32_68) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %50 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %51 = aie.objectfifo.subview.access %50[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_69 = arith.constant 4608 : i32
          %c32_i32_70 = arith.constant 32 : i32
          %c23_i32 = arith.constant 23 : i32
          %c2_i32_71 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %51, %c4608_i32_69, %c32_i32_70, %c23_i32, %c2_i32_71) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %52 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %53 = aie.objectfifo.subview.access %52[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_72 = arith.constant 4608 : i32
          %c32_i32_73 = arith.constant 32 : i32
          %c24_i32 = arith.constant 24 : i32
          %c2_i32_74 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %53, %c4608_i32_72, %c32_i32_73, %c24_i32, %c2_i32_74) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %54 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %55 = aie.objectfifo.subview.access %54[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_75 = arith.constant 4608 : i32
          %c32_i32_76 = arith.constant 32 : i32
          %c25_i32 = arith.constant 25 : i32
          %c2_i32_77 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %55, %c4608_i32_75, %c32_i32_76, %c25_i32, %c2_i32_77) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %56 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %57 = aie.objectfifo.subview.access %56[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_78 = arith.constant 4608 : i32
          %c32_i32_79 = arith.constant 32 : i32
          %c26_i32 = arith.constant 26 : i32
          %c2_i32_80 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %57, %c4608_i32_78, %c32_i32_79, %c26_i32, %c2_i32_80) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %58 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %59 = aie.objectfifo.subview.access %58[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_81 = arith.constant 4608 : i32
          %c32_i32_82 = arith.constant 32 : i32
          %c27_i32 = arith.constant 27 : i32
          %c2_i32_83 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %59, %c4608_i32_81, %c32_i32_82, %c27_i32, %c2_i32_83) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %60 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %61 = aie.objectfifo.subview.access %60[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_84 = arith.constant 4608 : i32
          %c32_i32_85 = arith.constant 32 : i32
          %c28_i32 = arith.constant 28 : i32
          %c2_i32_86 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %61, %c4608_i32_84, %c32_i32_85, %c28_i32, %c2_i32_86) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %62 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %63 = aie.objectfifo.subview.access %62[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_87 = arith.constant 4608 : i32
          %c32_i32_88 = arith.constant 32 : i32
          %c29_i32 = arith.constant 29 : i32
          %c2_i32_89 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %63, %c4608_i32_87, %c32_i32_88, %c29_i32, %c2_i32_89) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %64 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %65 = aie.objectfifo.subview.access %64[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_90 = arith.constant 4608 : i32
          %c32_i32_91 = arith.constant 32 : i32
          %c30_i32 = arith.constant 30 : i32
          %c2_i32_92 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %65, %c4608_i32_90, %c32_i32_91, %c30_i32, %c2_i32_92) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %66 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %67 = aie.objectfifo.subview.access %66[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_93 = arith.constant 4608 : i32
          %c32_i32_94 = arith.constant 32 : i32
          %c31_i32 = arith.constant 31 : i32
          %c2_i32_95 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %67, %c4608_i32_93, %c32_i32_94, %c31_i32, %c2_i32_95) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w0(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_main04(Consume, 1)
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
          %0 = aie.objectfifo.acquire @of_add_u0(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %2 = aie.objectfifo.acquire @of_add_v0(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %4 = aie.objectfifo.acquire @of_add_uv0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          func.call @add_kernel(%1, %3, %5, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
          aie.objectfifo.release @of_add_uv0(Produce, 1)
          aie.objectfifo.release @of_add_u0(Consume, 1)
          aie.objectfifo.release @of_add_v0(Consume, 1)
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
          %0 = aie.objectfifo.acquire @of_add_w0(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %2 = aie.objectfifo.acquire @of_add_uv0(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %4 = aie.objectfifo.acquire @of_add2main0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          func.call @add_kernel(%1, %3, %5, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
          aie.objectfifo.release @of_add2main0(Produce, 1)
          aie.objectfifo.release @of_add_w0(Consume, 1)
          aie.objectfifo.release @of_add_uv0(Consume, 1)
        }
      }
      aie.end
    } {link_with = "add.o"}
    %core_1_3 = aie.core(%tile_1_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main00(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %2 = aie.objectfifo.acquire @of_add2main0(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %4 = aie.objectfifo.acquire @of_join_real0(Produce, 1) : !aie.objectfifosubview<memref<2304xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<2304xbf16>> -> memref<2304xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          %c0_i32 = arith.constant 0 : i32
          func.call @main_kernel(%3, %1, %5, %c4608_i32, %c0_i32) : (memref<4608xbf16>, memref<4610xbf16>, memref<2304xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_join_real0(Produce, 1)
          aie.objectfifo.release @of_add2main0(Consume, 1)
        }
        aie.objectfifo.release @of_in_main00(Consume, 1)
      }
      aie.end
    } {link_with = "kernels.a"}
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main01(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %2 = aie.objectfifo.acquire @of_add2main0(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %4 = aie.objectfifo.acquire @of_join_imag0(Produce, 1) : !aie.objectfifosubview<memref<2304xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<2304xbf16>> -> memref<2304xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          %c1_i32 = arith.constant 1 : i32
          func.call @main_kernel(%3, %1, %5, %c4608_i32, %c1_i32) : (memref<4608xbf16>, memref<4610xbf16>, memref<2304xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_join_imag0(Produce, 1)
          aie.objectfifo.release @of_add2main0(Consume, 1)
        }
        aie.objectfifo.release @of_in_main01(Consume, 1)
      }
      aie.end
    } {link_with = "kernels.a"}
    %core_3_5 = aie.core(%tile_3_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main12(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c512 = arith.constant 512 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c512 step %c1_1 {
          %2 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
          %4 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          %c32_i32 = arith.constant 32 : i32
          %c0_i32 = arith.constant 0 : i32
          %c0_i32_2 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %5, %c4608_i32, %c32_i32, %c0_i32, %c0_i32_2) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %6 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_3 = arith.constant 4608 : i32
          %c32_i32_4 = arith.constant 32 : i32
          %c1_i32 = arith.constant 1 : i32
          %c0_i32_5 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %7, %c4608_i32_3, %c32_i32_4, %c1_i32, %c0_i32_5) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %8 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_6 = arith.constant 4608 : i32
          %c32_i32_7 = arith.constant 32 : i32
          %c2_i32 = arith.constant 2 : i32
          %c0_i32_8 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %9, %c4608_i32_6, %c32_i32_7, %c2_i32, %c0_i32_8) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %10 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_9 = arith.constant 4608 : i32
          %c32_i32_10 = arith.constant 32 : i32
          %c3_i32 = arith.constant 3 : i32
          %c0_i32_11 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %11, %c4608_i32_9, %c32_i32_10, %c3_i32, %c0_i32_11) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %12 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_12 = arith.constant 4608 : i32
          %c32_i32_13 = arith.constant 32 : i32
          %c4_i32 = arith.constant 4 : i32
          %c0_i32_14 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %13, %c4608_i32_12, %c32_i32_13, %c4_i32, %c0_i32_14) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %14 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_15 = arith.constant 4608 : i32
          %c32_i32_16 = arith.constant 32 : i32
          %c5_i32 = arith.constant 5 : i32
          %c0_i32_17 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %15, %c4608_i32_15, %c32_i32_16, %c5_i32, %c0_i32_17) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %16 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_18 = arith.constant 4608 : i32
          %c32_i32_19 = arith.constant 32 : i32
          %c6_i32 = arith.constant 6 : i32
          %c0_i32_20 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %17, %c4608_i32_18, %c32_i32_19, %c6_i32, %c0_i32_20) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %18 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_21 = arith.constant 4608 : i32
          %c32_i32_22 = arith.constant 32 : i32
          %c7_i32 = arith.constant 7 : i32
          %c0_i32_23 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %19, %c4608_i32_21, %c32_i32_22, %c7_i32, %c0_i32_23) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %20 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_24 = arith.constant 4608 : i32
          %c32_i32_25 = arith.constant 32 : i32
          %c8_i32 = arith.constant 8 : i32
          %c0_i32_26 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %21, %c4608_i32_24, %c32_i32_25, %c8_i32, %c0_i32_26) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %22 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %23 = aie.objectfifo.subview.access %22[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_27 = arith.constant 4608 : i32
          %c32_i32_28 = arith.constant 32 : i32
          %c9_i32 = arith.constant 9 : i32
          %c0_i32_29 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %23, %c4608_i32_27, %c32_i32_28, %c9_i32, %c0_i32_29) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %24 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %25 = aie.objectfifo.subview.access %24[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_30 = arith.constant 4608 : i32
          %c32_i32_31 = arith.constant 32 : i32
          %c10_i32 = arith.constant 10 : i32
          %c0_i32_32 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %25, %c4608_i32_30, %c32_i32_31, %c10_i32, %c0_i32_32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %26 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %27 = aie.objectfifo.subview.access %26[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_33 = arith.constant 4608 : i32
          %c32_i32_34 = arith.constant 32 : i32
          %c11_i32 = arith.constant 11 : i32
          %c0_i32_35 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %27, %c4608_i32_33, %c32_i32_34, %c11_i32, %c0_i32_35) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %28 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %29 = aie.objectfifo.subview.access %28[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_36 = arith.constant 4608 : i32
          %c32_i32_37 = arith.constant 32 : i32
          %c12_i32 = arith.constant 12 : i32
          %c0_i32_38 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %29, %c4608_i32_36, %c32_i32_37, %c12_i32, %c0_i32_38) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %30 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %31 = aie.objectfifo.subview.access %30[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_39 = arith.constant 4608 : i32
          %c32_i32_40 = arith.constant 32 : i32
          %c13_i32 = arith.constant 13 : i32
          %c0_i32_41 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %31, %c4608_i32_39, %c32_i32_40, %c13_i32, %c0_i32_41) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %32 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %33 = aie.objectfifo.subview.access %32[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_42 = arith.constant 4608 : i32
          %c32_i32_43 = arith.constant 32 : i32
          %c14_i32 = arith.constant 14 : i32
          %c0_i32_44 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %33, %c4608_i32_42, %c32_i32_43, %c14_i32, %c0_i32_44) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %34 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %35 = aie.objectfifo.subview.access %34[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_45 = arith.constant 4608 : i32
          %c32_i32_46 = arith.constant 32 : i32
          %c15_i32 = arith.constant 15 : i32
          %c0_i32_47 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %35, %c4608_i32_45, %c32_i32_46, %c15_i32, %c0_i32_47) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %36 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %37 = aie.objectfifo.subview.access %36[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_48 = arith.constant 4608 : i32
          %c32_i32_49 = arith.constant 32 : i32
          %c16_i32 = arith.constant 16 : i32
          %c0_i32_50 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %37, %c4608_i32_48, %c32_i32_49, %c16_i32, %c0_i32_50) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %38 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %39 = aie.objectfifo.subview.access %38[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_51 = arith.constant 4608 : i32
          %c32_i32_52 = arith.constant 32 : i32
          %c17_i32 = arith.constant 17 : i32
          %c0_i32_53 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %39, %c4608_i32_51, %c32_i32_52, %c17_i32, %c0_i32_53) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %40 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %41 = aie.objectfifo.subview.access %40[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_54 = arith.constant 4608 : i32
          %c32_i32_55 = arith.constant 32 : i32
          %c18_i32 = arith.constant 18 : i32
          %c0_i32_56 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %41, %c4608_i32_54, %c32_i32_55, %c18_i32, %c0_i32_56) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %42 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %43 = aie.objectfifo.subview.access %42[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_57 = arith.constant 4608 : i32
          %c32_i32_58 = arith.constant 32 : i32
          %c19_i32 = arith.constant 19 : i32
          %c0_i32_59 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %43, %c4608_i32_57, %c32_i32_58, %c19_i32, %c0_i32_59) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %44 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %45 = aie.objectfifo.subview.access %44[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_60 = arith.constant 4608 : i32
          %c32_i32_61 = arith.constant 32 : i32
          %c20_i32 = arith.constant 20 : i32
          %c0_i32_62 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %45, %c4608_i32_60, %c32_i32_61, %c20_i32, %c0_i32_62) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %46 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %47 = aie.objectfifo.subview.access %46[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_63 = arith.constant 4608 : i32
          %c32_i32_64 = arith.constant 32 : i32
          %c21_i32 = arith.constant 21 : i32
          %c0_i32_65 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %47, %c4608_i32_63, %c32_i32_64, %c21_i32, %c0_i32_65) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %48 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %49 = aie.objectfifo.subview.access %48[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_66 = arith.constant 4608 : i32
          %c32_i32_67 = arith.constant 32 : i32
          %c22_i32 = arith.constant 22 : i32
          %c0_i32_68 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %49, %c4608_i32_66, %c32_i32_67, %c22_i32, %c0_i32_68) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %50 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %51 = aie.objectfifo.subview.access %50[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_69 = arith.constant 4608 : i32
          %c32_i32_70 = arith.constant 32 : i32
          %c23_i32 = arith.constant 23 : i32
          %c0_i32_71 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %51, %c4608_i32_69, %c32_i32_70, %c23_i32, %c0_i32_71) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %52 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %53 = aie.objectfifo.subview.access %52[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_72 = arith.constant 4608 : i32
          %c32_i32_73 = arith.constant 32 : i32
          %c24_i32 = arith.constant 24 : i32
          %c0_i32_74 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %53, %c4608_i32_72, %c32_i32_73, %c24_i32, %c0_i32_74) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %54 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %55 = aie.objectfifo.subview.access %54[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_75 = arith.constant 4608 : i32
          %c32_i32_76 = arith.constant 32 : i32
          %c25_i32 = arith.constant 25 : i32
          %c0_i32_77 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %55, %c4608_i32_75, %c32_i32_76, %c25_i32, %c0_i32_77) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %56 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %57 = aie.objectfifo.subview.access %56[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_78 = arith.constant 4608 : i32
          %c32_i32_79 = arith.constant 32 : i32
          %c26_i32 = arith.constant 26 : i32
          %c0_i32_80 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %57, %c4608_i32_78, %c32_i32_79, %c26_i32, %c0_i32_80) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %58 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %59 = aie.objectfifo.subview.access %58[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_81 = arith.constant 4608 : i32
          %c32_i32_82 = arith.constant 32 : i32
          %c27_i32 = arith.constant 27 : i32
          %c0_i32_83 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %59, %c4608_i32_81, %c32_i32_82, %c27_i32, %c0_i32_83) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %60 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %61 = aie.objectfifo.subview.access %60[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_84 = arith.constant 4608 : i32
          %c32_i32_85 = arith.constant 32 : i32
          %c28_i32 = arith.constant 28 : i32
          %c0_i32_86 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %61, %c4608_i32_84, %c32_i32_85, %c28_i32, %c0_i32_86) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %62 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %63 = aie.objectfifo.subview.access %62[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_87 = arith.constant 4608 : i32
          %c32_i32_88 = arith.constant 32 : i32
          %c29_i32 = arith.constant 29 : i32
          %c0_i32_89 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %63, %c4608_i32_87, %c32_i32_88, %c29_i32, %c0_i32_89) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %64 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %65 = aie.objectfifo.subview.access %64[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_90 = arith.constant 4608 : i32
          %c32_i32_91 = arith.constant 32 : i32
          %c30_i32 = arith.constant 30 : i32
          %c0_i32_92 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %65, %c4608_i32_90, %c32_i32_91, %c30_i32, %c0_i32_92) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %66 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %67 = aie.objectfifo.subview.access %66[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_93 = arith.constant 4608 : i32
          %c32_i32_94 = arith.constant 32 : i32
          %c31_i32 = arith.constant 31 : i32
          %c0_i32_95 = arith.constant 0 : i32
          func.call @baseline_scale(%1, %3, %67, %c4608_i32_93, %c32_i32_94, %c31_i32, %c0_i32_95) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_u1(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_main12(Consume, 1)
      }
      aie.end
    } {link_with = "scale.o"}
    %core_3_4 = aie.core(%tile_3_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main13(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c512 = arith.constant 512 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c512 step %c1_1 {
          %2 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
          %4 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          %c32_i32 = arith.constant 32 : i32
          %c0_i32 = arith.constant 0 : i32
          %c1_i32 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %5, %c4608_i32, %c32_i32, %c0_i32, %c1_i32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %6 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_2 = arith.constant 4608 : i32
          %c32_i32_3 = arith.constant 32 : i32
          %c1_i32_4 = arith.constant 1 : i32
          %c1_i32_5 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %7, %c4608_i32_2, %c32_i32_3, %c1_i32_4, %c1_i32_5) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %8 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_6 = arith.constant 4608 : i32
          %c32_i32_7 = arith.constant 32 : i32
          %c2_i32 = arith.constant 2 : i32
          %c1_i32_8 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %9, %c4608_i32_6, %c32_i32_7, %c2_i32, %c1_i32_8) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %10 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_9 = arith.constant 4608 : i32
          %c32_i32_10 = arith.constant 32 : i32
          %c3_i32 = arith.constant 3 : i32
          %c1_i32_11 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %11, %c4608_i32_9, %c32_i32_10, %c3_i32, %c1_i32_11) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %12 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_12 = arith.constant 4608 : i32
          %c32_i32_13 = arith.constant 32 : i32
          %c4_i32 = arith.constant 4 : i32
          %c1_i32_14 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %13, %c4608_i32_12, %c32_i32_13, %c4_i32, %c1_i32_14) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %14 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_15 = arith.constant 4608 : i32
          %c32_i32_16 = arith.constant 32 : i32
          %c5_i32 = arith.constant 5 : i32
          %c1_i32_17 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %15, %c4608_i32_15, %c32_i32_16, %c5_i32, %c1_i32_17) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %16 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_18 = arith.constant 4608 : i32
          %c32_i32_19 = arith.constant 32 : i32
          %c6_i32 = arith.constant 6 : i32
          %c1_i32_20 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %17, %c4608_i32_18, %c32_i32_19, %c6_i32, %c1_i32_20) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %18 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_21 = arith.constant 4608 : i32
          %c32_i32_22 = arith.constant 32 : i32
          %c7_i32 = arith.constant 7 : i32
          %c1_i32_23 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %19, %c4608_i32_21, %c32_i32_22, %c7_i32, %c1_i32_23) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %20 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_24 = arith.constant 4608 : i32
          %c32_i32_25 = arith.constant 32 : i32
          %c8_i32 = arith.constant 8 : i32
          %c1_i32_26 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %21, %c4608_i32_24, %c32_i32_25, %c8_i32, %c1_i32_26) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %22 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %23 = aie.objectfifo.subview.access %22[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_27 = arith.constant 4608 : i32
          %c32_i32_28 = arith.constant 32 : i32
          %c9_i32 = arith.constant 9 : i32
          %c1_i32_29 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %23, %c4608_i32_27, %c32_i32_28, %c9_i32, %c1_i32_29) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %24 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %25 = aie.objectfifo.subview.access %24[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_30 = arith.constant 4608 : i32
          %c32_i32_31 = arith.constant 32 : i32
          %c10_i32 = arith.constant 10 : i32
          %c1_i32_32 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %25, %c4608_i32_30, %c32_i32_31, %c10_i32, %c1_i32_32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %26 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %27 = aie.objectfifo.subview.access %26[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_33 = arith.constant 4608 : i32
          %c32_i32_34 = arith.constant 32 : i32
          %c11_i32 = arith.constant 11 : i32
          %c1_i32_35 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %27, %c4608_i32_33, %c32_i32_34, %c11_i32, %c1_i32_35) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %28 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %29 = aie.objectfifo.subview.access %28[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_36 = arith.constant 4608 : i32
          %c32_i32_37 = arith.constant 32 : i32
          %c12_i32 = arith.constant 12 : i32
          %c1_i32_38 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %29, %c4608_i32_36, %c32_i32_37, %c12_i32, %c1_i32_38) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %30 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %31 = aie.objectfifo.subview.access %30[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_39 = arith.constant 4608 : i32
          %c32_i32_40 = arith.constant 32 : i32
          %c13_i32 = arith.constant 13 : i32
          %c1_i32_41 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %31, %c4608_i32_39, %c32_i32_40, %c13_i32, %c1_i32_41) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %32 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %33 = aie.objectfifo.subview.access %32[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_42 = arith.constant 4608 : i32
          %c32_i32_43 = arith.constant 32 : i32
          %c14_i32 = arith.constant 14 : i32
          %c1_i32_44 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %33, %c4608_i32_42, %c32_i32_43, %c14_i32, %c1_i32_44) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %34 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %35 = aie.objectfifo.subview.access %34[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_45 = arith.constant 4608 : i32
          %c32_i32_46 = arith.constant 32 : i32
          %c15_i32 = arith.constant 15 : i32
          %c1_i32_47 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %35, %c4608_i32_45, %c32_i32_46, %c15_i32, %c1_i32_47) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %36 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %37 = aie.objectfifo.subview.access %36[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_48 = arith.constant 4608 : i32
          %c32_i32_49 = arith.constant 32 : i32
          %c16_i32 = arith.constant 16 : i32
          %c1_i32_50 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %37, %c4608_i32_48, %c32_i32_49, %c16_i32, %c1_i32_50) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %38 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %39 = aie.objectfifo.subview.access %38[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_51 = arith.constant 4608 : i32
          %c32_i32_52 = arith.constant 32 : i32
          %c17_i32 = arith.constant 17 : i32
          %c1_i32_53 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %39, %c4608_i32_51, %c32_i32_52, %c17_i32, %c1_i32_53) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %40 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %41 = aie.objectfifo.subview.access %40[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_54 = arith.constant 4608 : i32
          %c32_i32_55 = arith.constant 32 : i32
          %c18_i32 = arith.constant 18 : i32
          %c1_i32_56 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %41, %c4608_i32_54, %c32_i32_55, %c18_i32, %c1_i32_56) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %42 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %43 = aie.objectfifo.subview.access %42[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_57 = arith.constant 4608 : i32
          %c32_i32_58 = arith.constant 32 : i32
          %c19_i32 = arith.constant 19 : i32
          %c1_i32_59 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %43, %c4608_i32_57, %c32_i32_58, %c19_i32, %c1_i32_59) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %44 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %45 = aie.objectfifo.subview.access %44[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_60 = arith.constant 4608 : i32
          %c32_i32_61 = arith.constant 32 : i32
          %c20_i32 = arith.constant 20 : i32
          %c1_i32_62 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %45, %c4608_i32_60, %c32_i32_61, %c20_i32, %c1_i32_62) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %46 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %47 = aie.objectfifo.subview.access %46[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_63 = arith.constant 4608 : i32
          %c32_i32_64 = arith.constant 32 : i32
          %c21_i32 = arith.constant 21 : i32
          %c1_i32_65 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %47, %c4608_i32_63, %c32_i32_64, %c21_i32, %c1_i32_65) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %48 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %49 = aie.objectfifo.subview.access %48[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_66 = arith.constant 4608 : i32
          %c32_i32_67 = arith.constant 32 : i32
          %c22_i32 = arith.constant 22 : i32
          %c1_i32_68 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %49, %c4608_i32_66, %c32_i32_67, %c22_i32, %c1_i32_68) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %50 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %51 = aie.objectfifo.subview.access %50[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_69 = arith.constant 4608 : i32
          %c32_i32_70 = arith.constant 32 : i32
          %c23_i32 = arith.constant 23 : i32
          %c1_i32_71 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %51, %c4608_i32_69, %c32_i32_70, %c23_i32, %c1_i32_71) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %52 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %53 = aie.objectfifo.subview.access %52[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_72 = arith.constant 4608 : i32
          %c32_i32_73 = arith.constant 32 : i32
          %c24_i32 = arith.constant 24 : i32
          %c1_i32_74 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %53, %c4608_i32_72, %c32_i32_73, %c24_i32, %c1_i32_74) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %54 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %55 = aie.objectfifo.subview.access %54[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_75 = arith.constant 4608 : i32
          %c32_i32_76 = arith.constant 32 : i32
          %c25_i32 = arith.constant 25 : i32
          %c1_i32_77 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %55, %c4608_i32_75, %c32_i32_76, %c25_i32, %c1_i32_77) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %56 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %57 = aie.objectfifo.subview.access %56[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_78 = arith.constant 4608 : i32
          %c32_i32_79 = arith.constant 32 : i32
          %c26_i32 = arith.constant 26 : i32
          %c1_i32_80 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %57, %c4608_i32_78, %c32_i32_79, %c26_i32, %c1_i32_80) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %58 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %59 = aie.objectfifo.subview.access %58[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_81 = arith.constant 4608 : i32
          %c32_i32_82 = arith.constant 32 : i32
          %c27_i32 = arith.constant 27 : i32
          %c1_i32_83 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %59, %c4608_i32_81, %c32_i32_82, %c27_i32, %c1_i32_83) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %60 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %61 = aie.objectfifo.subview.access %60[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_84 = arith.constant 4608 : i32
          %c32_i32_85 = arith.constant 32 : i32
          %c28_i32 = arith.constant 28 : i32
          %c1_i32_86 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %61, %c4608_i32_84, %c32_i32_85, %c28_i32, %c1_i32_86) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %62 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %63 = aie.objectfifo.subview.access %62[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_87 = arith.constant 4608 : i32
          %c32_i32_88 = arith.constant 32 : i32
          %c29_i32 = arith.constant 29 : i32
          %c1_i32_89 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %63, %c4608_i32_87, %c32_i32_88, %c29_i32, %c1_i32_89) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %64 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %65 = aie.objectfifo.subview.access %64[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_90 = arith.constant 4608 : i32
          %c32_i32_91 = arith.constant 32 : i32
          %c30_i32 = arith.constant 30 : i32
          %c1_i32_92 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %65, %c4608_i32_90, %c32_i32_91, %c30_i32, %c1_i32_92) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %66 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %67 = aie.objectfifo.subview.access %66[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_93 = arith.constant 4608 : i32
          %c32_i32_94 = arith.constant 32 : i32
          %c31_i32 = arith.constant 31 : i32
          %c1_i32_95 = arith.constant 1 : i32
          func.call @baseline_scale(%1, %3, %67, %c4608_i32_93, %c32_i32_94, %c31_i32, %c1_i32_95) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_v1(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_main13(Consume, 1)
      }
      aie.end
    } {link_with = "scale.o"}
    %core_3_3 = aie.core(%tile_3_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main14(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c512 = arith.constant 512 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c512 step %c1_1 {
          %2 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
          %4 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          %c32_i32 = arith.constant 32 : i32
          %c0_i32 = arith.constant 0 : i32
          %c2_i32 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %5, %c4608_i32, %c32_i32, %c0_i32, %c2_i32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %6 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_2 = arith.constant 4608 : i32
          %c32_i32_3 = arith.constant 32 : i32
          %c1_i32 = arith.constant 1 : i32
          %c2_i32_4 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %7, %c4608_i32_2, %c32_i32_3, %c1_i32, %c2_i32_4) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %8 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_5 = arith.constant 4608 : i32
          %c32_i32_6 = arith.constant 32 : i32
          %c2_i32_7 = arith.constant 2 : i32
          %c2_i32_8 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %9, %c4608_i32_5, %c32_i32_6, %c2_i32_7, %c2_i32_8) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %10 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_9 = arith.constant 4608 : i32
          %c32_i32_10 = arith.constant 32 : i32
          %c3_i32 = arith.constant 3 : i32
          %c2_i32_11 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %11, %c4608_i32_9, %c32_i32_10, %c3_i32, %c2_i32_11) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %12 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_12 = arith.constant 4608 : i32
          %c32_i32_13 = arith.constant 32 : i32
          %c4_i32 = arith.constant 4 : i32
          %c2_i32_14 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %13, %c4608_i32_12, %c32_i32_13, %c4_i32, %c2_i32_14) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %14 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_15 = arith.constant 4608 : i32
          %c32_i32_16 = arith.constant 32 : i32
          %c5_i32 = arith.constant 5 : i32
          %c2_i32_17 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %15, %c4608_i32_15, %c32_i32_16, %c5_i32, %c2_i32_17) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %16 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_18 = arith.constant 4608 : i32
          %c32_i32_19 = arith.constant 32 : i32
          %c6_i32 = arith.constant 6 : i32
          %c2_i32_20 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %17, %c4608_i32_18, %c32_i32_19, %c6_i32, %c2_i32_20) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %18 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_21 = arith.constant 4608 : i32
          %c32_i32_22 = arith.constant 32 : i32
          %c7_i32 = arith.constant 7 : i32
          %c2_i32_23 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %19, %c4608_i32_21, %c32_i32_22, %c7_i32, %c2_i32_23) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %20 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_24 = arith.constant 4608 : i32
          %c32_i32_25 = arith.constant 32 : i32
          %c8_i32 = arith.constant 8 : i32
          %c2_i32_26 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %21, %c4608_i32_24, %c32_i32_25, %c8_i32, %c2_i32_26) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %22 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %23 = aie.objectfifo.subview.access %22[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_27 = arith.constant 4608 : i32
          %c32_i32_28 = arith.constant 32 : i32
          %c9_i32 = arith.constant 9 : i32
          %c2_i32_29 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %23, %c4608_i32_27, %c32_i32_28, %c9_i32, %c2_i32_29) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %24 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %25 = aie.objectfifo.subview.access %24[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_30 = arith.constant 4608 : i32
          %c32_i32_31 = arith.constant 32 : i32
          %c10_i32 = arith.constant 10 : i32
          %c2_i32_32 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %25, %c4608_i32_30, %c32_i32_31, %c10_i32, %c2_i32_32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %26 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %27 = aie.objectfifo.subview.access %26[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_33 = arith.constant 4608 : i32
          %c32_i32_34 = arith.constant 32 : i32
          %c11_i32 = arith.constant 11 : i32
          %c2_i32_35 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %27, %c4608_i32_33, %c32_i32_34, %c11_i32, %c2_i32_35) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %28 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %29 = aie.objectfifo.subview.access %28[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_36 = arith.constant 4608 : i32
          %c32_i32_37 = arith.constant 32 : i32
          %c12_i32 = arith.constant 12 : i32
          %c2_i32_38 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %29, %c4608_i32_36, %c32_i32_37, %c12_i32, %c2_i32_38) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %30 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %31 = aie.objectfifo.subview.access %30[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_39 = arith.constant 4608 : i32
          %c32_i32_40 = arith.constant 32 : i32
          %c13_i32 = arith.constant 13 : i32
          %c2_i32_41 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %31, %c4608_i32_39, %c32_i32_40, %c13_i32, %c2_i32_41) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %32 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %33 = aie.objectfifo.subview.access %32[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_42 = arith.constant 4608 : i32
          %c32_i32_43 = arith.constant 32 : i32
          %c14_i32 = arith.constant 14 : i32
          %c2_i32_44 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %33, %c4608_i32_42, %c32_i32_43, %c14_i32, %c2_i32_44) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %34 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %35 = aie.objectfifo.subview.access %34[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_45 = arith.constant 4608 : i32
          %c32_i32_46 = arith.constant 32 : i32
          %c15_i32 = arith.constant 15 : i32
          %c2_i32_47 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %35, %c4608_i32_45, %c32_i32_46, %c15_i32, %c2_i32_47) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %36 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %37 = aie.objectfifo.subview.access %36[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_48 = arith.constant 4608 : i32
          %c32_i32_49 = arith.constant 32 : i32
          %c16_i32 = arith.constant 16 : i32
          %c2_i32_50 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %37, %c4608_i32_48, %c32_i32_49, %c16_i32, %c2_i32_50) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %38 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %39 = aie.objectfifo.subview.access %38[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_51 = arith.constant 4608 : i32
          %c32_i32_52 = arith.constant 32 : i32
          %c17_i32 = arith.constant 17 : i32
          %c2_i32_53 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %39, %c4608_i32_51, %c32_i32_52, %c17_i32, %c2_i32_53) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %40 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %41 = aie.objectfifo.subview.access %40[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_54 = arith.constant 4608 : i32
          %c32_i32_55 = arith.constant 32 : i32
          %c18_i32 = arith.constant 18 : i32
          %c2_i32_56 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %41, %c4608_i32_54, %c32_i32_55, %c18_i32, %c2_i32_56) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %42 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %43 = aie.objectfifo.subview.access %42[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_57 = arith.constant 4608 : i32
          %c32_i32_58 = arith.constant 32 : i32
          %c19_i32 = arith.constant 19 : i32
          %c2_i32_59 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %43, %c4608_i32_57, %c32_i32_58, %c19_i32, %c2_i32_59) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %44 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %45 = aie.objectfifo.subview.access %44[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_60 = arith.constant 4608 : i32
          %c32_i32_61 = arith.constant 32 : i32
          %c20_i32 = arith.constant 20 : i32
          %c2_i32_62 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %45, %c4608_i32_60, %c32_i32_61, %c20_i32, %c2_i32_62) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %46 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %47 = aie.objectfifo.subview.access %46[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_63 = arith.constant 4608 : i32
          %c32_i32_64 = arith.constant 32 : i32
          %c21_i32 = arith.constant 21 : i32
          %c2_i32_65 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %47, %c4608_i32_63, %c32_i32_64, %c21_i32, %c2_i32_65) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %48 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %49 = aie.objectfifo.subview.access %48[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_66 = arith.constant 4608 : i32
          %c32_i32_67 = arith.constant 32 : i32
          %c22_i32 = arith.constant 22 : i32
          %c2_i32_68 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %49, %c4608_i32_66, %c32_i32_67, %c22_i32, %c2_i32_68) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %50 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %51 = aie.objectfifo.subview.access %50[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_69 = arith.constant 4608 : i32
          %c32_i32_70 = arith.constant 32 : i32
          %c23_i32 = arith.constant 23 : i32
          %c2_i32_71 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %51, %c4608_i32_69, %c32_i32_70, %c23_i32, %c2_i32_71) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %52 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %53 = aie.objectfifo.subview.access %52[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_72 = arith.constant 4608 : i32
          %c32_i32_73 = arith.constant 32 : i32
          %c24_i32 = arith.constant 24 : i32
          %c2_i32_74 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %53, %c4608_i32_72, %c32_i32_73, %c24_i32, %c2_i32_74) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %54 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %55 = aie.objectfifo.subview.access %54[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_75 = arith.constant 4608 : i32
          %c32_i32_76 = arith.constant 32 : i32
          %c25_i32 = arith.constant 25 : i32
          %c2_i32_77 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %55, %c4608_i32_75, %c32_i32_76, %c25_i32, %c2_i32_77) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %56 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %57 = aie.objectfifo.subview.access %56[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_78 = arith.constant 4608 : i32
          %c32_i32_79 = arith.constant 32 : i32
          %c26_i32 = arith.constant 26 : i32
          %c2_i32_80 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %57, %c4608_i32_78, %c32_i32_79, %c26_i32, %c2_i32_80) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %58 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %59 = aie.objectfifo.subview.access %58[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_81 = arith.constant 4608 : i32
          %c32_i32_82 = arith.constant 32 : i32
          %c27_i32 = arith.constant 27 : i32
          %c2_i32_83 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %59, %c4608_i32_81, %c32_i32_82, %c27_i32, %c2_i32_83) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %60 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %61 = aie.objectfifo.subview.access %60[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_84 = arith.constant 4608 : i32
          %c32_i32_85 = arith.constant 32 : i32
          %c28_i32 = arith.constant 28 : i32
          %c2_i32_86 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %61, %c4608_i32_84, %c32_i32_85, %c28_i32, %c2_i32_86) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %62 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %63 = aie.objectfifo.subview.access %62[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_87 = arith.constant 4608 : i32
          %c32_i32_88 = arith.constant 32 : i32
          %c29_i32 = arith.constant 29 : i32
          %c2_i32_89 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %63, %c4608_i32_87, %c32_i32_88, %c29_i32, %c2_i32_89) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %64 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %65 = aie.objectfifo.subview.access %64[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_90 = arith.constant 4608 : i32
          %c32_i32_91 = arith.constant 32 : i32
          %c30_i32 = arith.constant 30 : i32
          %c2_i32_92 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %65, %c4608_i32_90, %c32_i32_91, %c30_i32, %c2_i32_92) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %66 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %67 = aie.objectfifo.subview.access %66[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32_93 = arith.constant 4608 : i32
          %c32_i32_94 = arith.constant 32 : i32
          %c31_i32 = arith.constant 31 : i32
          %c2_i32_95 = arith.constant 2 : i32
          func.call @baseline_scale(%1, %3, %67, %c4608_i32_93, %c32_i32_94, %c31_i32, %c2_i32_95) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
          aie.objectfifo.release @of_add_w1(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_main14(Consume, 1)
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
          %0 = aie.objectfifo.acquire @of_add_u1(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %2 = aie.objectfifo.acquire @of_add_v1(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %4 = aie.objectfifo.acquire @of_add_uv1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          func.call @add_kernel(%1, %3, %5, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
          aie.objectfifo.release @of_add_uv1(Produce, 1)
          aie.objectfifo.release @of_add_u1(Consume, 1)
          aie.objectfifo.release @of_add_v1(Consume, 1)
        }
      }
      aie.end
    } {link_with = "add.o"}
    %core_2_4 = aie.core(%tile_2_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %0 = aie.objectfifo.acquire @of_add_w1(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %2 = aie.objectfifo.acquire @of_add_uv1(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %4 = aie.objectfifo.acquire @of_add2main1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          func.call @add_kernel(%1, %3, %5, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
          aie.objectfifo.release @of_add2main1(Produce, 1)
          aie.objectfifo.release @of_add_w1(Consume, 1)
          aie.objectfifo.release @of_add_uv1(Consume, 1)
        }
      }
      aie.end
    } {link_with = "add.o"}
    %core_2_3 = aie.core(%tile_2_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main10(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %2 = aie.objectfifo.acquire @of_add2main1(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %4 = aie.objectfifo.acquire @of_join_real1(Produce, 1) : !aie.objectfifosubview<memref<2304xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<2304xbf16>> -> memref<2304xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          %c0_i32 = arith.constant 0 : i32
          func.call @main_kernel(%3, %1, %5, %c4608_i32, %c0_i32) : (memref<4608xbf16>, memref<4610xbf16>, memref<2304xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_join_real1(Produce, 1)
          aie.objectfifo.release @of_add2main1(Consume, 1)
        }
        aie.objectfifo.release @of_in_main10(Consume, 1)
      }
      aie.end
    } {link_with = "kernels.a"}
    %core_3_2 = aie.core(%tile_3_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main11(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %2 = aie.objectfifo.acquire @of_add2main1(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %4 = aie.objectfifo.acquire @of_join_imag1(Produce, 1) : !aie.objectfifosubview<memref<2304xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<2304xbf16>> -> memref<2304xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          %c1_i32 = arith.constant 1 : i32
          func.call @main_kernel(%3, %1, %5, %c4608_i32, %c1_i32) : (memref<4608xbf16>, memref<4610xbf16>, memref<2304xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_join_imag1(Produce, 1)
          aie.objectfifo.release @of_add2main1(Consume, 1)
        }
        aie.objectfifo.release @of_in_main11(Consume, 1)
      }
      aie.end
    } {link_with = "kernels.a"}
    %core_1_2 = aie.core(%tile_1_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %0 = aie.objectfifo.acquire @of_real2sub(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %2 = aie.objectfifo.acquire @of_imag2sub(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %4 = aie.objectfifo.acquire @of_sub2mean(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4608_i32 = arith.constant 4608 : i32
          func.call @sub_kernel(%1, %3, %5, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
          aie.objectfifo.release @of_sub2mean(Produce, 1)
          aie.objectfifo.release @of_real2sub(Consume, 1)
          aie.objectfifo.release @of_imag2sub(Consume, 1)
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
    aiex.runtime_sequence @sequence(%arg0: memref<23050xbf16>, %arg1: memref<23050xbf16>, %arg2: memref<23050xbf16>, %arg3: memref<23050xbf16>) {
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 0, 0][1, 1, 1, 49152][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<23050xbf16>
      aiex.npu.dma_memcpy_nd(%arg1[0, 0, 0, 0][1, 1, 1, 23050][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<23050xbf16>
      aiex.npu.dma_memcpy_nd(%arg2[0, 0, 0, 0][1, 1, 1, 23050][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<23050xbf16>
      aiex.npu.dma_memcpy_nd(%arg3[0, 0, 0, 0][1, 1, 1, 16384][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<23050xbf16>
      aiex.npu.dma_wait {symbol = @out}
    }
  }
}

