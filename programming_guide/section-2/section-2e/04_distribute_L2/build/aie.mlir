module {
  aie.device(npu1_1col) {
    %tile_0_0 = aie.tile(0, 0)
    %tile_0_1 = aie.tile(0, 1)
    %tile_0_2 = aie.tile(0, 2)
    %tile_0_3 = aie.tile(0, 3)
    %tile_0_4 = aie.tile(0, 4)
    aie.objectfifo @in(%tile_0_0, {%tile_0_1}, 2 : i32) : !aie.objectfifo<memref<24xi32>> 
    aie.objectfifo @in0(%tile_0_1, {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<8xi32>> 
    aie.objectfifo @in1(%tile_0_1, {%tile_0_3}, 2 : i32) : !aie.objectfifo<memref<8xi32>> 
    aie.objectfifo @in2(%tile_0_1, {%tile_0_4}, 2 : i32) : !aie.objectfifo<memref<8xi32>> 
    aie.objectfifo.link [@in] -> [@in0, @in1, @in2]([] [0, 8, 16])
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c8 step %c1 {
        %0 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<8xi32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<8xi32>> -> memref<8xi32>
        %c0_0 = arith.constant 0 : index
        %c8_1 = arith.constant 8 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c8_1 step %c1_2 {
          %2 = memref.load %1[%arg1] : memref<8xi32>
          %c1_i32 = arith.constant 1 : i32
          %3 = arith.addi %2, %c1_i32 : i32
          memref.store %3, %1[%arg1] : memref<8xi32>
        }
        aie.objectfifo.release @in0(Consume, 1)
      }
      aie.end
    }
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c8 step %c1 {
        %0 = aie.objectfifo.acquire @in1(Consume, 1) : !aie.objectfifosubview<memref<8xi32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<8xi32>> -> memref<8xi32>
        %c0_0 = arith.constant 0 : index
        %c8_1 = arith.constant 8 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c8_1 step %c1_2 {
          %2 = memref.load %1[%arg1] : memref<8xi32>
          %c1_i32 = arith.constant 1 : i32
          %3 = arith.addi %2, %c1_i32 : i32
          memref.store %3, %1[%arg1] : memref<8xi32>
        }
        aie.objectfifo.release @in1(Consume, 1)
      }
      aie.end
    }
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c8 step %c1 {
        %0 = aie.objectfifo.acquire @in2(Consume, 1) : !aie.objectfifosubview<memref<8xi32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<8xi32>> -> memref<8xi32>
        %c0_0 = arith.constant 0 : index
        %c8_1 = arith.constant 8 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c8_1 step %c1_2 {
          %2 = memref.load %1[%arg1] : memref<8xi32>
          %c1_i32 = arith.constant 1 : i32
          %3 = arith.addi %2, %c1_i32 : i32
          memref.store %3, %1[%arg1] : memref<8xi32>
        }
        aie.objectfifo.release @in2(Consume, 1)
      }
      aie.end
    }
  }
}

