module {
  aie.device(npu1_4col) {
    func.func private @vector_scalar_mul_aie_scalar(memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32)
    func.func private @passthrough(memref<1024xf32>, memref<1024xf32>, i32)
    %tile_0_0 = aie.tile(0, 0)
    %tile_0_2 = aie.tile(0, 2)
    %tile_0_3 = aie.tile(0, 3)
    %tile_0_4 = aie.tile(0, 4)
    %tile_0_5 = aie.tile(0, 5)
    %tile_1_0 = aie.tile(1, 0)
    %tile_1_2 = aie.tile(1, 2)
    %tile_1_3 = aie.tile(1, 3)
    %tile_1_4 = aie.tile(1, 4)
    %tile_1_5 = aie.tile(1, 5)
    %tile_2_0 = aie.tile(2, 0)
    %tile_2_2 = aie.tile(2, 2)
    %tile_2_3 = aie.tile(2, 3)
    %tile_2_4 = aie.tile(2, 4)
    %tile_2_5 = aie.tile(2, 5)
    %tile_3_0 = aie.tile(3, 0)
    %tile_3_2 = aie.tile(3, 2)
    %tile_3_3 = aie.tile(3, 3)
    %tile_3_4 = aie.tile(3, 4)
    %tile_3_5 = aie.tile(3, 5)
    aie.objectfifo @in(%tile_0_0, {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<1024xf32>>
    aie.objectfifo @in_factor(%tile_0_0, {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<1xf32>>
    aie.objectfifo @out(%tile_0_2, {%tile_0_0}, 2 : i32) : !aie.objectfifo<memref<1024xf32>>
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @in_factor(Consume, 1) : !aie.objectfifosubview<memref<1xf32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1xf32>> -> memref<1xf32>
        %c0_0 = arith.constant 0 : index
        %c4 = arith.constant 4 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c4 step %c1_1 {
          %2 = aie.objectfifo.acquire @out(Produce, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %4 = aie.objectfifo.acquire @in(Consume, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_scalar_mul_aie_scalar(%5, %3, %1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
          aie.objectfifo.release @in(Consume, 1)
          aie.objectfifo.release @out(Produce, 1)
        }
        aie.objectfifo.release @in_factor(Consume, 1)
      }
      aie.end
    } {link_with = "scale.o"}
    aiex.runtime_sequence(%arg0: memref<4096xf32>, %arg1: memref<1xf32>, %arg2: memref<4096xf32>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 1 : i64, metadata = @in} : memref<4096xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 2 : i64, metadata = @in_factor} : memref<1xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 4096][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<4096xf32>
      aiex.npu.dma_wait {symbol = @out}
    }
  }
}

