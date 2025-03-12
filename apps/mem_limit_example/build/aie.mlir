module {
  aie.device(npu1_4col) {
    func.func private @vector_scale(memref<9216xbf16>, memref<9216xbf16>, memref<2xbf16>, i32)
    func.func private @passthrough(memref<9216xbf16>, memref<9216xbf16>, i32)
    func.func private @vector_add(memref<9216xbf16>, memref<9216xbf16>, memref<9216xbf16>, i32)
    func.func private @vector_mult(memref<9216xbf16>, memref<9216xbf16>, memref<9216xbf16>, i32)
    func.func private @mean(memref<9216xbf16>, memref<2xbf16>, i32, i32)
    func.func private @sin_float_1024(memref<9216xbf16>, memref<9216xbf16>, i32)
    func.func private @cos_float_1024(memref<9216xbf16>, memref<9216xbf16>, i32)
    func.func private @vector_sub(memref<9216xbf16>, memref<9216xbf16>, memref<9216xbf16>, i32)
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
    aie.objectfifo @in0(%shim_noc_tile_0_0, {%tile_0_3}, 2 : i32) : !aie.objectfifo<memref<2xbf16>> 
    aie.objectfifo @in1(%shim_noc_tile_3_0, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<18432xbf16>> 
    aie.objectfifo @in2(%shim_noc_tile_1_0, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<27648xbf16>> 
    aie.objectfifo @in3(%shim_noc_tile_1_0, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<6xbf16>> 
    aie.objectfifo @visR(%mem_tile_3_1, {%tile_3_4}, 2 : i32) : !aie.objectfifo<memref<9216xbf16>> 
    aie.objectfifo @visC(%mem_tile_3_1, {%tile_3_5}, 2 : i32) : !aie.objectfifo<memref<9216xbf16>> 
    aie.objectfifo.link [@in1] -> [@visR, @visC]([] [0, 9216])
    aie.objectfifo @u(%mem_tile_1_1, {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<9216xbf16>> 
    aie.objectfifo @v(%mem_tile_1_1, {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<9216xbf16>> 
    aie.objectfifo @w(%mem_tile_1_1, {%tile_2_2}, 2 : i32) : !aie.objectfifo<memref<9216xbf16>> 
    aie.objectfifo.link [@in2] -> [@u, @v, @w]([] [0, 9216, 18432])
    aie.objectfifo @l(%mem_tile_2_1, {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<2xbf16>> 
    aie.objectfifo @m(%mem_tile_2_1, {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<2xbf16>> 
    aie.objectfifo @n(%mem_tile_2_1, {%tile_2_2}, 2 : i32) : !aie.objectfifo<memref<2xbf16>> 
    aie.objectfifo.link [@in3] -> [@l, @m, @n]([] [0, 2, 4])
    aie.objectfifo @out(%tile_3_2, {%shim_noc_tile_2_0}, 2 : i32) : !aie.objectfifo<memref<2xbf16>> 
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @l(Consume, 1) : !aie.objectfifosubview<memref<2xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<2xbf16>> -> memref<2xbf16>
        %c0_0 = arith.constant 0 : index
        %c1_1 = arith.constant 1 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c1_1 step %c1_2 {
          %2 = aie.objectfifo.acquire @u(Consume, 1) : !aie.objectfifosubview<memref<9216xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<9216xbf16>> -> memref<9216xbf16>
          aie.objectfifo.release @u(Consume, 1)
        }
        aie.objectfifo.release @l(Consume, 1)
      }
      aie.end
    } {link_with = "scale.o"}
    %core_1_2 = aie.core(%tile_1_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @m(Consume, 1) : !aie.objectfifosubview<memref<2xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<2xbf16>> -> memref<2xbf16>
        %c0_0 = arith.constant 0 : index
        %c1_1 = arith.constant 1 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c1_1 step %c1_2 {
          %2 = aie.objectfifo.acquire @v(Consume, 1) : !aie.objectfifosubview<memref<9216xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<9216xbf16>> -> memref<9216xbf16>
          aie.objectfifo.release @v(Consume, 1)
        }
        aie.objectfifo.release @m(Consume, 1)
      }
      aie.end
    } {link_with = "scale.o"}
    %core_2_2 = aie.core(%tile_2_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @n(Consume, 1) : !aie.objectfifosubview<memref<2xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<2xbf16>> -> memref<2xbf16>
        %c0_0 = arith.constant 0 : index
        %c1_1 = arith.constant 1 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c1_1 step %c1_2 {
          %2 = aie.objectfifo.acquire @w(Consume, 1) : !aie.objectfifosubview<memref<9216xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<9216xbf16>> -> memref<9216xbf16>
          aie.objectfifo.release @w(Consume, 1)
        }
        aie.objectfifo.release @n(Consume, 1)
      }
      aie.end
    } {link_with = "scale.o"}
    %core_3_5 = aie.core(%tile_3_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c1_1 = arith.constant 1 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c1_1 step %c1_2 {
          %0 = aie.objectfifo.acquire @visC(Consume, 1) : !aie.objectfifosubview<memref<9216xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<9216xbf16>> -> memref<9216xbf16>
          aie.objectfifo.release @visC(Consume, 1)
        }
      }
      aie.end
    } {link_with = "vector_mult.o"}
    %core_3_4 = aie.core(%tile_3_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c1_1 = arith.constant 1 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c1_1 step %c1_2 {
          %0 = aie.objectfifo.acquire @visR(Consume, 1) : !aie.objectfifosubview<memref<9216xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<9216xbf16>> -> memref<9216xbf16>
          aie.objectfifo.release @visR(Consume, 1)
        }
      }
      aie.end
    } {link_with = "vector_mult.o"}
    %core_3_2 = aie.core(%tile_3_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @out(Produce, 1) : !aie.objectfifosubview<memref<2xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<2xbf16>> -> memref<2xbf16>
        aie.objectfifo.release @out(Produce, 1)
      }
      aie.end
    } {link_with = "mean.o"}
    aiex.runtime_sequence @sequence(%arg0: memref<2xbf16>, %arg1: memref<9216xbf16>, %arg2: memref<27648xbf16>, %arg3: memref<2xbf16>, %arg4: memref<9216xbf16>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 2][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<2xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 18432][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<9216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 27648][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<27648xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg3[0, 0, 0, 0][1, 1, 1, 196608][0, 0, 0, 1]) {id = 4 : i64, metadata = @in3} : memref<2xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg4[0, 0, 0, 0][1, 1, 1, 2][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<9216xbf16>
      aiex.npu.dma_wait {symbol = @out}
    }
  }
}

