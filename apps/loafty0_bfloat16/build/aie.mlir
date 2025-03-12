module {
  aie.device(npu1_4col) {
    func.func private @passthrough(memref<4610xbf16>, memref<4610xbf16>, i32)
    func.func private @mean(memref<4608xbf16>, memref<8xbf16>, i32, i32)
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
    aie.objectfifo @in0(%shim_noc_tile_1_0, {%tile_0_5, %tile_0_4, %tile_0_3, %tile_3_5, %tile_3_4, %tile_3_3}, 2 : i32) : !aie.objectfifo<memref<24xbf16>> 
    aie.objectfifo @in1(%shim_noc_tile_0_0, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<23050xbf16>> 
    aie.objectfifo @in2(%shim_noc_tile_3_0, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<23050xbf16>> 
    aie.objectfifo @of_in_mainA0(%mem_tile_0_1, {%tile_1_3}, 2 : i32) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo @of_in_mainB0(%mem_tile_3_1, {%tile_2_3}, 2 : i32) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo @of_in_mainA1(%mem_tile_0_1, {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo @of_in_mainB1(%mem_tile_3_1, {%tile_3_2}, 2 : i32) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo @of_in_mainA2(%mem_tile_0_1, {%tile_0_5}, 2 : i32) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo @of_in_mainB2(%mem_tile_3_1, {%tile_3_5}, 2 : i32) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo @of_in_mainA3(%mem_tile_0_1, {%tile_0_4}, 2 : i32) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo @of_in_mainB3(%mem_tile_3_1, {%tile_3_4}, 2 : i32) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo @of_in_mainA4(%mem_tile_0_1, {%tile_0_3}, 2 : i32) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo @of_in_mainB4(%mem_tile_3_1, {%tile_3_3}, 2 : i32) : !aie.objectfifo<memref<4610xbf16>> 
    aie.objectfifo.link [@in1] -> [@of_in_mainA0, @of_in_mainA1, @of_in_mainA2, @of_in_mainA3, @of_in_mainA4]([] [0, 4610, 9220, 13830, 18440])
    aie.objectfifo.link [@in2] -> [@of_in_mainB0, @of_in_mainB1, @of_in_mainB2, @of_in_mainB3, @of_in_mainB4]([] [0, 4610, 9220, 13830, 18440])
    aie.objectfifo @sub2mean(%tile_1_2, {%tile_2_2}, 2 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @out(%tile_2_2, {%shim_noc_tile_2_0}, 2 : i32) : !aie.objectfifo<memref<8xbf16>> 
    %core_1_2 = aie.core(%tile_1_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %0 = aie.objectfifo.acquire @sub2mean(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @sub2mean(Produce, 1)
        }
      }
      aie.end
    }
    %core_2_2 = aie.core(%tile_2_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c2048 = arith.constant 2048 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c2048 step %c1_1 {
          %0 = aie.objectfifo.acquire @out(Produce, 1) : !aie.objectfifosubview<memref<8xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<8xbf16>> -> memref<8xbf16>
          %2 = aie.objectfifo.acquire @sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c0_i32 = arith.constant 0 : i32
          %c288_i32 = arith.constant 288 : i32
          func.call @mean(%3, %1, %c0_i32, %c288_i32) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
          aie.objectfifo.release @sub2mean(Consume, 1)
          %4 = aie.objectfifo.acquire @sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c1_i32 = arith.constant 1 : i32
          %c288_i32_2 = arith.constant 288 : i32
          func.call @mean(%5, %1, %c1_i32, %c288_i32_2) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
          aie.objectfifo.release @sub2mean(Consume, 1)
          %6 = aie.objectfifo.acquire @sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c2_i32 = arith.constant 2 : i32
          %c288_i32_3 = arith.constant 288 : i32
          func.call @mean(%7, %1, %c2_i32, %c288_i32_3) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
          aie.objectfifo.release @sub2mean(Consume, 1)
          %8 = aie.objectfifo.acquire @sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %9 = aie.objectfifo.subview.access %8[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c3_i32 = arith.constant 3 : i32
          %c288_i32_4 = arith.constant 288 : i32
          func.call @mean(%9, %1, %c3_i32, %c288_i32_4) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
          aie.objectfifo.release @sub2mean(Consume, 1)
          %10 = aie.objectfifo.acquire @sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %11 = aie.objectfifo.subview.access %10[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c4_i32 = arith.constant 4 : i32
          %c288_i32_5 = arith.constant 288 : i32
          func.call @mean(%11, %1, %c4_i32, %c288_i32_5) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
          aie.objectfifo.release @sub2mean(Consume, 1)
          %12 = aie.objectfifo.acquire @sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %13 = aie.objectfifo.subview.access %12[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c5_i32 = arith.constant 5 : i32
          %c288_i32_6 = arith.constant 288 : i32
          func.call @mean(%13, %1, %c5_i32, %c288_i32_6) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
          aie.objectfifo.release @sub2mean(Consume, 1)
          %14 = aie.objectfifo.acquire @sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %15 = aie.objectfifo.subview.access %14[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c6_i32 = arith.constant 6 : i32
          %c288_i32_7 = arith.constant 288 : i32
          func.call @mean(%15, %1, %c6_i32, %c288_i32_7) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
          aie.objectfifo.release @sub2mean(Consume, 1)
          %16 = aie.objectfifo.acquire @sub2mean(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %17 = aie.objectfifo.subview.access %16[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %c7_i32 = arith.constant 7 : i32
          %c288_i32_8 = arith.constant 288 : i32
          func.call @mean(%17, %1, %c7_i32, %c288_i32_8) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
          aie.objectfifo.release @sub2mean(Consume, 1)
          aie.objectfifo.release @out(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mean.o"}
    aiex.runtime_sequence @sequence(%arg0: memref<23050xbf16>, %arg1: memref<23050xbf16>, %arg2: memref<23050xbf16>, %arg3: memref<23050xbf16>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 49152][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<23050xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 23050][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<23050xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 23050][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<23050xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg3[0, 0, 0, 0][1, 1, 1, 16384][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<23050xbf16>
      aiex.npu.dma_wait {symbol = @out}
    }
  }
}

