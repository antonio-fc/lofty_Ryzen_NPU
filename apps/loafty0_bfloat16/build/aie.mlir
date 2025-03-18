module {
  aie.device(npu1_4col) {
    func.func private @passthrough(memref<32xbf16>, memref<32xbf16>, i32)
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
    aie.objectfifo @in0(%shim_noc_tile_1_0, {%tile_0_5, %tile_0_4, %tile_0_3, %tile_3_5, %tile_3_4, %tile_3_3}, 2 : i32) : !aie.objectfifo<memref<32xbf16>> 
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
    aie.objectfifo @test(%tile_1_3, {%tile_2_2}, 2 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @out(%tile_2_2, {%shim_noc_tile_2_0}, 2 : i32) : !aie.objectfifo<memref<32xbf16>> 
    %core_0_5 = aie.core(%tile_0_5) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main02(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c512 = arith.constant 512 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c512 step %c1_1 {
          %2 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %4 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %6 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %8 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %10 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %12 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %14 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %16 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %18 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %20 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %22 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %23 = aie.objectfifo.subview.access %22[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %24 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %25 = aie.objectfifo.subview.access %24[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %26 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %27 = aie.objectfifo.subview.access %26[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %28 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %29 = aie.objectfifo.subview.access %28[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %30 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %31 = aie.objectfifo.subview.access %30[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %32 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %33 = aie.objectfifo.subview.access %32[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %34 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %35 = aie.objectfifo.subview.access %34[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %36 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %37 = aie.objectfifo.subview.access %36[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %38 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %39 = aie.objectfifo.subview.access %38[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %40 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %41 = aie.objectfifo.subview.access %40[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %42 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %43 = aie.objectfifo.subview.access %42[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %44 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %45 = aie.objectfifo.subview.access %44[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %46 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %47 = aie.objectfifo.subview.access %46[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %48 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %49 = aie.objectfifo.subview.access %48[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %50 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %51 = aie.objectfifo.subview.access %50[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %52 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %53 = aie.objectfifo.subview.access %52[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %54 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %55 = aie.objectfifo.subview.access %54[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %56 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %57 = aie.objectfifo.subview.access %56[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %58 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %59 = aie.objectfifo.subview.access %58[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %60 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %61 = aie.objectfifo.subview.access %60[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %62 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %63 = aie.objectfifo.subview.access %62[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %64 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %65 = aie.objectfifo.subview.access %64[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          %66 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %67 = aie.objectfifo.subview.access %66[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u0(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_main02(Consume, 1)
      }
      aie.end
    }
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main03(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c512 = arith.constant 512 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c512 step %c1_1 {
          %2 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %4 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %6 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %8 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %10 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %12 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %14 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %16 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %18 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %20 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %22 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %23 = aie.objectfifo.subview.access %22[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %24 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %25 = aie.objectfifo.subview.access %24[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %26 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %27 = aie.objectfifo.subview.access %26[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %28 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %29 = aie.objectfifo.subview.access %28[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %30 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %31 = aie.objectfifo.subview.access %30[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %32 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %33 = aie.objectfifo.subview.access %32[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %34 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %35 = aie.objectfifo.subview.access %34[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %36 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %37 = aie.objectfifo.subview.access %36[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %38 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %39 = aie.objectfifo.subview.access %38[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %40 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %41 = aie.objectfifo.subview.access %40[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %42 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %43 = aie.objectfifo.subview.access %42[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %44 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %45 = aie.objectfifo.subview.access %44[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %46 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %47 = aie.objectfifo.subview.access %46[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %48 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %49 = aie.objectfifo.subview.access %48[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %50 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %51 = aie.objectfifo.subview.access %50[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %52 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %53 = aie.objectfifo.subview.access %52[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %54 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %55 = aie.objectfifo.subview.access %54[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %56 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %57 = aie.objectfifo.subview.access %56[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %58 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %59 = aie.objectfifo.subview.access %58[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %60 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %61 = aie.objectfifo.subview.access %60[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %62 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %63 = aie.objectfifo.subview.access %62[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %64 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %65 = aie.objectfifo.subview.access %64[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          %66 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %67 = aie.objectfifo.subview.access %66[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v0(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_main03(Consume, 1)
      }
      aie.end
    }
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main04(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c512 = arith.constant 512 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c512 step %c1_1 {
          %2 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %4 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %6 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %8 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %10 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %12 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %14 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %16 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %18 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %20 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %22 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %23 = aie.objectfifo.subview.access %22[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %24 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %25 = aie.objectfifo.subview.access %24[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %26 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %27 = aie.objectfifo.subview.access %26[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %28 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %29 = aie.objectfifo.subview.access %28[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %30 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %31 = aie.objectfifo.subview.access %30[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %32 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %33 = aie.objectfifo.subview.access %32[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %34 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %35 = aie.objectfifo.subview.access %34[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %36 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %37 = aie.objectfifo.subview.access %36[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %38 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %39 = aie.objectfifo.subview.access %38[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %40 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %41 = aie.objectfifo.subview.access %40[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %42 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %43 = aie.objectfifo.subview.access %42[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %44 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %45 = aie.objectfifo.subview.access %44[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %46 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %47 = aie.objectfifo.subview.access %46[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %48 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %49 = aie.objectfifo.subview.access %48[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %50 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %51 = aie.objectfifo.subview.access %50[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %52 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %53 = aie.objectfifo.subview.access %52[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %54 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %55 = aie.objectfifo.subview.access %54[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %56 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %57 = aie.objectfifo.subview.access %56[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %58 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %59 = aie.objectfifo.subview.access %58[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %60 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %61 = aie.objectfifo.subview.access %60[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %62 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %63 = aie.objectfifo.subview.access %62[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %64 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %65 = aie.objectfifo.subview.access %64[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          %66 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %67 = aie.objectfifo.subview.access %66[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w0(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_main04(Consume, 1)
      }
      aie.end
    }
    %core_3_5 = aie.core(%tile_3_5) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main12(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c512 = arith.constant 512 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c512 step %c1_1 {
          %2 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %4 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %6 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %8 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %10 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %12 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %14 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %16 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %18 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %20 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %22 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %23 = aie.objectfifo.subview.access %22[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %24 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %25 = aie.objectfifo.subview.access %24[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %26 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %27 = aie.objectfifo.subview.access %26[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %28 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %29 = aie.objectfifo.subview.access %28[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %30 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %31 = aie.objectfifo.subview.access %30[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %32 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %33 = aie.objectfifo.subview.access %32[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %34 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %35 = aie.objectfifo.subview.access %34[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %36 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %37 = aie.objectfifo.subview.access %36[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %38 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %39 = aie.objectfifo.subview.access %38[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %40 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %41 = aie.objectfifo.subview.access %40[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %42 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %43 = aie.objectfifo.subview.access %42[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %44 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %45 = aie.objectfifo.subview.access %44[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %46 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %47 = aie.objectfifo.subview.access %46[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %48 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %49 = aie.objectfifo.subview.access %48[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %50 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %51 = aie.objectfifo.subview.access %50[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %52 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %53 = aie.objectfifo.subview.access %52[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %54 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %55 = aie.objectfifo.subview.access %54[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %56 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %57 = aie.objectfifo.subview.access %56[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %58 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %59 = aie.objectfifo.subview.access %58[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %60 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %61 = aie.objectfifo.subview.access %60[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %62 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %63 = aie.objectfifo.subview.access %62[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %64 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %65 = aie.objectfifo.subview.access %64[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          %66 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %67 = aie.objectfifo.subview.access %66[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_u1(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_main12(Consume, 1)
      }
      aie.end
    }
    %core_3_4 = aie.core(%tile_3_4) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main13(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c512 = arith.constant 512 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c512 step %c1_1 {
          %2 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %4 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %6 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %8 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %10 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %12 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %14 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %16 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %18 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %20 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %22 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %23 = aie.objectfifo.subview.access %22[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %24 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %25 = aie.objectfifo.subview.access %24[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %26 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %27 = aie.objectfifo.subview.access %26[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %28 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %29 = aie.objectfifo.subview.access %28[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %30 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %31 = aie.objectfifo.subview.access %30[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %32 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %33 = aie.objectfifo.subview.access %32[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %34 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %35 = aie.objectfifo.subview.access %34[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %36 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %37 = aie.objectfifo.subview.access %36[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %38 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %39 = aie.objectfifo.subview.access %38[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %40 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %41 = aie.objectfifo.subview.access %40[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %42 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %43 = aie.objectfifo.subview.access %42[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %44 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %45 = aie.objectfifo.subview.access %44[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %46 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %47 = aie.objectfifo.subview.access %46[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %48 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %49 = aie.objectfifo.subview.access %48[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %50 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %51 = aie.objectfifo.subview.access %50[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %52 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %53 = aie.objectfifo.subview.access %52[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %54 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %55 = aie.objectfifo.subview.access %54[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %56 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %57 = aie.objectfifo.subview.access %56[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %58 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %59 = aie.objectfifo.subview.access %58[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %60 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %61 = aie.objectfifo.subview.access %60[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %62 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %63 = aie.objectfifo.subview.access %62[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %64 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %65 = aie.objectfifo.subview.access %64[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          %66 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %67 = aie.objectfifo.subview.access %66[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_v1(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_main13(Consume, 1)
      }
      aie.end
    }
    %core_3_3 = aie.core(%tile_3_3) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main14(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c512 = arith.constant 512 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c512 step %c1_1 {
          %2 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %4 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %6 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %8 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %10 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %12 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %14 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %16 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %18 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %20 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %22 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %23 = aie.objectfifo.subview.access %22[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %24 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %25 = aie.objectfifo.subview.access %24[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %26 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %27 = aie.objectfifo.subview.access %26[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %28 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %29 = aie.objectfifo.subview.access %28[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %30 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %31 = aie.objectfifo.subview.access %30[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %32 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %33 = aie.objectfifo.subview.access %32[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %34 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %35 = aie.objectfifo.subview.access %34[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %36 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %37 = aie.objectfifo.subview.access %36[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %38 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %39 = aie.objectfifo.subview.access %38[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %40 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %41 = aie.objectfifo.subview.access %40[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %42 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %43 = aie.objectfifo.subview.access %42[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %44 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %45 = aie.objectfifo.subview.access %44[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %46 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %47 = aie.objectfifo.subview.access %46[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %48 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %49 = aie.objectfifo.subview.access %48[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %50 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %51 = aie.objectfifo.subview.access %50[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %52 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %53 = aie.objectfifo.subview.access %52[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %54 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %55 = aie.objectfifo.subview.access %54[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %56 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %57 = aie.objectfifo.subview.access %56[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %58 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %59 = aie.objectfifo.subview.access %58[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %60 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %61 = aie.objectfifo.subview.access %60[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %62 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %63 = aie.objectfifo.subview.access %62[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %64 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %65 = aie.objectfifo.subview.access %64[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          %66 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %67 = aie.objectfifo.subview.access %66[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_w1(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_main14(Consume, 1)
      }
      aie.end
    }
    %core_1_5 = aie.core(%tile_1_5) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
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
          aie.objectfifo.release @of_add_uv0(Produce, 1)
          aie.objectfifo.release @of_add_u0(Consume, 1)
          aie.objectfifo.release @of_add_v0(Consume, 1)
        }
      }
      aie.end
    }
    %core_1_4 = aie.core(%tile_1_4) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
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
          aie.objectfifo.release @of_add2main0(Produce, 1)
          aie.objectfifo.release @of_add_w0(Consume, 1)
          aie.objectfifo.release @of_add_uv0(Consume, 1)
        }
      }
      aie.end
    }
    %core_2_5 = aie.core(%tile_2_5) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
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
          aie.objectfifo.release @of_add_uv1(Produce, 1)
          aie.objectfifo.release @of_add_u1(Consume, 1)
          aie.objectfifo.release @of_add_v1(Consume, 1)
        }
      }
      aie.end
    }
    %core_2_4 = aie.core(%tile_2_4) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
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
          aie.objectfifo.release @of_add2main1(Produce, 1)
          aie.objectfifo.release @of_add_w1(Consume, 1)
          aie.objectfifo.release @of_add_uv1(Consume, 1)
        }
      }
      aie.end
    }
    %core_1_3 = aie.core(%tile_1_3) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main00(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %2 = aie.objectfifo.acquire @of_add2main0(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %4 = aie.objectfifo.acquire @test(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Produce, 1)
          aie.objectfifo.release @of_add2main0(Consume, 1)
        }
        aie.objectfifo.release @of_in_main00(Consume, 1)
      }
      aie.end
    }
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main01(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %2 = aie.objectfifo.acquire @of_add2main0(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add2main0(Consume, 1)
        }
        aie.objectfifo.release @of_in_main01(Consume, 1)
      }
      aie.end
    }
    %core_2_3 = aie.core(%tile_2_3) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main10(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %2 = aie.objectfifo.acquire @of_add2main1(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add2main1(Consume, 1)
        }
        aie.objectfifo.release @of_in_main10(Consume, 1)
      }
      aie.end
    }
    %core_3_2 = aie.core(%tile_3_2) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_main11(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %2 = aie.objectfifo.acquire @of_add2main1(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add2main1(Consume, 1)
        }
        aie.objectfifo.release @of_in_main11(Consume, 1)
      }
      aie.end
    }
    %core_1_2 = aie.core(%tile_1_2) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
        }
      }
      aie.end
    }
    %core_2_2 = aie.core(%tile_2_2) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c512 = arith.constant 512 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c512 step %c1_1 {
          %0 = aie.objectfifo.acquire @out(Produce, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %2 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %4 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %6 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %8 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %10 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %12 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %14 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %16 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %18 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %19 = aie.objectfifo.subview.access %18[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %20 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %21 = aie.objectfifo.subview.access %20[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %22 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %23 = aie.objectfifo.subview.access %22[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %24 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %25 = aie.objectfifo.subview.access %24[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %26 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %27 = aie.objectfifo.subview.access %26[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %28 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %29 = aie.objectfifo.subview.access %28[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %30 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %31 = aie.objectfifo.subview.access %30[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %32 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %33 = aie.objectfifo.subview.access %32[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %34 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %35 = aie.objectfifo.subview.access %34[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %36 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %37 = aie.objectfifo.subview.access %36[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %38 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %39 = aie.objectfifo.subview.access %38[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %40 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %41 = aie.objectfifo.subview.access %40[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %42 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %43 = aie.objectfifo.subview.access %42[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %44 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %45 = aie.objectfifo.subview.access %44[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %46 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %47 = aie.objectfifo.subview.access %46[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %48 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %49 = aie.objectfifo.subview.access %48[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %50 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %51 = aie.objectfifo.subview.access %50[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %52 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %53 = aie.objectfifo.subview.access %52[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %54 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %55 = aie.objectfifo.subview.access %54[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %56 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %57 = aie.objectfifo.subview.access %56[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %58 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %59 = aie.objectfifo.subview.access %58[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %60 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %61 = aie.objectfifo.subview.access %60[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %62 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %63 = aie.objectfifo.subview.access %62[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
          %64 = aie.objectfifo.acquire @test(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %65 = aie.objectfifo.subview.access %64[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @test(Consume, 1)
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

