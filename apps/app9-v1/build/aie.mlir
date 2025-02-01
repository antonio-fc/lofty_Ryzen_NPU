module {
  aie.device(npu1_4col) {
    func.func private @vector_scalar_mul_aie_scalar(memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32)
    func.func private @passthrough(memref<1024xf32>, memref<1024xf32>, i32)
    func.func private @vector_add_aie_scalar(memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32)
    func.func private @vector_mult_aie_scalar(memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32)
    func.func private @mean(memref<1024xf32>, memref<1xf32>, i32)
    func.func private @sin_float_1024(memref<1024xf32>, memref<1024xf32>, i32)
    func.func private @cos_float_1024(memref<1024xf32>, memref<1024xf32>, i32)
    %tile_0_0 = aie.tile(0, 0)
    %tile_0_1 = aie.tile(0, 1)
    %tile_0_2 = aie.tile(0, 2)
    %tile_0_3 = aie.tile(0, 3)
    %tile_0_4 = aie.tile(0, 4)
    %tile_0_5 = aie.tile(0, 5)
    %tile_1_0 = aie.tile(1, 0)
    %tile_1_1 = aie.tile(1, 1)
    %tile_1_2 = aie.tile(1, 2)
    %tile_1_3 = aie.tile(1, 3)
    %tile_1_4 = aie.tile(1, 4)
    %tile_1_5 = aie.tile(1, 5)
    %tile_2_0 = aie.tile(2, 0)
    %tile_2_1 = aie.tile(2, 1)
    %tile_2_2 = aie.tile(2, 2)
    %tile_2_3 = aie.tile(2, 3)
    %tile_2_4 = aie.tile(2, 4)
    %tile_2_5 = aie.tile(2, 5)
    %tile_3_0 = aie.tile(3, 0)
    %tile_3_1 = aie.tile(3, 1)
    %tile_3_2 = aie.tile(3, 2)
    %tile_3_3 = aie.tile(3, 3)
    %tile_3_4 = aie.tile(3, 4)
    %tile_3_5 = aie.tile(3, 5)
    aie.objectfifo @in0(%tile_0_0, {%tile_0_3}, 2 : i32) : !aie.objectfifo<memref<1xf32>> 
    aie.objectfifo @in1(%tile_0_0, {%tile_1_4}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @in2(%tile_1_0, {%tile_1_1}, 1 : i32) : !aie.objectfifo<memref<3072xf32>> 
    aie.objectfifo @in3(%tile_1_0, {%tile_2_1}, 1 : i32) : !aie.objectfifo<memref<3xf32>> 
    aie.objectfifo @u(%tile_1_1, {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @v(%tile_1_1, {%tile_2_2}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @w(%tile_1_1, {%tile_3_2}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo.link [@in2] -> [@u, @v, @w]([] [0, 1024, 2048])
    aie.objectfifo @l(%tile_2_1, {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<1xf32>> 
    aie.objectfifo @m(%tile_2_1, {%tile_2_2}, 2 : i32) : !aie.objectfifo<memref<1xf32>> 
    aie.objectfifo @n(%tile_2_1, {%tile_3_2}, 2 : i32) : !aie.objectfifo<memref<1xf32>> 
    aie.objectfifo.link [@in3] -> [@l, @m, @n]([] [0, 1, 2])
    aie.objectfifo @addA0(%tile_2_2, {%tile_2_3}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @addA1(%tile_3_2, {%tile_2_3}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @addB0(%tile_1_2, {%tile_1_3}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @addB1(%tile_2_3, {%tile_1_3}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @of_scaleC(%tile_1_3, {%tile_0_3}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @of_cosD(%tile_0_3, {%tile_0_4}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @of_multE(%tile_0_4, {%tile_1_4}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @of_meanF(%tile_1_4, {%tile_2_4}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @of_meanG(%tile_2_4, {%tile_3_4}, 10 : i32) : !aie.objectfifo<memref<1xf32>> 
    aie.objectfifo @out(%tile_1_4, {%tile_3_0}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    %core_1_2 = aie.core(%tile_1_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @l(Consume, 1) : !aie.objectfifosubview<memref<1xf32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1xf32>> -> memref<1xf32>
        %c0_0 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %2 = aie.objectfifo.acquire @u(Consume, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %4 = aie.objectfifo.acquire @addB0(Produce, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_scalar_mul_aie_scalar(%3, %5, %1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
          aie.objectfifo.release @addB0(Produce, 1)
          aie.objectfifo.release @u(Consume, 1)
        }
        aie.objectfifo.release @l(Consume, 1)
      }
      aie.end
    } {link_with = "scale.o"}
    %core_2_2 = aie.core(%tile_2_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @m(Consume, 1) : !aie.objectfifosubview<memref<1xf32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1xf32>> -> memref<1xf32>
        %c0_0 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %2 = aie.objectfifo.acquire @v(Consume, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %4 = aie.objectfifo.acquire @addA0(Produce, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_scalar_mul_aie_scalar(%3, %5, %1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
          aie.objectfifo.release @addA0(Produce, 1)
          aie.objectfifo.release @v(Consume, 1)
        }
        aie.objectfifo.release @m(Consume, 1)
      }
      aie.end
    } {link_with = "scale.o"}
    %core_3_2 = aie.core(%tile_3_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @n(Consume, 1) : !aie.objectfifosubview<memref<1xf32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1xf32>> -> memref<1xf32>
        %c0_0 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %2 = aie.objectfifo.acquire @w(Consume, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %4 = aie.objectfifo.acquire @addA1(Produce, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_scalar_mul_aie_scalar(%3, %5, %1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
          aie.objectfifo.release @addA1(Produce, 1)
          aie.objectfifo.release @w(Consume, 1)
        }
        aie.objectfifo.release @n(Consume, 1)
      }
      aie.end
    } {link_with = "scale.o"}
    %core_2_3 = aie.core(%tile_2_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %0 = aie.objectfifo.acquire @addA0(Consume, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %2 = aie.objectfifo.acquire @addA1(Consume, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %4 = aie.objectfifo.acquire @addB1(Produce, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_add_aie_scalar(%1, %3, %5, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
          aie.objectfifo.release @addB1(Produce, 1)
          aie.objectfifo.release @addA0(Consume, 1)
          aie.objectfifo.release @addA1(Consume, 1)
        }
      }
      aie.end
    } {link_with = "vector_add.o"}
    %core_1_3 = aie.core(%tile_1_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %0 = aie.objectfifo.acquire @addB0(Consume, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %2 = aie.objectfifo.acquire @addB1(Consume, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %4 = aie.objectfifo.acquire @of_scaleC(Produce, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_add_aie_scalar(%1, %3, %5, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
          aie.objectfifo.release @of_scaleC(Produce, 1)
          aie.objectfifo.release @addB0(Consume, 1)
          aie.objectfifo.release @addB1(Consume, 1)
        }
      }
      aie.end
    } {link_with = "vector_add.o"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<1xf32>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1xf32>> -> memref<1xf32>
        %c0_0 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %2 = aie.objectfifo.acquire @of_scaleC(Consume, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %4 = aie.objectfifo.acquire @of_cosD(Produce, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_scalar_mul_aie_scalar(%3, %5, %1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
          aie.objectfifo.release @of_cosD(Produce, 1)
          aie.objectfifo.release @of_scaleC(Consume, 1)
        }
        aie.objectfifo.release @in0(Consume, 1)
      }
      aie.end
    } {link_with = "scale.o"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %0 = aie.objectfifo.acquire @of_cosD(Consume, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %2 = aie.objectfifo.acquire @of_multE(Produce, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @sin_float_1024(%1, %3, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
          aie.objectfifo.release @of_multE(Produce, 1)
          aie.objectfifo.release @of_cosD(Consume, 1)
        }
      }
      aie.end
    } {link_with = "kernels.a"}
    %core_1_4 = aie.core(%tile_1_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %0 = aie.objectfifo.acquire @of_multE(Consume, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %2 = aie.objectfifo.acquire @in1(Consume, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %4 = aie.objectfifo.acquire @out(Produce, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_mult_aie_scalar(%1, %3, %5, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
          aie.objectfifo.release @out(Produce, 1)
          aie.objectfifo.release @of_multE(Consume, 1)
          aie.objectfifo.release @in1(Consume, 1)
        }
      }
      aie.end
    } {link_with = "vector_mult.o"}
    aiex.runtime_sequence(%arg0: memref<1xf32>, %arg1: memref<9216xf32>, %arg2: memref<27648xf32>, %arg3: memref<1xf32>, %arg4: memref<9216xf32>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 1][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<1xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 9216][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<9216xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 27648][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<27648xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg3[0, 0, 0, 0][1, 1, 1, 196608][0, 0, 0, 1]) {id = 4 : i64, metadata = @in3} : memref<1xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg4[0, 0, 0, 0][1, 1, 1, 9216][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<9216xf32>
      aiex.npu.dma_wait {symbol = @out}
    }
  }
}

