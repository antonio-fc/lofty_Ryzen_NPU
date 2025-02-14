module {
  aie.device(npu1_4col) {
    func.func private @passthrough(memref<768xbf16>, memref<768xbf16>, bf16)
    %shim_noc_tile_0_0 = aie.tile(0, 0)
    %mem_tile_0_1 = aie.tile(0, 1)
    %shim_noc_tile_1_0 = aie.tile(1, 0)
    %mem_tile_1_1 = aie.tile(1, 1)
    %tile_2_2 = aie.tile(2, 2)
    %tile_2_3 = aie.tile(2, 3)
    %tile_2_4 = aie.tile(2, 4)
    %tile_3_2 = aie.tile(3, 2)
    %tile_3_3 = aie.tile(3, 3)
    %tile_3_4 = aie.tile(3, 4)
    aie.objectfifo @inA(%shim_noc_tile_0_0, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @memA0(%mem_tile_0_1, {%tile_2_2}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @memA1(%mem_tile_0_1, {%tile_2_3}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @memA2(%mem_tile_0_1, {%tile_2_4}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @memA3(%mem_tile_0_1, {%tile_3_2}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @memA4(%mem_tile_0_1, {%tile_3_3}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @memA5(%mem_tile_0_1, {%tile_3_4}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo.link [@inA] -> [@memA0, @memA1, @memA2, @memA3, @memA4, @memA5]([] [0, 768, 1536, 2304, 3072, 3840])
    aie.objectfifo @memC0(%tile_2_2, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @memC1(%tile_2_3, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @memC2(%tile_2_4, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @memC3(%tile_3_2, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @memC4(%tile_3_3, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @memC5(%tile_3_4, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @outC(%mem_tile_1_1, {%shim_noc_tile_1_0}, 2 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo.link [@memC0, @memC1, @memC2, @memC3, @memC4, @memC5] -> [@outC]([0, 768, 1536, 2304, 3072, 3840] [])
    %core_2_2 = aie.core(%tile_2_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c5 = arith.constant 5 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c5 step %c1_1 {
          %0 = aie.objectfifo.acquire @memC0(Produce, 1) : !aie.objectfifosubview<memref<768xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
          %2 = aie.objectfifo.acquire @memA0(Consume, 1) : !aie.objectfifosubview<memref<768xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
          %c0_2 = arith.constant 0 : index
          %c768 = arith.constant 768 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c768 step %c1_3 {
            %4 = memref.load %3[%arg2] : memref<768xbf16>
            memref.store %4, %1[%arg2] : memref<768xbf16>
          }
          aie.objectfifo.release @memA0(Consume, 1)
          aie.objectfifo.release @memC0(Produce, 1)
        }
      }
      aie.end
    } {link_with = "passthrough.o"}
    %core_2_3 = aie.core(%tile_2_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c5 = arith.constant 5 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c5 step %c1_1 {
          %0 = aie.objectfifo.acquire @memC1(Produce, 1) : !aie.objectfifosubview<memref<768xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
          %2 = aie.objectfifo.acquire @memA1(Consume, 1) : !aie.objectfifosubview<memref<768xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
          %c0_2 = arith.constant 0 : index
          %c768 = arith.constant 768 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c768 step %c1_3 {
            %4 = memref.load %3[%arg2] : memref<768xbf16>
            memref.store %4, %1[%arg2] : memref<768xbf16>
          }
          aie.objectfifo.release @memA1(Consume, 1)
          aie.objectfifo.release @memC1(Produce, 1)
        }
      }
      aie.end
    } {link_with = "passthrough.o"}
    %core_2_4 = aie.core(%tile_2_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c5 = arith.constant 5 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c5 step %c1_1 {
          %0 = aie.objectfifo.acquire @memC2(Produce, 1) : !aie.objectfifosubview<memref<768xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
          %2 = aie.objectfifo.acquire @memA2(Consume, 1) : !aie.objectfifosubview<memref<768xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
          %c0_2 = arith.constant 0 : index
          %c768 = arith.constant 768 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c768 step %c1_3 {
            %4 = memref.load %3[%arg2] : memref<768xbf16>
            memref.store %4, %1[%arg2] : memref<768xbf16>
          }
          aie.objectfifo.release @memA2(Consume, 1)
          aie.objectfifo.release @memC2(Produce, 1)
        }
      }
      aie.end
    } {link_with = "passthrough.o"}
    %core_3_2 = aie.core(%tile_3_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c5 = arith.constant 5 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c5 step %c1_1 {
          %0 = aie.objectfifo.acquire @memC3(Produce, 1) : !aie.objectfifosubview<memref<768xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
          %2 = aie.objectfifo.acquire @memA3(Consume, 1) : !aie.objectfifosubview<memref<768xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
          %c0_2 = arith.constant 0 : index
          %c768 = arith.constant 768 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c768 step %c1_3 {
            %4 = memref.load %3[%arg2] : memref<768xbf16>
            memref.store %4, %1[%arg2] : memref<768xbf16>
          }
          aie.objectfifo.release @memA3(Consume, 1)
          aie.objectfifo.release @memC3(Produce, 1)
        }
      }
      aie.end
    } {link_with = "passthrough.o"}
    %core_3_3 = aie.core(%tile_3_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c5 = arith.constant 5 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c5 step %c1_1 {
          %0 = aie.objectfifo.acquire @memC4(Produce, 1) : !aie.objectfifosubview<memref<768xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
          %2 = aie.objectfifo.acquire @memA4(Consume, 1) : !aie.objectfifosubview<memref<768xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
          %c0_2 = arith.constant 0 : index
          %c768 = arith.constant 768 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c768 step %c1_3 {
            %4 = memref.load %3[%arg2] : memref<768xbf16>
            memref.store %4, %1[%arg2] : memref<768xbf16>
          }
          aie.objectfifo.release @memA4(Consume, 1)
          aie.objectfifo.release @memC4(Produce, 1)
        }
      }
      aie.end
    } {link_with = "passthrough.o"}
    %core_3_4 = aie.core(%tile_3_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c5 = arith.constant 5 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c5 step %c1_1 {
          %0 = aie.objectfifo.acquire @memC5(Produce, 1) : !aie.objectfifosubview<memref<768xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
          %2 = aie.objectfifo.acquire @memA5(Consume, 1) : !aie.objectfifosubview<memref<768xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
          %c0_2 = arith.constant 0 : index
          %c768 = arith.constant 768 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c768 step %c1_3 {
            %4 = memref.load %3[%arg2] : memref<768xbf16>
            memref.store %4, %1[%arg2] : memref<768xbf16>
          }
          aie.objectfifo.release @memA5(Consume, 1)
          aie.objectfifo.release @memC5(Produce, 1)
        }
      }
      aie.end
    } {link_with = "passthrough.o"}
    aiex.runtime_sequence(%arg0: memref<23040xbf16>, %arg1: memref<23040xbf16>, %arg2: memref<23040xbf16>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 23040][0, 0, 0, 1]) {id = 1 : i64, issue_token = true, metadata = @inA} : memref<23040xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 23040][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC} : memref<23040xbf16>
      aiex.npu.dma_wait {symbol = @inA}
      aiex.npu.dma_wait {symbol = @outC}
    }
  }
}

