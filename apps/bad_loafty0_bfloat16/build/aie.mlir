module {
  aie.device(npu1_4col) {
    func.func private @passthrough(memref<4610xbf16>, memref<4610xbf16>, i32)
    func.func private @mean(memref<4608xbf16>, memref<2xbf16>, i32, i32)
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
    aie.objectfifo @in0(%shim_noc_tile_2_0, {%tile_2_2}, 2 : i32) : !aie.objectfifo<memref<2xbf16>> 
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
    aie.objectfifo @of_add_u0(%tile_0_5, {%tile_1_5}, 1 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_add_v0(%tile_0_4, {%tile_1_5}, 1 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_add_w0(%tile_0_3, {%tile_1_4}, 2 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_add_uv0(%tile_1_5, {%tile_1_4}, 2 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_add_u1(%tile_3_5, {%tile_2_5}, 1 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_add_v1(%tile_3_4, {%tile_2_5}, 1 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_add_w1(%tile_3_3, {%tile_2_4}, 2 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_add_uv1(%tile_2_5, {%tile_2_4}, 2 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_add2real0(%tile_1_4, {%tile_1_3, %tile_0_2}, 2 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_add2real1(%tile_2_4, {%tile_2_3, %tile_3_2}, 2 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_realJoin0(%tile_1_3, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<1152xbf16>> 
    aie.objectfifo @of_imagJoin0(%tile_0_2, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<1152xbf16>> 
    aie.objectfifo @of_realJoin1(%tile_2_3, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<1152xbf16>> 
    aie.objectfifo @of_imagJoin1(%tile_3_2, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<1152xbf16>> 
    aie.objectfifo @of_real_joined(%mem_tile_2_1, {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<2304xbf16>> 
    aie.objectfifo @of_imag_joined(%mem_tile_1_1, {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<2304xbf16>> 
    aie.objectfifo.link [@of_realJoin0, @of_realJoin1] -> [@of_real_joined]([0, 1152] [])
    aie.objectfifo.link [@of_imagJoin0, @of_imagJoin1] -> [@of_imag_joined]([0, 1152] [])
    aie.objectfifo @sub(%tile_1_2, {%tile_2_2}, 2 : i32) : !aie.objectfifo<memref<2304xbf16>> 
    aie.objectfifo @out(%tile_2_2, {%shim_noc_tile_2_0}, 2 : i32) : !aie.objectfifo<memref<2xbf16>> 
    %core_0_5 = aie.core(%tile_0_5) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainA2(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c8192 = arith.constant 8192 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c8192 step %c1_1 {
          %c0_2 = arith.constant 0 : index
          %c2 = arith.constant 2 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c2 step %c1_3 {
            %2 = aie.objectfifo.acquire @of_add_u0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
            aie.objectfifo.release @of_add_u0(Produce, 1)
          }
        }
        aie.objectfifo.release @of_in_mainA2(Consume, 1)
      }
      aie.end
    }
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainA3(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c8192 = arith.constant 8192 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c8192 step %c1_1 {
          %c0_2 = arith.constant 0 : index
          %c2 = arith.constant 2 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c2 step %c1_3 {
            %2 = aie.objectfifo.acquire @of_add_v0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
            aie.objectfifo.release @of_add_v0(Produce, 1)
          }
        }
        aie.objectfifo.release @of_in_mainA3(Consume, 1)
      }
      aie.end
    }
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainA4(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c8192 = arith.constant 8192 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c8192 step %c1_1 {
          %c0_2 = arith.constant 0 : index
          %c2 = arith.constant 2 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c2 step %c1_3 {
            %2 = aie.objectfifo.acquire @of_add_w0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
            aie.objectfifo.release @of_add_w0(Produce, 1)
          }
        }
        aie.objectfifo.release @of_in_mainA4(Consume, 1)
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
          %0 = aie.objectfifo.acquire @of_add_v0(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %2 = aie.objectfifo.acquire @of_add_uv0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_uv0(Produce, 1)
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
          %0 = aie.objectfifo.acquire @of_add_uv0(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %2 = aie.objectfifo.acquire @of_add_w0(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %4 = aie.objectfifo.acquire @of_add2real0(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add2real0(Produce, 1)
          aie.objectfifo.release @of_add_uv0(Consume, 1)
          aie.objectfifo.release @of_add_w0(Consume, 1)
        }
      }
      aie.end
    }
    %core_1_3 = aie.core(%tile_1_3) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainA0(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %2 = aie.objectfifo.acquire @of_add2real0(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %4 = aie.objectfifo.acquire @of_realJoin0(Produce, 1) : !aie.objectfifosubview<memref<1152xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1152xbf16>> -> memref<1152xbf16>
          aie.objectfifo.release @of_realJoin0(Produce, 1)
          aie.objectfifo.release @of_add2real0(Consume, 1)
        }
        aie.objectfifo.release @of_in_mainA0(Consume, 1)
      }
      aie.end
    }
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainA1(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %2 = aie.objectfifo.acquire @of_add2real0(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %4 = aie.objectfifo.acquire @of_imagJoin0(Produce, 1) : !aie.objectfifosubview<memref<1152xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1152xbf16>> -> memref<1152xbf16>
          aie.objectfifo.release @of_imagJoin0(Produce, 1)
          aie.objectfifo.release @of_add2real0(Consume, 1)
        }
        aie.objectfifo.release @of_in_mainA1(Consume, 1)
      }
      aie.end
    }
    %core_3_5 = aie.core(%tile_3_5) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainB2(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c8192 = arith.constant 8192 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c8192 step %c1_1 {
          %c0_2 = arith.constant 0 : index
          %c2 = arith.constant 2 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c2 step %c1_3 {
            %2 = aie.objectfifo.acquire @of_add_u1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
            aie.objectfifo.release @of_add_u1(Produce, 1)
          }
        }
        aie.objectfifo.release @of_in_mainB2(Consume, 1)
      }
      aie.end
    }
    %core_3_4 = aie.core(%tile_3_4) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainB3(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c8192 = arith.constant 8192 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c8192 step %c1_1 {
          %c0_2 = arith.constant 0 : index
          %c2 = arith.constant 2 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c2 step %c1_3 {
            %2 = aie.objectfifo.acquire @of_add_v1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
            aie.objectfifo.release @of_add_v1(Produce, 1)
          }
        }
        aie.objectfifo.release @of_in_mainB3(Consume, 1)
      }
      aie.end
    }
    %core_3_3 = aie.core(%tile_3_3) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainB4(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c8192 = arith.constant 8192 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c8192 step %c1_1 {
          %c0_2 = arith.constant 0 : index
          %c2 = arith.constant 2 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c2 step %c1_3 {
            %2 = aie.objectfifo.acquire @of_add_w1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
            aie.objectfifo.release @of_add_w1(Produce, 1)
          }
        }
        aie.objectfifo.release @of_in_mainB4(Consume, 1)
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
          %0 = aie.objectfifo.acquire @of_add_v1(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %2 = aie.objectfifo.acquire @of_add_uv1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add_uv1(Produce, 1)
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
          %0 = aie.objectfifo.acquire @of_add_uv1(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %2 = aie.objectfifo.acquire @of_add_w1(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %4 = aie.objectfifo.acquire @of_add2real1(Produce, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          aie.objectfifo.release @of_add2real1(Produce, 1)
          aie.objectfifo.release @of_add_uv1(Consume, 1)
          aie.objectfifo.release @of_add_w1(Consume, 1)
        }
      }
      aie.end
    }
    %core_2_3 = aie.core(%tile_2_3) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainB0(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %2 = aie.objectfifo.acquire @of_add2real1(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %4 = aie.objectfifo.acquire @of_realJoin1(Produce, 1) : !aie.objectfifosubview<memref<1152xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1152xbf16>> -> memref<1152xbf16>
          aie.objectfifo.release @of_realJoin1(Produce, 1)
          aie.objectfifo.release @of_add2real1(Consume, 1)
        }
        aie.objectfifo.release @of_in_mainB0(Consume, 1)
      }
      aie.end
    }
    %core_3_2 = aie.core(%tile_3_2) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c14 step %c1 {
        %0 = aie.objectfifo.acquire @of_in_mainB1(Consume, 1) : !aie.objectfifosubview<memref<4610xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<4610xbf16>> -> memref<4610xbf16>
        %c0_0 = arith.constant 0 : index
        %c16384 = arith.constant 16384 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c16384 step %c1_1 {
          %2 = aie.objectfifo.acquire @of_add2real1(Consume, 1) : !aie.objectfifosubview<memref<4608xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<4608xbf16>> -> memref<4608xbf16>
          %4 = aie.objectfifo.acquire @of_imagJoin1(Produce, 1) : !aie.objectfifosubview<memref<1152xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1152xbf16>> -> memref<1152xbf16>
          aie.objectfifo.release @of_imagJoin1(Produce, 1)
          aie.objectfifo.release @of_add2real1(Consume, 1)
        }
        aie.objectfifo.release @of_in_mainB1(Consume, 1)
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
          %0 = aie.objectfifo.acquire @of_real_joined(Consume, 1) : !aie.objectfifosubview<memref<2304xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<2304xbf16>> -> memref<2304xbf16>
          %2 = aie.objectfifo.acquire @of_imag_joined(Consume, 1) : !aie.objectfifosubview<memref<2304xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<2304xbf16>> -> memref<2304xbf16>
          %4 = aie.objectfifo.acquire @sub(Produce, 1) : !aie.objectfifosubview<memref<2304xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<2304xbf16>> -> memref<2304xbf16>
          aie.objectfifo.release @sub(Produce, 1)
          aie.objectfifo.release @of_real_joined(Consume, 1)
          aie.objectfifo.release @of_imag_joined(Consume, 1)
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
        %c8192 = arith.constant 8192 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c8192 step %c1_1 {
          %0 = aie.objectfifo.acquire @out(Produce, 1) : !aie.objectfifosubview<memref<2xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<2xbf16>> -> memref<2xbf16>
          %c0_2 = arith.constant 0 : index
          %c2 = arith.constant 2 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c2 step %c1_3 {
            %2 = aie.objectfifo.acquire @sub(Consume, 1) : !aie.objectfifosubview<memref<2304xbf16>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<2304xbf16>> -> memref<2304xbf16>
            aie.objectfifo.release @sub(Consume, 1)
          }
          aie.objectfifo.release @out(Produce, 1)
        }
      }
      aie.end
    }
    aiex.runtime_sequence @sequence(%arg0: memref<23050xbf16>, %arg1: memref<23050xbf16>, %arg2: memref<23050xbf16>, %arg3: memref<23050xbf16>) {
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 0, 0][1, 1, 1, 49152][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<23050xbf16>
      aiex.npu.dma_memcpy_nd(%arg1[0, 0, 0, 0][1, 1, 1, 23050][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<23050xbf16>
      aiex.npu.dma_memcpy_nd(%arg2[0, 0, 0, 0][1, 1, 1, 23050][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<23050xbf16>
      aiex.npu.dma_memcpy_nd(%arg3[0, 0, 0, 0][1, 1, 1, 16384][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<23050xbf16>
      aiex.npu.dma_wait {symbol = @out}
    }
  }
}

