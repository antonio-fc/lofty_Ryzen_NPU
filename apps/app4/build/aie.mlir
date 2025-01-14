module {
  aie.device(npu1_4col) {
    func.func private @vector_scalar_mul_aie_scalar(memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32)
    func.func private @passthrough(memref<1024xf32>, memref<1024xf32>, i32)
    func.func private @vector_add_aie_scalar(memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32)
    func.func private @vector_mult_aie_scalar(memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32)
    func.func private @mean(memref<1024xf32>, memref<1xf32>, i32)
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
    aie.objectfifo @in0(%tile_0_0, {%tile_2_4}, 2 : i32) : !aie.objectfifo<memref<1xf32>> 
    aie.objectfifo @in1(%tile_0_0, {%tile_1_3}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @in2(%tile_1_0, {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @in3(%tile_1_0, {%tile_1_2}, 2 : i32) : !aie.objectfifo<memref<1xf32>> 
    aie.objectfifo @of_c20toc21(%tile_2_2, {%tile_3_3}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @of_c30toc21(%tile_3_2, {%tile_3_3}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @of_c10toc11(%tile_1_2, {%tile_2_3}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @of_c21toc11(%tile_3_3, {%tile_2_3}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @of_c21toc22(%tile_2_3, {%tile_2_4}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @of_c22toc12(%tile_2_4, {%tile_1_4}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @of_c12toc11(%tile_1_4, {%tile_1_3}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @ofc11toc02(%tile_1_3, {%tile_0_4}, 2 : i32) : !aie.objectfifo<memref<1024xf32>> 
    aie.objectfifo @ofc02toc01(%tile_0_4, {%tile_0_3}, 10 : i32) : !aie.objectfifo<memref<1xf32>> 
    aie.objectfifo @out(%tile_0_3, {%tile_1_0}, 2 : i32) : !aie.objectfifo<memref<1xf32>> 
    %core_1_2 = aie.core(%tile_1_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c2 = arith.constant 2 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c2 step %c1_1 {
          %0 = aie.objectfifo.acquire @in3(Consume, 1) : !aie.objectfifosubview<memref<1xf32>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1xf32>> -> memref<1xf32>
          %c0_2 = arith.constant 0 : index
          %c9 = arith.constant 9 : index
          %c1_3 = arith.constant 1 : index
          scf.for %arg2 = %c0_2 to %c9 step %c1_3 {
            %2 = aie.objectfifo.acquire @of_c10toc11(Produce, 1) : !aie.objectfifosubview<memref<1024xf32>>
            %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
            %4 = aie.objectfifo.acquire @in2(Consume, 1) : !aie.objectfifosubview<memref<1024xf32>>
            %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
            %c1024_i32 = arith.constant 1024 : i32
            func.call @vector_scalar_mul_aie_scalar(%5, %3, %1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
            aie.objectfifo.release @in2(Consume, 1)
            aie.objectfifo.release @of_c10toc11(Produce, 1)
          }
          aie.objectfifo.release @in3(Consume, 1)
        }
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
          %0 = aie.objectfifo.acquire @of_c21toc22(Produce, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %2 = aie.objectfifo.acquire @of_c10toc11(Consume, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @passthrough(%3, %1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
          aie.objectfifo.release @of_c10toc11(Consume, 1)
          aie.objectfifo.release @of_c21toc22(Produce, 1)
        }
      }
      aie.end
    } {link_with = "passthrough.o"}
    %core_2_4 = aie.core(%tile_2_4) {
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
          %2 = aie.objectfifo.acquire @of_c22toc12(Produce, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %4 = aie.objectfifo.acquire @of_c21toc22(Consume, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_scalar_mul_aie_scalar(%5, %3, %1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
          aie.objectfifo.release @of_c21toc22(Consume, 1)
          aie.objectfifo.release @of_c22toc12(Produce, 1)
        }
        aie.objectfifo.release @in0(Consume, 1)
      }
      aie.end
    } {link_with = "scale.o"}
    %core_1_4 = aie.core(%tile_1_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %0 = aie.objectfifo.acquire @of_c12toc11(Produce, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %2 = aie.objectfifo.acquire @of_c22toc12(Consume, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @passthrough(%3, %1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
          aie.objectfifo.release @of_c22toc12(Consume, 1)
          aie.objectfifo.release @of_c12toc11(Produce, 1)
        }
      }
      aie.end
    } {link_with = "passthrough.o"}
    %core_1_3 = aie.core(%tile_1_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %0 = aie.objectfifo.acquire @ofc11toc02(Produce, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %2 = aie.objectfifo.acquire @in1(Consume, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %4 = aie.objectfifo.acquire @of_c12toc11(Consume, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %5 = aie.objectfifo.subview.access %4[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @vector_mult_aie_scalar(%3, %5, %1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
          aie.objectfifo.release @in1(Consume, 1)
          aie.objectfifo.release @of_c12toc11(Consume, 1)
          aie.objectfifo.release @ofc11toc02(Produce, 1)
        }
      }
      aie.end
    } {link_with = "vector_mult.o"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c9 = arith.constant 9 : index
        %c1_1 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c9 step %c1_1 {
          %0 = aie.objectfifo.acquire @ofc02toc01(Produce, 1) : !aie.objectfifosubview<memref<1xf32>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1xf32>> -> memref<1xf32>
          %2 = aie.objectfifo.acquire @ofc11toc02(Consume, 1) : !aie.objectfifosubview<memref<1024xf32>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1024xf32>> -> memref<1024xf32>
          %c1024_i32 = arith.constant 1024 : i32
          func.call @mean(%3, %1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
          aie.objectfifo.release @ofc11toc02(Consume, 1)
          aie.objectfifo.release @ofc02toc01(Produce, 1)
        }
      }
      aie.end
    } {link_with = "mean.o"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      scf.for %arg0 = %c0 to %c9223372036854775807 step %c1 {
        %c0_0 = arith.constant 0 : index
        %c1_1 = arith.constant 1 : index
        %c1_2 = arith.constant 1 : index
        scf.for %arg1 = %c0_0 to %c1_1 step %c1_2 {
          %0 = aie.objectfifo.acquire @out(Produce, 1) : !aie.objectfifosubview<memref<1xf32>>
          %1 = aie.objectfifo.subview.access %0[0] : !aie.objectfifosubview<memref<1xf32>> -> memref<1xf32>
          %2 = aie.objectfifo.acquire @ofc02toc01(Consume, 9) : !aie.objectfifosubview<memref<1xf32>>
          %3 = aie.objectfifo.subview.access %2[0] : !aie.objectfifosubview<memref<1xf32>> -> memref<1xf32>
          %4 = aie.objectfifo.subview.access %2[1] : !aie.objectfifosubview<memref<1xf32>> -> memref<1xf32>
          %5 = aie.objectfifo.subview.access %2[2] : !aie.objectfifosubview<memref<1xf32>> -> memref<1xf32>
          %6 = aie.objectfifo.subview.access %2[3] : !aie.objectfifosubview<memref<1xf32>> -> memref<1xf32>
          %7 = aie.objectfifo.subview.access %2[4] : !aie.objectfifosubview<memref<1xf32>> -> memref<1xf32>
          %8 = aie.objectfifo.subview.access %2[5] : !aie.objectfifosubview<memref<1xf32>> -> memref<1xf32>
          %9 = aie.objectfifo.subview.access %2[6] : !aie.objectfifosubview<memref<1xf32>> -> memref<1xf32>
          %10 = aie.objectfifo.subview.access %2[7] : !aie.objectfifosubview<memref<1xf32>> -> memref<1xf32>
          %11 = aie.objectfifo.subview.access %2[8] : !aie.objectfifosubview<memref<1xf32>> -> memref<1xf32>
          %c0_3 = arith.constant 0 : index
          %12 = memref.load %3[%c0_3] : memref<1xf32>
          %c0_4 = arith.constant 0 : index
          %13 = memref.load %4[%c0_4] : memref<1xf32>
          %14 = arith.addf %12, %13 : f32
          %c0_5 = arith.constant 0 : index
          %15 = memref.load %5[%c0_5] : memref<1xf32>
          %16 = arith.addf %14, %15 : f32
          %c0_6 = arith.constant 0 : index
          %17 = memref.load %6[%c0_6] : memref<1xf32>
          %18 = arith.addf %16, %17 : f32
          %c0_7 = arith.constant 0 : index
          %19 = memref.load %7[%c0_7] : memref<1xf32>
          %20 = arith.addf %18, %19 : f32
          %c0_8 = arith.constant 0 : index
          %21 = memref.load %8[%c0_8] : memref<1xf32>
          %22 = arith.addf %20, %21 : f32
          %c0_9 = arith.constant 0 : index
          %23 = memref.load %9[%c0_9] : memref<1xf32>
          %24 = arith.addf %22, %23 : f32
          %c0_10 = arith.constant 0 : index
          %25 = memref.load %10[%c0_10] : memref<1xf32>
          %26 = arith.addf %24, %25 : f32
          %c0_11 = arith.constant 0 : index
          %27 = memref.load %11[%c0_11] : memref<1xf32>
          %28 = arith.addf %26, %27 : f32
          %cst = arith.constant 9.000000e+00 : f32
          %29 = arith.divf %28, %cst : f32
          %c0_12 = arith.constant 0 : index
          memref.store %29, %1[%c0_12] : memref<1xf32>
          aie.objectfifo.release @ofc02toc01(Consume, 9)
          aie.objectfifo.release @out(Produce, 1)
        }
      }
      aie.end
    } {link_with = "passthrough.o"}
    aiex.runtime_sequence(%arg0: memref<1xf32>, %arg1: memref<9216xf32>, %arg2: memref<9216xf32>, %arg3: memref<1xf32>, %arg4: memref<9xf32>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 1][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<1xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 9216][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<9216xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 9216][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<9216xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg3[0, 0, 0, 0][1, 1, 1, 2][0, 0, 0, 1]) {id = 4 : i64, metadata = @in3} : memref<1xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg4[0, 0, 0, 0][1, 1, 1, 1][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<9xf32>
      aiex.npu.dma_wait {symbol = @out}
    }
  }
}

