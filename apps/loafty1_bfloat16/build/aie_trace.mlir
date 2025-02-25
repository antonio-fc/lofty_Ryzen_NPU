module {
  aie.device(npu1_4col) {
    func.func private @passthrough(memref<768xbf16>, memref<768xbf16>, i32)
    func.func private @mean(memref<192xbf16>, memref<192xbf16>, memref<32xbf16>, i32)
    func.func private @main_kernel(bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32)
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
    aie.objectfifo @in0(%shim_noc_tile_1_0, {%tile_0_3, %tile_0_4, %tile_0_5, %tile_1_3, %tile_1_4, %tile_1_5, %tile_2_3, %tile_2_4, %tile_2_5, %tile_3_3, %tile_3_4, %tile_3_5}, 2 : i32) : !aie.objectfifo<memref<96xbf16>> 
    aie.objectfifo @in1(%shim_noc_tile_0_0, {%mem_tile_0_1}, 2 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @in2(%shim_noc_tile_3_0, {%mem_tile_3_1}, 2 : i32) : !aie.objectfifo<memref<4608xbf16>> 
    aie.objectfifo @of_in_mainA01(%mem_tile_0_1, {%tile_0_3}, 6 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainB21(%mem_tile_3_1, {%tile_2_3}, 6 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainA02(%mem_tile_0_1, {%tile_0_4}, 6 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainB22(%mem_tile_3_1, {%tile_2_4}, 6 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainA03(%mem_tile_0_1, {%tile_0_5}, 6 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainB23(%mem_tile_3_1, {%tile_2_5}, 6 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainA11(%mem_tile_0_1, {%tile_1_3}, 6 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainB31(%mem_tile_3_1, {%tile_3_3}, 6 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainA12(%mem_tile_0_1, {%tile_1_4}, 6 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainB32(%mem_tile_3_1, {%tile_3_4}, 6 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainA13(%mem_tile_0_1, {%tile_1_5}, 6 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo @of_in_mainB33(%mem_tile_3_1, {%tile_3_5}, 6 : i32) : !aie.objectfifo<memref<768xbf16>> 
    aie.objectfifo.link [@in1] -> [@of_in_mainA01, @of_in_mainA02, @of_in_mainA03, @of_in_mainA11, @of_in_mainA12, @of_in_mainA13]([] [0, 768, 1536, 2304, 3072, 3840])
    aie.objectfifo.link [@in2] -> [@of_in_mainB21, @of_in_mainB22, @of_in_mainB23, @of_in_mainB31, @of_in_mainB32, @of_in_mainB33]([] [0, 768, 1536, 2304, 3072, 3840])
    aie.objectfifo @of_out_mainA01(%tile_0_3, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<32xbf16>> 
    aie.objectfifo @of_out_mainB21(%tile_2_3, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<32xbf16>> 
    aie.objectfifo @of_out_mainA02(%tile_0_4, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<32xbf16>> 
    aie.objectfifo @of_out_mainB22(%tile_2_4, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<32xbf16>> 
    aie.objectfifo @of_out_mainA03(%tile_0_5, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<32xbf16>> 
    aie.objectfifo @of_out_mainB23(%tile_2_5, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<32xbf16>> 
    aie.objectfifo @of_out_mainA11(%tile_1_3, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<32xbf16>> 
    aie.objectfifo @of_out_mainB31(%tile_3_3, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<32xbf16>> 
    aie.objectfifo @of_out_mainA12(%tile_1_4, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<32xbf16>> 
    aie.objectfifo @of_out_mainB32(%tile_3_4, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<32xbf16>> 
    aie.objectfifo @of_out_mainA13(%tile_1_5, {%mem_tile_1_1}, 2 : i32) : !aie.objectfifo<memref<32xbf16>> 
    aie.objectfifo @of_out_mainB33(%tile_3_5, {%mem_tile_2_1}, 2 : i32) : !aie.objectfifo<memref<32xbf16>> 
    aie.objectfifo @out1(%mem_tile_1_1, {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<192xbf16>> 
    aie.objectfifo @out2(%mem_tile_2_1, {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<192xbf16>> 
    aie.objectfifo.link [@of_out_mainA01, @of_out_mainA02, @of_out_mainA03, @of_out_mainA11, @of_out_mainA12, @of_out_mainA13] -> [@out1]([0, 32, 64, 96, 128, 160] [])
    aie.objectfifo.link [@of_out_mainB21, @of_out_mainB22, @of_out_mainB23, @of_out_mainB31, @of_out_mainB32, @of_out_mainB33] -> [@out2]([0, 32, 64, 96, 128, 160] [])
    aie.objectfifo @out(%tile_1_2, {%shim_noc_tile_1_0}, 2 : i32) : !aie.objectfifo<memref<32xbf16>> 
    %core_1_2 = aie.core(%tile_1_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c2048 = arith.constant 2048 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c2048 step %c1_1 {
          %0 = aie.objectfifo.acquire @out1(Consume, 1) : !aie.objectfifosubview<memref<192xbf16>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<192xbf16>> -> memref<192xbf16>
          %2 = aie.objectfifo.acquire @out2(Consume, 1) : !aie.objectfifosubview<memref<192xbf16>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<192xbf16>> -> memref<192xbf16>
          %4 = aie.objectfifo.acquire @out(Produce, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %c32_i32 = arith.constant 32 : i32
          func.call @mean(%1, %3, %5, %c32_i32) : (memref<192xbf16>, memref<192xbf16>, memref<32xbf16>, i32) -> ()
          aie.objectfifo.release @out(Produce, 1)
          aie.objectfifo.release @out1(Consume, 1)
          aie.objectfifo.release @out2(Consume, 1)
        }
      }
      aie.end
    } {link_with = "mean.o"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
        %c0_0 = arith.constant 0 : index
        %2 = memref.load %1[%c0_0] : memref<96xbf16>
        aie.objectfifo.release @in0(Consume, 1)
        %3 = aie.objectfifo.acquire @of_in_mainA01(Consume, 5) : !aie.objectfifosubview<memref<768xbf16>>
        %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %5 = aie.objectfifo.subview.access %3[1] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %6 = aie.objectfifo.subview.access %3[2] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %7 = aie.objectfifo.subview.access %3[3] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %8 = aie.objectfifo.subview.access %3[4] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c0_1 = arith.constant 0 : index
        %c2048 = arith.constant 2048 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_1 to %c2048 step %c1_2 {
          %9 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
          %11 = aie.objectfifo.acquire @of_out_mainA01(Produce, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %12 = aie.objectfifo.subview.access %11[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %c768_i32 = arith.constant 768 : i32
          func.call @main_kernel(%2, %10, %4, %5, %6, %7, %8, %12, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
          aie.objectfifo.release @of_out_mainA01(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_mainA01(Consume, 5)
      }
      aie.end
    } {link_with = "kernels.a"}
    %core_2_3 = aie.core(%tile_2_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
        %c0_0 = arith.constant 0 : index
        %2 = memref.load %1[%c0_0] : memref<96xbf16>
        aie.objectfifo.release @in0(Consume, 1)
        %3 = aie.objectfifo.acquire @of_in_mainB21(Consume, 5) : !aie.objectfifosubview<memref<768xbf16>>
        %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %5 = aie.objectfifo.subview.access %3[1] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %6 = aie.objectfifo.subview.access %3[2] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %7 = aie.objectfifo.subview.access %3[3] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %8 = aie.objectfifo.subview.access %3[4] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c0_1 = arith.constant 0 : index
        %c2048 = arith.constant 2048 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_1 to %c2048 step %c1_2 {
          %9 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
          %11 = aie.objectfifo.acquire @of_out_mainB21(Produce, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %12 = aie.objectfifo.subview.access %11[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %c768_i32 = arith.constant 768 : i32
          func.call @main_kernel(%2, %10, %4, %5, %6, %7, %8, %12, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
          aie.objectfifo.release @of_out_mainB21(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_mainB21(Consume, 5)
      }
      aie.end
    } {link_with = "kernels.a"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
        %c0_0 = arith.constant 0 : index
        %2 = memref.load %1[%c0_0] : memref<96xbf16>
        aie.objectfifo.release @in0(Consume, 1)
        %3 = aie.objectfifo.acquire @of_in_mainA02(Consume, 5) : !aie.objectfifosubview<memref<768xbf16>>
        %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %5 = aie.objectfifo.subview.access %3[1] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %6 = aie.objectfifo.subview.access %3[2] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %7 = aie.objectfifo.subview.access %3[3] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %8 = aie.objectfifo.subview.access %3[4] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c0_1 = arith.constant 0 : index
        %c2048 = arith.constant 2048 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_1 to %c2048 step %c1_2 {
          %9 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
          %11 = aie.objectfifo.acquire @of_out_mainA02(Produce, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %12 = aie.objectfifo.subview.access %11[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %c768_i32 = arith.constant 768 : i32
          func.call @main_kernel(%2, %10, %4, %5, %6, %7, %8, %12, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
          aie.objectfifo.release @of_out_mainA02(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_mainA02(Consume, 5)
      }
      aie.end
    } {link_with = "kernels.a"}
    %core_2_4 = aie.core(%tile_2_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
        %c0_0 = arith.constant 0 : index
        %2 = memref.load %1[%c0_0] : memref<96xbf16>
        aie.objectfifo.release @in0(Consume, 1)
        %3 = aie.objectfifo.acquire @of_in_mainB22(Consume, 5) : !aie.objectfifosubview<memref<768xbf16>>
        %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %5 = aie.objectfifo.subview.access %3[1] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %6 = aie.objectfifo.subview.access %3[2] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %7 = aie.objectfifo.subview.access %3[3] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %8 = aie.objectfifo.subview.access %3[4] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c0_1 = arith.constant 0 : index
        %c2048 = arith.constant 2048 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_1 to %c2048 step %c1_2 {
          %9 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
          %11 = aie.objectfifo.acquire @of_out_mainB22(Produce, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %12 = aie.objectfifo.subview.access %11[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %c768_i32 = arith.constant 768 : i32
          func.call @main_kernel(%2, %10, %4, %5, %6, %7, %8, %12, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
          aie.objectfifo.release @of_out_mainB22(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_mainB22(Consume, 5)
      }
      aie.end
    } {link_with = "kernels.a"}
    %core_0_5 = aie.core(%tile_0_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
        %c0_0 = arith.constant 0 : index
        %2 = memref.load %1[%c0_0] : memref<96xbf16>
        aie.objectfifo.release @in0(Consume, 1)
        %3 = aie.objectfifo.acquire @of_in_mainA03(Consume, 5) : !aie.objectfifosubview<memref<768xbf16>>
        %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %5 = aie.objectfifo.subview.access %3[1] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %6 = aie.objectfifo.subview.access %3[2] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %7 = aie.objectfifo.subview.access %3[3] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %8 = aie.objectfifo.subview.access %3[4] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c0_1 = arith.constant 0 : index
        %c2048 = arith.constant 2048 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_1 to %c2048 step %c1_2 {
          %9 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
          %11 = aie.objectfifo.acquire @of_out_mainA03(Produce, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %12 = aie.objectfifo.subview.access %11[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %c768_i32 = arith.constant 768 : i32
          func.call @main_kernel(%2, %10, %4, %5, %6, %7, %8, %12, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
          aie.objectfifo.release @of_out_mainA03(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_mainA03(Consume, 5)
      }
      aie.end
    } {link_with = "kernels.a"}
    %core_2_5 = aie.core(%tile_2_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
        %c0_0 = arith.constant 0 : index
        %2 = memref.load %1[%c0_0] : memref<96xbf16>
        aie.objectfifo.release @in0(Consume, 1)
        %3 = aie.objectfifo.acquire @of_in_mainB23(Consume, 5) : !aie.objectfifosubview<memref<768xbf16>>
        %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %5 = aie.objectfifo.subview.access %3[1] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %6 = aie.objectfifo.subview.access %3[2] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %7 = aie.objectfifo.subview.access %3[3] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %8 = aie.objectfifo.subview.access %3[4] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c0_1 = arith.constant 0 : index
        %c2048 = arith.constant 2048 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_1 to %c2048 step %c1_2 {
          %9 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
          %11 = aie.objectfifo.acquire @of_out_mainB23(Produce, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %12 = aie.objectfifo.subview.access %11[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %c768_i32 = arith.constant 768 : i32
          func.call @main_kernel(%2, %10, %4, %5, %6, %7, %8, %12, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
          aie.objectfifo.release @of_out_mainB23(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_mainB23(Consume, 5)
      }
      aie.end
    } {link_with = "kernels.a"}
    %core_1_3 = aie.core(%tile_1_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
        %c0_0 = arith.constant 0 : index
        %2 = memref.load %1[%c0_0] : memref<96xbf16>
        aie.objectfifo.release @in0(Consume, 1)
        %3 = aie.objectfifo.acquire @of_in_mainA11(Consume, 5) : !aie.objectfifosubview<memref<768xbf16>>
        %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %5 = aie.objectfifo.subview.access %3[1] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %6 = aie.objectfifo.subview.access %3[2] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %7 = aie.objectfifo.subview.access %3[3] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %8 = aie.objectfifo.subview.access %3[4] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c0_1 = arith.constant 0 : index
        %c2048 = arith.constant 2048 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_1 to %c2048 step %c1_2 {
          %9 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
          %11 = aie.objectfifo.acquire @of_out_mainA11(Produce, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %12 = aie.objectfifo.subview.access %11[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %c768_i32 = arith.constant 768 : i32
          func.call @main_kernel(%2, %10, %4, %5, %6, %7, %8, %12, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
          aie.objectfifo.release @of_out_mainA11(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_mainA11(Consume, 5)
      }
      aie.end
    } {link_with = "kernels.a"}
    %core_3_3 = aie.core(%tile_3_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
        %c0_0 = arith.constant 0 : index
        %2 = memref.load %1[%c0_0] : memref<96xbf16>
        aie.objectfifo.release @in0(Consume, 1)
        %3 = aie.objectfifo.acquire @of_in_mainB31(Consume, 5) : !aie.objectfifosubview<memref<768xbf16>>
        %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %5 = aie.objectfifo.subview.access %3[1] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %6 = aie.objectfifo.subview.access %3[2] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %7 = aie.objectfifo.subview.access %3[3] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %8 = aie.objectfifo.subview.access %3[4] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c0_1 = arith.constant 0 : index
        %c2048 = arith.constant 2048 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_1 to %c2048 step %c1_2 {
          %9 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
          %11 = aie.objectfifo.acquire @of_out_mainB31(Produce, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %12 = aie.objectfifo.subview.access %11[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %c768_i32 = arith.constant 768 : i32
          func.call @main_kernel(%2, %10, %4, %5, %6, %7, %8, %12, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
          aie.objectfifo.release @of_out_mainB31(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_mainB31(Consume, 5)
      }
      aie.end
    } {link_with = "kernels.a"}
    %core_1_4 = aie.core(%tile_1_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
        %c0_0 = arith.constant 0 : index
        %2 = memref.load %1[%c0_0] : memref<96xbf16>
        aie.objectfifo.release @in0(Consume, 1)
        %3 = aie.objectfifo.acquire @of_in_mainA12(Consume, 5) : !aie.objectfifosubview<memref<768xbf16>>
        %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %5 = aie.objectfifo.subview.access %3[1] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %6 = aie.objectfifo.subview.access %3[2] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %7 = aie.objectfifo.subview.access %3[3] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %8 = aie.objectfifo.subview.access %3[4] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c0_1 = arith.constant 0 : index
        %c2048 = arith.constant 2048 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_1 to %c2048 step %c1_2 {
          %9 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
          %11 = aie.objectfifo.acquire @of_out_mainA12(Produce, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %12 = aie.objectfifo.subview.access %11[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %c768_i32 = arith.constant 768 : i32
          func.call @main_kernel(%2, %10, %4, %5, %6, %7, %8, %12, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
          aie.objectfifo.release @of_out_mainA12(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_mainA12(Consume, 5)
      }
      aie.end
    } {link_with = "kernels.a"}
    %core_3_4 = aie.core(%tile_3_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
        %c0_0 = arith.constant 0 : index
        %2 = memref.load %1[%c0_0] : memref<96xbf16>
        aie.objectfifo.release @in0(Consume, 1)
        %3 = aie.objectfifo.acquire @of_in_mainB32(Consume, 5) : !aie.objectfifosubview<memref<768xbf16>>
        %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %5 = aie.objectfifo.subview.access %3[1] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %6 = aie.objectfifo.subview.access %3[2] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %7 = aie.objectfifo.subview.access %3[3] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %8 = aie.objectfifo.subview.access %3[4] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c0_1 = arith.constant 0 : index
        %c2048 = arith.constant 2048 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_1 to %c2048 step %c1_2 {
          %9 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
          %11 = aie.objectfifo.acquire @of_out_mainB32(Produce, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %12 = aie.objectfifo.subview.access %11[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %c768_i32 = arith.constant 768 : i32
          func.call @main_kernel(%2, %10, %4, %5, %6, %7, %8, %12, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
          aie.objectfifo.release @of_out_mainB32(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_mainB32(Consume, 5)
      }
      aie.end
    } {link_with = "kernels.a"}
    %core_1_5 = aie.core(%tile_1_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
        %c0_0 = arith.constant 0 : index
        %2 = memref.load %1[%c0_0] : memref<96xbf16>
        aie.objectfifo.release @in0(Consume, 1)
        %3 = aie.objectfifo.acquire @of_in_mainA13(Consume, 5) : !aie.objectfifosubview<memref<768xbf16>>
        %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %5 = aie.objectfifo.subview.access %3[1] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %6 = aie.objectfifo.subview.access %3[2] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %7 = aie.objectfifo.subview.access %3[3] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %8 = aie.objectfifo.subview.access %3[4] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c0_1 = arith.constant 0 : index
        %c2048 = arith.constant 2048 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_1 to %c2048 step %c1_2 {
          %9 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
          %11 = aie.objectfifo.acquire @of_out_mainA13(Produce, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %12 = aie.objectfifo.subview.access %11[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %c768_i32 = arith.constant 768 : i32
          func.call @main_kernel(%2, %10, %4, %5, %6, %7, %8, %12, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
          aie.objectfifo.release @of_out_mainA13(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_mainA13(Consume, 5)
      }
      aie.end
    } {link_with = "kernels.a"}
    %core_3_5 = aie.core(%tile_3_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %0 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
        %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
        %c0_0 = arith.constant 0 : index
        %2 = memref.load %1[%c0_0] : memref<96xbf16>
        aie.objectfifo.release @in0(Consume, 1)
        %3 = aie.objectfifo.acquire @of_in_mainB33(Consume, 5) : !aie.objectfifosubview<memref<768xbf16>>
        %4 = aie.objectfifo.subview.access %3[0] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %5 = aie.objectfifo.subview.access %3[1] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %6 = aie.objectfifo.subview.access %3[2] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %7 = aie.objectfifo.subview.access %3[3] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %8 = aie.objectfifo.subview.access %3[4] : !aie.objectfifosubview<memref<768xbf16>> -> memref<768xbf16>
        %c0_1 = arith.constant 0 : index
        %c2048 = arith.constant 2048 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_1 to %c2048 step %c1_2 {
          %9 = aie.objectfifo.acquire @in0(Consume, 1) : !aie.objectfifosubview<memref<96xbf16>>
          %10 = aie.objectfifo.subview.access %9[0] : !aie.objectfifosubview<memref<96xbf16>> -> memref<96xbf16>
          %11 = aie.objectfifo.acquire @of_out_mainB33(Produce, 1) : !aie.objectfifosubview<memref<32xbf16>>
          %12 = aie.objectfifo.subview.access %11[0] : !aie.objectfifosubview<memref<32xbf16>> -> memref<32xbf16>
          %c768_i32 = arith.constant 768 : i32
          func.call @main_kernel(%2, %10, %4, %5, %6, %7, %8, %12, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
          aie.objectfifo.release @of_out_mainB33(Produce, 1)
          aie.objectfifo.release @in0(Consume, 1)
        }
        aie.objectfifo.release @of_in_mainB33(Consume, 5)
      }
      aie.end
    } {link_with = "kernels.a"}
    aie.packet_flow(1) {
      aie.packet_source<%tile_0_3, Trace : 0>
      aie.packet_dest<%shim_noc_tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(2) {
      aie.packet_source<%tile_0_4, Trace : 0>
      aie.packet_dest<%shim_noc_tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(3) {
      aie.packet_source<%tile_0_5, Trace : 0>
      aie.packet_dest<%shim_noc_tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(4) {
      aie.packet_source<%tile_1_3, Trace : 0>
      aie.packet_dest<%shim_noc_tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(5) {
      aie.packet_source<%tile_1_4, Trace : 0>
      aie.packet_dest<%shim_noc_tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(6) {
      aie.packet_source<%tile_1_5, Trace : 0>
      aie.packet_dest<%shim_noc_tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(7) {
      aie.packet_source<%tile_2_3, Trace : 0>
      aie.packet_dest<%shim_noc_tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(8) {
      aie.packet_source<%tile_2_4, Trace : 0>
      aie.packet_dest<%shim_noc_tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(9) {
      aie.packet_source<%tile_2_5, Trace : 0>
      aie.packet_dest<%shim_noc_tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(10) {
      aie.packet_source<%tile_3_3, Trace : 0>
      aie.packet_dest<%shim_noc_tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(11) {
      aie.packet_source<%tile_3_4, Trace : 0>
      aie.packet_dest<%shim_noc_tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aie.packet_flow(12) {
      aie.packet_source<%tile_3_5, Trace : 0>
      aie.packet_dest<%shim_noc_tile_1_0, DMA : 1>
    } {keep_pkt_header = true}
    aiex.runtime_sequence(%arg0: memref<23040xbf16>, %arg1: memref<23040xbf16>, %arg2: memref<23040xbf16>, %arg3: memref<23040xbf16>) {
      aiex.npu.write32 {address = 213200 : ui32, column = 0 : i32, row = 3 : i32, value = 7995392 : ui32}
      aiex.npu.write32 {address = 213204 : ui32, column = 0 : i32, row = 3 : i32, value = 1 : ui32}
      aiex.npu.write32 {address = 213216 : ui32, column = 0 : i32, row = 3 : i32, value = 1260724769 : ui32}
      aiex.npu.write32 {address = 213220 : ui32, column = 0 : i32, row = 3 : i32, value = 439168079 : ui32}
      aiex.npu.write32 {address = 261888 : ui32, column = 0 : i32, row = 3 : i32, value = 289 : ui32}
      aiex.npu.write32 {address = 261892 : ui32, column = 0 : i32, row = 3 : i32, value = 0 : ui32}
      aiex.npu.write32 {address = 212992 : ui32, column = 0 : i32, row = 3 : i32, value = 31232 : ui32}
      aiex.npu.writebd {bd_id = 15 : i32, buffer_length = 16384 : i32, buffer_offset = 65536 : i32, column = 1 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 1 : i32, packet_type = 0 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 33673700 : ui32, arg_idx = 2 : i32, arg_plus = 65536 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 1 : i32, row = 0 : i32, value = 15 : ui32}
      aiex.npu.write32 {address = 213200 : ui32, column = 0 : i32, row = 4 : i32, value = 7995392 : ui32}
      aiex.npu.write32 {address = 213204 : ui32, column = 0 : i32, row = 4 : i32, value = 2 : ui32}
      aiex.npu.write32 {address = 213216 : ui32, column = 0 : i32, row = 4 : i32, value = 1260724769 : ui32}
      aiex.npu.write32 {address = 213220 : ui32, column = 0 : i32, row = 4 : i32, value = 439168079 : ui32}
      aiex.npu.write32 {address = 261888 : ui32, column = 0 : i32, row = 4 : i32, value = 289 : ui32}
      aiex.npu.write32 {address = 261892 : ui32, column = 0 : i32, row = 4 : i32, value = 0 : ui32}
      aiex.npu.write32 {address = 212992 : ui32, column = 0 : i32, row = 4 : i32, value = 31232 : ui32}
      aiex.npu.writebd {bd_id = 14 : i32, buffer_length = 16384 : i32, buffer_offset = 65536 : i32, column = 1 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 2 : i32, packet_type = 0 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 33673668 : ui32, arg_idx = 2 : i32, arg_plus = 65536 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 1 : i32, row = 0 : i32, value = 14 : ui32}
      aiex.npu.write32 {address = 213200 : ui32, column = 0 : i32, row = 5 : i32, value = 7995392 : ui32}
      aiex.npu.write32 {address = 213204 : ui32, column = 0 : i32, row = 5 : i32, value = 3 : ui32}
      aiex.npu.write32 {address = 213216 : ui32, column = 0 : i32, row = 5 : i32, value = 1260724769 : ui32}
      aiex.npu.write32 {address = 213220 : ui32, column = 0 : i32, row = 5 : i32, value = 439168079 : ui32}
      aiex.npu.write32 {address = 261888 : ui32, column = 0 : i32, row = 5 : i32, value = 289 : ui32}
      aiex.npu.write32 {address = 261892 : ui32, column = 0 : i32, row = 5 : i32, value = 0 : ui32}
      aiex.npu.write32 {address = 212992 : ui32, column = 0 : i32, row = 5 : i32, value = 31232 : ui32}
      aiex.npu.writebd {bd_id = 13 : i32, buffer_length = 16384 : i32, buffer_offset = 65536 : i32, column = 1 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 3 : i32, packet_type = 0 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 33673636 : ui32, arg_idx = 2 : i32, arg_plus = 65536 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 1 : i32, row = 0 : i32, value = 13 : ui32}
      aiex.npu.write32 {address = 213200 : ui32, column = 1 : i32, row = 3 : i32, value = 7995392 : ui32}
      aiex.npu.write32 {address = 213204 : ui32, column = 1 : i32, row = 3 : i32, value = 4 : ui32}
      aiex.npu.write32 {address = 213216 : ui32, column = 1 : i32, row = 3 : i32, value = 1260724769 : ui32}
      aiex.npu.write32 {address = 213220 : ui32, column = 1 : i32, row = 3 : i32, value = 439168079 : ui32}
      aiex.npu.write32 {address = 261888 : ui32, column = 1 : i32, row = 3 : i32, value = 289 : ui32}
      aiex.npu.write32 {address = 261892 : ui32, column = 1 : i32, row = 3 : i32, value = 0 : ui32}
      aiex.npu.write32 {address = 212992 : ui32, column = 1 : i32, row = 3 : i32, value = 31232 : ui32}
      aiex.npu.writebd {bd_id = 12 : i32, buffer_length = 16384 : i32, buffer_offset = 65536 : i32, column = 1 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 4 : i32, packet_type = 0 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 33673604 : ui32, arg_idx = 2 : i32, arg_plus = 65536 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 1 : i32, row = 0 : i32, value = 12 : ui32}
      aiex.npu.write32 {address = 213200 : ui32, column = 1 : i32, row = 4 : i32, value = 7995392 : ui32}
      aiex.npu.write32 {address = 213204 : ui32, column = 1 : i32, row = 4 : i32, value = 5 : ui32}
      aiex.npu.write32 {address = 213216 : ui32, column = 1 : i32, row = 4 : i32, value = 1260724769 : ui32}
      aiex.npu.write32 {address = 213220 : ui32, column = 1 : i32, row = 4 : i32, value = 439168079 : ui32}
      aiex.npu.write32 {address = 261888 : ui32, column = 1 : i32, row = 4 : i32, value = 289 : ui32}
      aiex.npu.write32 {address = 261892 : ui32, column = 1 : i32, row = 4 : i32, value = 0 : ui32}
      aiex.npu.write32 {address = 212992 : ui32, column = 1 : i32, row = 4 : i32, value = 31232 : ui32}
      aiex.npu.writebd {bd_id = 11 : i32, buffer_length = 16384 : i32, buffer_offset = 65536 : i32, column = 1 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 5 : i32, packet_type = 0 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 33673572 : ui32, arg_idx = 2 : i32, arg_plus = 65536 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 1 : i32, row = 0 : i32, value = 11 : ui32}
      aiex.npu.write32 {address = 213200 : ui32, column = 1 : i32, row = 5 : i32, value = 7995392 : ui32}
      aiex.npu.write32 {address = 213204 : ui32, column = 1 : i32, row = 5 : i32, value = 6 : ui32}
      aiex.npu.write32 {address = 213216 : ui32, column = 1 : i32, row = 5 : i32, value = 1260724769 : ui32}
      aiex.npu.write32 {address = 213220 : ui32, column = 1 : i32, row = 5 : i32, value = 439168079 : ui32}
      aiex.npu.write32 {address = 261888 : ui32, column = 1 : i32, row = 5 : i32, value = 289 : ui32}
      aiex.npu.write32 {address = 261892 : ui32, column = 1 : i32, row = 5 : i32, value = 0 : ui32}
      aiex.npu.write32 {address = 212992 : ui32, column = 1 : i32, row = 5 : i32, value = 31232 : ui32}
      aiex.npu.writebd {bd_id = 10 : i32, buffer_length = 16384 : i32, buffer_offset = 65536 : i32, column = 1 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 6 : i32, packet_type = 0 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 33673540 : ui32, arg_idx = 2 : i32, arg_plus = 65536 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 1 : i32, row = 0 : i32, value = 10 : ui32}
      aiex.npu.write32 {address = 213200 : ui32, column = 2 : i32, row = 3 : i32, value = 7995392 : ui32}
      aiex.npu.write32 {address = 213204 : ui32, column = 2 : i32, row = 3 : i32, value = 7 : ui32}
      aiex.npu.write32 {address = 213216 : ui32, column = 2 : i32, row = 3 : i32, value = 1260724769 : ui32}
      aiex.npu.write32 {address = 213220 : ui32, column = 2 : i32, row = 3 : i32, value = 439168079 : ui32}
      aiex.npu.write32 {address = 261888 : ui32, column = 2 : i32, row = 3 : i32, value = 289 : ui32}
      aiex.npu.write32 {address = 261892 : ui32, column = 2 : i32, row = 3 : i32, value = 0 : ui32}
      aiex.npu.write32 {address = 212992 : ui32, column = 2 : i32, row = 3 : i32, value = 31232 : ui32}
      aiex.npu.writebd {bd_id = 9 : i32, buffer_length = 16384 : i32, buffer_offset = 65536 : i32, column = 1 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 7 : i32, packet_type = 0 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 33673508 : ui32, arg_idx = 2 : i32, arg_plus = 65536 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 1 : i32, row = 0 : i32, value = 9 : ui32}
      aiex.npu.write32 {address = 213200 : ui32, column = 2 : i32, row = 4 : i32, value = 7995392 : ui32}
      aiex.npu.write32 {address = 213204 : ui32, column = 2 : i32, row = 4 : i32, value = 8 : ui32}
      aiex.npu.write32 {address = 213216 : ui32, column = 2 : i32, row = 4 : i32, value = 1260724769 : ui32}
      aiex.npu.write32 {address = 213220 : ui32, column = 2 : i32, row = 4 : i32, value = 439168079 : ui32}
      aiex.npu.write32 {address = 261888 : ui32, column = 2 : i32, row = 4 : i32, value = 289 : ui32}
      aiex.npu.write32 {address = 261892 : ui32, column = 2 : i32, row = 4 : i32, value = 0 : ui32}
      aiex.npu.write32 {address = 212992 : ui32, column = 2 : i32, row = 4 : i32, value = 31232 : ui32}
      aiex.npu.writebd {bd_id = 8 : i32, buffer_length = 16384 : i32, buffer_offset = 65536 : i32, column = 1 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 8 : i32, packet_type = 0 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 33673476 : ui32, arg_idx = 2 : i32, arg_plus = 65536 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 1 : i32, row = 0 : i32, value = 8 : ui32}
      aiex.npu.write32 {address = 213200 : ui32, column = 2 : i32, row = 5 : i32, value = 7995392 : ui32}
      aiex.npu.write32 {address = 213204 : ui32, column = 2 : i32, row = 5 : i32, value = 9 : ui32}
      aiex.npu.write32 {address = 213216 : ui32, column = 2 : i32, row = 5 : i32, value = 1260724769 : ui32}
      aiex.npu.write32 {address = 213220 : ui32, column = 2 : i32, row = 5 : i32, value = 439168079 : ui32}
      aiex.npu.write32 {address = 261888 : ui32, column = 2 : i32, row = 5 : i32, value = 289 : ui32}
      aiex.npu.write32 {address = 261892 : ui32, column = 2 : i32, row = 5 : i32, value = 0 : ui32}
      aiex.npu.write32 {address = 212992 : ui32, column = 2 : i32, row = 5 : i32, value = 31232 : ui32}
      aiex.npu.writebd {bd_id = 7 : i32, buffer_length = 16384 : i32, buffer_offset = 65536 : i32, column = 1 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 9 : i32, packet_type = 0 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 33673444 : ui32, arg_idx = 2 : i32, arg_plus = 65536 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 1 : i32, row = 0 : i32, value = 7 : ui32}
      aiex.npu.write32 {address = 213200 : ui32, column = 3 : i32, row = 3 : i32, value = 7995392 : ui32}
      aiex.npu.write32 {address = 213204 : ui32, column = 3 : i32, row = 3 : i32, value = 10 : ui32}
      aiex.npu.write32 {address = 213216 : ui32, column = 3 : i32, row = 3 : i32, value = 1260724769 : ui32}
      aiex.npu.write32 {address = 213220 : ui32, column = 3 : i32, row = 3 : i32, value = 439168079 : ui32}
      aiex.npu.write32 {address = 261888 : ui32, column = 3 : i32, row = 3 : i32, value = 289 : ui32}
      aiex.npu.write32 {address = 261892 : ui32, column = 3 : i32, row = 3 : i32, value = 0 : ui32}
      aiex.npu.write32 {address = 212992 : ui32, column = 3 : i32, row = 3 : i32, value = 31232 : ui32}
      aiex.npu.writebd {bd_id = 6 : i32, buffer_length = 16384 : i32, buffer_offset = 65536 : i32, column = 1 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 10 : i32, packet_type = 0 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 33673412 : ui32, arg_idx = 2 : i32, arg_plus = 65536 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 1 : i32, row = 0 : i32, value = 6 : ui32}
      aiex.npu.write32 {address = 213200 : ui32, column = 3 : i32, row = 4 : i32, value = 7995392 : ui32}
      aiex.npu.write32 {address = 213204 : ui32, column = 3 : i32, row = 4 : i32, value = 11 : ui32}
      aiex.npu.write32 {address = 213216 : ui32, column = 3 : i32, row = 4 : i32, value = 1260724769 : ui32}
      aiex.npu.write32 {address = 213220 : ui32, column = 3 : i32, row = 4 : i32, value = 439168079 : ui32}
      aiex.npu.write32 {address = 261888 : ui32, column = 3 : i32, row = 4 : i32, value = 289 : ui32}
      aiex.npu.write32 {address = 261892 : ui32, column = 3 : i32, row = 4 : i32, value = 0 : ui32}
      aiex.npu.write32 {address = 212992 : ui32, column = 3 : i32, row = 4 : i32, value = 31232 : ui32}
      aiex.npu.writebd {bd_id = 5 : i32, buffer_length = 16384 : i32, buffer_offset = 65536 : i32, column = 1 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 11 : i32, packet_type = 0 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 33673380 : ui32, arg_idx = 2 : i32, arg_plus = 65536 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 1 : i32, row = 0 : i32, value = 5 : ui32}
      aiex.npu.write32 {address = 213200 : ui32, column = 3 : i32, row = 5 : i32, value = 7995392 : ui32}
      aiex.npu.write32 {address = 213204 : ui32, column = 3 : i32, row = 5 : i32, value = 12 : ui32}
      aiex.npu.write32 {address = 213216 : ui32, column = 3 : i32, row = 5 : i32, value = 1260724769 : ui32}
      aiex.npu.write32 {address = 213220 : ui32, column = 3 : i32, row = 5 : i32, value = 439168079 : ui32}
      aiex.npu.write32 {address = 261888 : ui32, column = 3 : i32, row = 5 : i32, value = 289 : ui32}
      aiex.npu.write32 {address = 261892 : ui32, column = 3 : i32, row = 5 : i32, value = 0 : ui32}
      aiex.npu.write32 {address = 212992 : ui32, column = 3 : i32, row = 5 : i32, value = 31232 : ui32}
      aiex.npu.writebd {bd_id = 4 : i32, buffer_length = 16384 : i32, buffer_offset = 65536 : i32, column = 1 : i32, d0_size = 0 : i32, d0_stride = 0 : i32, d0_zero_after = 0 : i32, d0_zero_before = 0 : i32, d1_size = 0 : i32, d1_stride = 0 : i32, d1_zero_after = 0 : i32, d1_zero_before = 0 : i32, d2_size = 0 : i32, d2_stride = 0 : i32, d2_zero_after = 0 : i32, d2_zero_before = 0 : i32, enable_packet = 1 : i32, iteration_current = 0 : i32, iteration_size = 0 : i32, iteration_stride = 0 : i32, lock_acq_enable = 0 : i32, lock_acq_id = 0 : i32, lock_acq_val = 0 : i32, lock_rel_id = 0 : i32, lock_rel_val = 0 : i32, next_bd = 0 : i32, out_of_order_id = 0 : i32, packet_id = 12 : i32, packet_type = 0 : i32, row = 0 : i32, use_next_bd = 0 : i32, valid_bd = 1 : i32}
      aiex.npu.address_patch {addr = 33673348 : ui32, arg_idx = 2 : i32, arg_plus = 65536 : i32}
      aiex.npu.write32 {address = 119308 : ui32, column = 1 : i32, row = 0 : i32, value = 4 : ui32}
      aiex.npu.write32 {address = 212992 : ui32, column = 1 : i32, row = 0 : i32, value = 32512 : ui32}
      aiex.npu.write32 {address = 213068 : ui32, column = 1 : i32, row = 0 : i32, value = 127 : ui32}
      aiex.npu.write32 {address = 213000 : ui32, column = 1 : i32, row = 0 : i32, value = 127 : ui32}
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 196704][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<23040xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 23040][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<23040xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 23040][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<23040xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg3[0, 0, 0, 0][1, 1, 1, 65536][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<23040xbf16>
      aiex.npu.dma_wait {symbol = @out}
    }
  }
}

