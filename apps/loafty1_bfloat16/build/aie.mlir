module {
  aie.device(npu1_4col) {
    func.func private @vector_scale(memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32)
    func.func private @passthrough(memref<1024xbf16>, memref<1024xbf16>, i32)
    func.func private @vector_add(memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32)
    func.func private @vector_mult(memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32)
    func.func private @mean(memref<1024xbf16>, memref<2xbf16>, i32, i32)
    func.func private @sin_float_1024(memref<1024xbf16>, memref<1024xbf16>, i32)
    func.func private @cos_float_1024(memref<1024xbf16>, memref<1024xbf16>, i32)
    func.func private @vector_sub(memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32)
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
    aie.objectfifo @in1(%shim_noc_tile_3_0, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<2048xbf16>> 
    aie.objectfifo @in2(%shim_noc_tile_1_0, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<3072xbf16>> 
    aie.objectfifo @in3(%shim_noc_tile_1_0, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<6xbf16>> 
    aie.objectfifo @visR(%mem_tile_3_1, {%tile_3_4}, 2 : i32) : !aie.objectfifo<memref<1024xbf16>> 
    aie.objectfifo @visC(%mem_tile_3_1, {%tile_3_5}, 2 : i32) : !aie.objectfifo<memref<1024xbf16>> 
    aie.objectfifo.link [@in1] -> [@visR, @visC]([] [0, 1024])
    aie.objectfifo @u(%mem_tile_1_1, {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<1024xbf16>> 
    aie.objectfifo @v(%mem_tile_1_1, {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<1024xbf16>> 
    aie.objectfifo @w(%mem_tile_1_1, {%tile_2_2}, 2 : i32) : !aie.objectfifo<memref<1024xbf16>> 
    aie.objectfifo.link [@in2] -> [@u, @v, @w]([] [0, 1024, 2048])
    aie.objectfifo @l(%mem_tile_2_1, {%tile_0_2}, 2 : i32) : !aie.objectfifo<memref<2xbf16>> 
    aie.objectfifo @m(%mem_tile_2_1, {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<2xbf16>> 
    aie.objectfifo @n(%mem_tile_2_1, {%tile_2_2}, 2 : i32) : !aie.objectfifo<memref<2xbf16>> 
    aie.objectfifo.link [@in3] -> [@l, @m, @n]([] [0, 2, 4])
    aie.objectfifo @addA0(%tile_1_2, {%tile_2_3}, 2 : i32) : !aie.objectfifo<memref<1024xbf16>> 
    aie.objectfifo @addA1(%tile_2_2, {%tile_2_3}, 2 : i32) : !aie.objectfifo<memref<1024xbf16>> 
    aie.objectfifo @addB0(%tile_0_2, {%tile_1_3}, 2 : i32) : !aie.objectfifo<memref<1024xbf16>> 
    aie.objectfifo @addB1(%tile_2_3, {%tile_1_3}, 2 : i32) : !aie.objectfifo<memref<1024xbf16>> 
    aie.objectfifo @of_scaleC(%tile_1_3, {%tile_0_3}, 2 : i32) : !aie.objectfifo<memref<1024xbf16>> 
    aie.objectfifo @of_sincosD(%tile_0_3, {%tile_2_4, %tile_2_5}, 3 : i32) : !aie.objectfifo<memref<1024xbf16>> 
    aie.objectfifo @of_multEr(%tile_2_4, {%tile_3_4}, 2 : i32) : !aie.objectfifo<memref<1024xbf16>> 
    aie.objectfifo @of_multEc(%tile_2_5, {%tile_3_5}, 2 : i32) : !aie.objectfifo<memref<1024xbf16>> 
    aie.objectfifo @of_subFr(%tile_3_4, {%tile_3_3}, 2 : i32) : !aie.objectfifo<memref<1024xbf16>> 
    aie.objectfifo @of_subFc(%tile_3_5, {%tile_3_3}, 2 : i32) : !aie.objectfifo<memref<1024xbf16>> 
    aie.objectfifo @of_mean(%tile_3_3, {%tile_3_2}, 2 : i32) : !aie.objectfifo<memref<1024xbf16>> 
    aie.objectfifo @out(%tile_3_2, {%shim_noc_tile_2_0}, 2 : i32) : !aie.objectfifo<memref<2xbf16>> 
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @l(Consume, 1) : !aie.objectfifosubview<memref<2xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<2xbf16>> -> memref<2xbf16>
        %c0_0 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %2 = aie.objectfifo.acquire @u(Consume, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %4 = aie.objectfifo.acquire @addB0(Produce, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_scale(%3, %5, %1, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
          aie.objectfifo.release @addB0(Produce, 1)
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
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %2 = aie.objectfifo.acquire @v(Consume, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %4 = aie.objectfifo.acquire @addA0(Produce, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_scale(%3, %5, %1, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
          aie.objectfifo.release @addA0(Produce, 1)
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
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %2 = aie.objectfifo.acquire @w(Consume, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %4 = aie.objectfifo.acquire @addA1(Produce, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_scale(%3, %5, %1, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
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
          %0 = aie.objectfifo.acquire @addA0(Consume, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %2 = aie.objectfifo.acquire @addA1(Consume, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %4 = aie.objectfifo.acquire @addB1(Produce, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_add(%1, %3, %5, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
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
          %0 = aie.objectfifo.acquire @addB0(Consume, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %2 = aie.objectfifo.acquire @addB1(Consume, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %4 = aie.objectfifo.acquire @of_scaleC(Produce, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_add(%1, %3, %5, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
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
        %0 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<2xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<2xbf16>> -> memref<2xbf16>
        %c0_0 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %2 = aie.objectfifo.acquire @of_scaleC(Consume, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %4 = aie.objectfifo.acquire @of_sincosD(Produce, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_scale(%3, %5, %1, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
          aie.objectfifo.release @of_sincosD(Produce, 1)
          aie.objectfifo.release @of_scaleC(Consume, 1)
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
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %0 = aie.objectfifo.acquire @of_sincosD(Consume, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %2 = aie.objectfifo.acquire @of_multEc(Produce, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @sin_float_1024(%1, %3, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
          aie.objectfifo.release @of_multEc(Produce, 1)
          aie.objectfifo.release @of_sincosD(Consume, 1)
        }
      }
      aie.end
    } {link_with = "kernels.a"}
    %core_2_4 = aie.core(%tile_2_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %0 = aie.objectfifo.acquire @of_sincosD(Consume, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %2 = aie.objectfifo.acquire @of_multEr(Produce, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @cos_float_1024(%1, %3, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
          aie.objectfifo.release @of_multEr(Produce, 1)
          aie.objectfifo.release @of_sincosD(Consume, 1)
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
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %0 = aie.objectfifo.acquire @of_multEc(Consume, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %2 = aie.objectfifo.acquire @visC(Consume, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %4 = aie.objectfifo.acquire @of_subFc(Produce, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_mult(%1, %3, %5, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
          aie.objectfifo.release @of_subFc(Produce, 1)
          aie.objectfifo.release @of_multEc(Consume, 1)
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
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %0 = aie.objectfifo.acquire @of_multEr(Consume, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %2 = aie.objectfifo.acquire @visR(Consume, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %4 = aie.objectfifo.acquire @of_subFr(Produce, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_mult(%1, %3, %5, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
          aie.objectfifo.release @of_subFr(Produce, 1)
          aie.objectfifo.release @of_multEr(Consume, 1)
          aie.objectfifo.release @visR(Consume, 1)
        }
      }
      aie.end
    } {link_with = "vector_mult.o"}
    %core_3_3 = aie.core(%tile_3_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %0 = aie.objectfifo.acquire @of_subFr(Consume, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %2 = aie.objectfifo.acquire @of_subFc(Consume, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %4 = aie.objectfifo.acquire @of_mean(Produce, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_sub(%1, %3, %5, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
          aie.objectfifo.release @of_mean(Produce, 1)
          aie.objectfifo.release @of_subFr(Consume, 1)
          aie.objectfifo.release @of_subFc(Consume, 1)
        }
      }
      aie.end
    } {link_with = "vector_sub.o"}
    %core_3_2 = aie.core(%tile_3_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @out(Produce, 1) : !aie.objectfifosubview<memref<2xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<2xbf16>> -> memref<2xbf16>
        %2 = aie.objectfifo.acquire @of_mean(Consume, 1) : !aie.objectfifosubview<memref<1024xbf16>>
        %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_0 = arith.constant 0 : i32
        func.call @mean(%3, %1, %c0_i32, %c0_i32_0) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
        %c1024_i32 = arith.constant 1024 : i32
        %c1_i32 = arith.constant 1 : i32
        func.call @mean(%3, %1, %c1024_i32, %c1_i32) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
        aie.objectfifo.release @of_mean(Consume, 1)
        %c2 = arith.constant 2 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c2 to %c9 step %c1_1 {
          %6 = aie.objectfifo.acquire @of_mean(Consume, 1) : !aie.objectfifosubview<memref<1024xbf16>>
          %7 = aie.objectfifo.subview.access %6[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
          %c1024_i32_4 = arith.constant 1024 : i32
          %c1_i32_5 = arith.constant 1 : i32
          func.call @mean(%7, %1, %c1024_i32_4, %c1_i32_5) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
          aie.objectfifo.release @of_mean(Consume, 1)
        }
        %4 = aie.objectfifo.acquire @of_mean(Consume, 1) : !aie.objectfifosubview<memref<1024xbf16>>
        %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xbf16>> -> memref<1024xbf16>
        %c1024_i32_2 = arith.constant 1024 : i32
        %c1_i32_3 = arith.constant 1 : i32
        func.call @mean(%5, %1, %c1024_i32_2, %c1_i32_3) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
        %c9216_i32 = arith.constant 9216 : i32
        %c2_i32 = arith.constant 2 : i32
        func.call @mean(%5, %1, %c9216_i32, %c2_i32) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
        aie.objectfifo.release @of_mean(Consume, 1)
        aie.objectfifo.release @out(Produce, 1)
      }
      aie.end
    } {link_with = "mean.o"}
    aiex.runtime_sequence(%arg0: memref<2xbf16>, %arg1: memref<9216xbf16>, %arg2: memref<27648xbf16>, %arg3: memref<2xbf16>, %arg4: memref<9216xbf16>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 2][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<2xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 18432][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<9216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 27648][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<27648xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg3[0, 0, 0, 0][1, 1, 1, 196608][0, 0, 0, 1]) {id = 4 : i64, metadata = @in3} : memref<2xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg4[0, 0, 0, 0][1, 1, 1, 2][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<9216xbf16>
      aiex.npu.dma_wait {symbol = @out}
    }
  }
}

