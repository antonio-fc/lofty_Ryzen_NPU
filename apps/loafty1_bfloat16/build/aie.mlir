module {
  aie.device(npu1_4col) {
    func.func private @passthrough(memref<768xbf16>, memref<768xbf16>, i32)
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
    aie.objectfifo @in0(%shim_noc_tile_0_0, {%tile_0_3, %tile_0_4, %tile_0_5, %tile_1_3, %tile_1_4, %tile_1_5}, 2 : i32) : !aie.objectfifo<memref<2xbf16>> 
    aie.objectfifo @in1(%shim_noc_tile_1_0, {%mem_tile_1_1}, 1 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @in2(%shim_noc_tile_2_0, {%mem_tile_2_1}, 1 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_in_mainA01(%mem_tile_1_1, {%tile_0_3}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainB21(%mem_tile_2_1, {%tile_2_3}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainA02(%mem_tile_1_1, {%tile_0_4}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainB22(%mem_tile_2_1, {%tile_2_4}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainA03(%mem_tile_1_1, {%tile_0_5}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainB23(%mem_tile_2_1, {%tile_2_5}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainA11(%mem_tile_1_1, {%tile_1_3}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainB31(%mem_tile_2_1, {%tile_3_3}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainA12(%mem_tile_1_1, {%tile_1_4}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainB32(%mem_tile_2_1, {%tile_3_4}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainA13(%mem_tile_1_1, {%tile_1_5}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainB33(%mem_tile_2_1, {%tile_3_5}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo.link [@in1] -> [@of_in_mainA01, @of_in_mainA02, @of_in_mainA03, @of_in_mainA11, @of_in_mainA12, @of_in_mainA13]([] [0, 768, 1536, 2304, 3072, 3840])
    aie.objectfifo.link [@in2] -> [@of_in_mainB21, @of_in_mainB22, @of_in_mainB23, @of_in_mainB31, @of_in_mainB32, @of_in_mainB33]([] [0, 768, 1536, 2304, 3072, 3840])
    aie.objectfifo @of_out_mainA01(%tile_0_3, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_out_mainB21(%tile_2_3, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_out_mainA02(%tile_0_4, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_out_mainB22(%tile_2_4, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_out_mainA03(%tile_0_5, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_out_mainB23(%tile_2_5, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_out_mainA11(%tile_1_3, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_out_mainB31(%tile_3_3, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_out_mainA12(%tile_1_4, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_out_mainB32(%tile_3_4, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_out_mainA13(%tile_1_5, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_out_mainB33(%tile_3_5, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @out1(%mem_tile_0_1, {%shim_noc_tile_0_0}, 1 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @out2(%mem_tile_3_1, {%shim_noc_tile_3_0}, 1 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo.link [@of_out_mainA01, @of_out_mainA02, @of_out_mainA03, @of_out_mainA11, @of_out_mainA12, @of_out_mainA13] -> [@out1]([0, 768, 1536, 2304, 3072, 3840] [])
    aie.objectfifo.link [@of_out_mainB21, @of_out_mainB22, @of_out_mainB23, @of_out_mainB31, @of_out_mainB32, @of_out_mainB33] -> [@out2]([0, 768, 1536, 2304, 3072, 3840] [])
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainA01(Consume, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %2 = aie.objectfifo.acquire @of_out_mainA01(Produce, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c768_i32 = arith.constant 768 : i32
        func.call @passthrough(%1, %3, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
        aie.objectfifo.release @of_out_mainA01(Produce, 1)
        aie.objectfifo.release @of_in_mainA01(Consume, 1)
      }
      aie.end
    } {link_with = "passthrough.o"}
    %core_2_3 = aie.core(%tile_2_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainB21(Consume, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %2 = aie.objectfifo.acquire @of_out_mainB21(Produce, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c768_i32 = arith.constant 768 : i32
        func.call @passthrough(%1, %3, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
        aie.objectfifo.release @of_out_mainB21(Produce, 1)
        aie.objectfifo.release @of_in_mainB21(Consume, 1)
      }
      aie.end
    } {link_with = "passthrough.o"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainA02(Consume, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %2 = aie.objectfifo.acquire @of_out_mainA02(Produce, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c768_i32 = arith.constant 768 : i32
        func.call @passthrough(%1, %3, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
        aie.objectfifo.release @of_out_mainA02(Produce, 1)
        aie.objectfifo.release @of_in_mainA02(Consume, 1)
      }
      aie.end
    } {link_with = "passthrough.o"}
    %core_2_4 = aie.core(%tile_2_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainB22(Consume, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %2 = aie.objectfifo.acquire @of_out_mainB22(Produce, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c768_i32 = arith.constant 768 : i32
        func.call @passthrough(%1, %3, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
        aie.objectfifo.release @of_out_mainB22(Produce, 1)
        aie.objectfifo.release @of_in_mainB22(Consume, 1)
      }
      aie.end
    } {link_with = "passthrough.o"}
    %core_0_5 = aie.core(%tile_0_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainA03(Consume, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %2 = aie.objectfifo.acquire @of_out_mainA03(Produce, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c768_i32 = arith.constant 768 : i32
        func.call @passthrough(%1, %3, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
        aie.objectfifo.release @of_out_mainA03(Produce, 1)
        aie.objectfifo.release @of_in_mainA03(Consume, 1)
      }
      aie.end
    } {link_with = "passthrough.o"}
    %core_2_5 = aie.core(%tile_2_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainB23(Consume, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %2 = aie.objectfifo.acquire @of_out_mainB23(Produce, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c768_i32 = arith.constant 768 : i32
        func.call @passthrough(%1, %3, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
        aie.objectfifo.release @of_out_mainB23(Produce, 1)
        aie.objectfifo.release @of_in_mainB23(Consume, 1)
      }
      aie.end
    } {link_with = "passthrough.o"}
    %core_1_3 = aie.core(%tile_1_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainA11(Consume, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %2 = aie.objectfifo.acquire @of_out_mainA11(Produce, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c768_i32 = arith.constant 768 : i32
        func.call @passthrough(%1, %3, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
        aie.objectfifo.release @of_out_mainA11(Produce, 1)
        aie.objectfifo.release @of_in_mainA11(Consume, 1)
      }
      aie.end
    } {link_with = "passthrough.o"}
    %core_3_3 = aie.core(%tile_3_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainB31(Consume, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %2 = aie.objectfifo.acquire @of_out_mainB31(Produce, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c768_i32 = arith.constant 768 : i32
        func.call @passthrough(%1, %3, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
        aie.objectfifo.release @of_out_mainB31(Produce, 1)
        aie.objectfifo.release @of_in_mainB31(Consume, 1)
      }
      aie.end
    } {link_with = "passthrough.o"}
    %core_1_4 = aie.core(%tile_1_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainA12(Consume, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %2 = aie.objectfifo.acquire @of_out_mainA12(Produce, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c768_i32 = arith.constant 768 : i32
        func.call @passthrough(%1, %3, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
        aie.objectfifo.release @of_out_mainA12(Produce, 1)
        aie.objectfifo.release @of_in_mainA12(Consume, 1)
      }
      aie.end
    } {link_with = "passthrough.o"}
    %core_3_4 = aie.core(%tile_3_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainB32(Consume, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %2 = aie.objectfifo.acquire @of_out_mainB32(Produce, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c768_i32 = arith.constant 768 : i32
        func.call @passthrough(%1, %3, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
        aie.objectfifo.release @of_out_mainB32(Produce, 1)
        aie.objectfifo.release @of_in_mainB32(Consume, 1)
      }
      aie.end
    } {link_with = "passthrough.o"}
    %core_1_5 = aie.core(%tile_1_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainA13(Consume, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %2 = aie.objectfifo.acquire @of_out_mainA13(Produce, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c768_i32 = arith.constant 768 : i32
        func.call @passthrough(%1, %3, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
        aie.objectfifo.release @of_out_mainA13(Produce, 1)
        aie.objectfifo.release @of_in_mainA13(Consume, 1)
      }
      aie.end
    } {link_with = "passthrough.o"}
    %core_3_5 = aie.core(%tile_3_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainB33(Consume, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %2 = aie.objectfifo.acquire @of_out_mainB33(Produce, 1) : !aie.objectfifosubview<memref<768xbf16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c768_i32 = arith.constant 768 : i32
        func.call @passthrough(%1, %3, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
        aie.objectfifo.release @of_out_mainB33(Produce, 1)
        aie.objectfifo.release @of_in_mainB33(Consume, 1)
      }
      aie.end
    } {link_with = "passthrough.o"}
    aiex.runtime_sequence(%arg0: memref<23040xbf16>, %arg1: memref<23040xbf16>, %arg2: memref<23040xbf16>, %arg3: memref<23040xbf16>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 2][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<23040xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 23040][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<23040xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 23040][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<23040xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg3[0, 0, 0, 0][1, 1, 1, 23040][0, 0, 0, 1]) {id = 0 : i64, metadata = @out1} : memref<23040xbf16>
      aiex.npu.dma_wait {symbol = @out1}
    }
  }
}

