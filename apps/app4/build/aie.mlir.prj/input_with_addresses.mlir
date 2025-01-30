module {
  aie.device(npu1_4col) {
    memref.global "public" @out_cons : memref<1xf32>
    memref.global "public" @out : memref<1xf32>
    memref.global "public" @ofc02toc01 : memref<1xf32>
    memref.global "public" @ofc11toc02_cons : memref<1024xf32>
    memref.global "public" @ofc11toc02 : memref<1024xf32>
    memref.global "public" @of_c12toc11 : memref<1024xf32>
    memref.global "public" @of_c22toc12 : memref<1024xf32>
    memref.global "public" @of_c21toc22 : memref<1024xf32>
    memref.global "public" @of_c21toc11 : memref<1024xf32>
    memref.global "public" @of_c10toc11_cons : memref<1024xf32>
    memref.global "public" @of_c10toc11 : memref<1024xf32>
    memref.global "public" @of_c30toc21 : memref<1024xf32>
    memref.global "public" @of_c20toc21_cons : memref<1024xf32>
    memref.global "public" @of_c20toc21 : memref<1024xf32>
    memref.global "public" @in3_cons : memref<1xf32>
    memref.global "public" @in3 : memref<1xf32>
    memref.global "public" @in2_cons : memref<1024xf32>
    memref.global "public" @in2 : memref<1024xf32>
    memref.global "public" @in1_cons : memref<1024xf32>
    memref.global "public" @in1 : memref<1024xf32>
    memref.global "public" @in0_cons : memref<1xf32>
    memref.global "public" @in0 : memref<1xf32>
    func.func private @vector_scalar_mul_aie_scalar(memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32)
    func.func private @passthrough(memref<1024xf32>, memref<1024xf32>, i32)
    func.func private @vector_add_aie_scalar(memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32)
    func.func private @vector_mult_aie_scalar(memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32)
    func.func private @mean(memref<1024xf32>, memref<1xf32>, i32)
    %tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_0_1 = aie.tile(0, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_0_2 = aie.tile(0, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_0_3 = aie.tile(0, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_0_4 = aie.tile(0, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_0_5 = aie.tile(0, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_1_0 = aie.tile(1, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_1_1 = aie.tile(1, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_1_2 = aie.tile(1, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_1_3 = aie.tile(1, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_1_4 = aie.tile(1, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_1_5 = aie.tile(1, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_2_0 = aie.tile(2, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_2_1 = aie.tile(2, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_2_2 = aie.tile(2, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_2_3 = aie.tile(2, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_2_4 = aie.tile(2, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_2_5 = aie.tile(2, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_3_0 = aie.tile(3, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_3_1 = aie.tile(3, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_3_2 = aie.tile(3, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_3_3 = aie.tile(3, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_3_4 = aie.tile(3, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_3_5 = aie.tile(3, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %out_cons_prod_lock = aie.lock(%tile_1_0, 4) {init = 1 : i32, sym_name = "out_cons_prod_lock"}
    %out_cons_cons_lock = aie.lock(%tile_1_0, 5) {init = 0 : i32, sym_name = "out_cons_cons_lock"}
    %out_buff_0 = aie.buffer(%tile_0_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out_buff_0"} : memref<1xf32> 
    %out_buff_1 = aie.buffer(%tile_0_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out_buff_1"} : memref<1xf32> 
    %out_prod_lock = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "out_prod_lock"}
    %out_cons_lock = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "out_cons_lock"}
    %ofc02toc01_buff_0 = aie.buffer(%tile_0_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "ofc02toc01_buff_0"} : memref<1xf32> 
    %ofc02toc01_buff_1 = aie.buffer(%tile_0_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "ofc02toc01_buff_1"} : memref<1xf32> 
    %ofc02toc01_buff_2 = aie.buffer(%tile_0_4) {address = 5120 : i32, mem_bank = 0 : i32, sym_name = "ofc02toc01_buff_2"} : memref<1xf32> 
    %ofc02toc01_buff_3 = aie.buffer(%tile_0_4) {address = 20480 : i32, mem_bank = 1 : i32, sym_name = "ofc02toc01_buff_3"} : memref<1xf32> 
    %ofc02toc01_buff_4 = aie.buffer(%tile_0_4) {address = 32772 : i32, mem_bank = 2 : i32, sym_name = "ofc02toc01_buff_4"} : memref<1xf32> 
    %ofc02toc01_buff_5 = aie.buffer(%tile_0_4) {address = 49156 : i32, mem_bank = 3 : i32, sym_name = "ofc02toc01_buff_5"} : memref<1xf32> 
    %ofc02toc01_buff_6 = aie.buffer(%tile_0_4) {address = 5124 : i32, mem_bank = 0 : i32, sym_name = "ofc02toc01_buff_6"} : memref<1xf32> 
    %ofc02toc01_buff_7 = aie.buffer(%tile_0_4) {address = 20484 : i32, mem_bank = 1 : i32, sym_name = "ofc02toc01_buff_7"} : memref<1xf32> 
    %ofc02toc01_buff_8 = aie.buffer(%tile_0_4) {address = 32776 : i32, mem_bank = 2 : i32, sym_name = "ofc02toc01_buff_8"} : memref<1xf32> 
    %ofc02toc01_buff_9 = aie.buffer(%tile_0_4) {address = 49160 : i32, mem_bank = 3 : i32, sym_name = "ofc02toc01_buff_9"} : memref<1xf32> 
    %ofc02toc01_prod_lock = aie.lock(%tile_0_4, 2) {init = 10 : i32, sym_name = "ofc02toc01_prod_lock"}
    %ofc02toc01_cons_lock = aie.lock(%tile_0_4, 3) {init = 0 : i32, sym_name = "ofc02toc01_cons_lock"}
    %ofc11toc02_cons_buff_0 = aie.buffer(%tile_0_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "ofc11toc02_cons_buff_0"} : memref<1024xf32> 
    %ofc11toc02_cons_buff_1 = aie.buffer(%tile_0_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "ofc11toc02_cons_buff_1"} : memref<1024xf32> 
    %ofc11toc02_cons_prod_lock = aie.lock(%tile_0_4, 0) {init = 2 : i32, sym_name = "ofc11toc02_cons_prod_lock"}
    %ofc11toc02_cons_cons_lock = aie.lock(%tile_0_4, 1) {init = 0 : i32, sym_name = "ofc11toc02_cons_cons_lock"}
    %ofc11toc02_buff_0 = aie.buffer(%tile_1_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "ofc11toc02_buff_0"} : memref<1024xf32> 
    %ofc11toc02_buff_1 = aie.buffer(%tile_1_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "ofc11toc02_buff_1"} : memref<1024xf32> 
    %ofc11toc02_prod_lock = aie.lock(%tile_1_3, 2) {init = 2 : i32, sym_name = "ofc11toc02_prod_lock"}
    %ofc11toc02_cons_lock = aie.lock(%tile_1_3, 3) {init = 0 : i32, sym_name = "ofc11toc02_cons_lock"}
    %of_c12toc11_buff_0 = aie.buffer(%tile_1_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_c12toc11_buff_0"} : memref<1024xf32> 
    %of_c12toc11_buff_1 = aie.buffer(%tile_1_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_c12toc11_buff_1"} : memref<1024xf32> 
    %of_c12toc11_prod_lock = aie.lock(%tile_1_4, 2) {init = 2 : i32, sym_name = "of_c12toc11_prod_lock"}
    %of_c12toc11_cons_lock = aie.lock(%tile_1_4, 3) {init = 0 : i32, sym_name = "of_c12toc11_cons_lock"}
    %of_c22toc12_buff_0 = aie.buffer(%tile_1_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_c22toc12_buff_0"} : memref<1024xf32> 
    %of_c22toc12_buff_1 = aie.buffer(%tile_1_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_c22toc12_buff_1"} : memref<1024xf32> 
    %of_c22toc12_prod_lock = aie.lock(%tile_1_4, 0) {init = 2 : i32, sym_name = "of_c22toc12_prod_lock"}
    %of_c22toc12_cons_lock = aie.lock(%tile_1_4, 1) {init = 0 : i32, sym_name = "of_c22toc12_cons_lock"}
    %of_c21toc22_buff_0 = aie.buffer(%tile_2_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_c21toc22_buff_0"} : memref<1024xf32> 
    %of_c21toc22_buff_1 = aie.buffer(%tile_2_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_c21toc22_buff_1"} : memref<1024xf32> 
    %of_c21toc22_prod_lock = aie.lock(%tile_2_3, 4) {init = 2 : i32, sym_name = "of_c21toc22_prod_lock"}
    %of_c21toc22_cons_lock = aie.lock(%tile_2_3, 5) {init = 0 : i32, sym_name = "of_c21toc22_cons_lock"}
    %of_c21toc11_buff_0 = aie.buffer(%tile_2_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_c21toc11_buff_0"} : memref<1024xf32> 
    %of_c21toc11_buff_1 = aie.buffer(%tile_2_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_c21toc11_buff_1"} : memref<1024xf32> 
    %of_c21toc11_prod_lock = aie.lock(%tile_2_3, 2) {init = 2 : i32, sym_name = "of_c21toc11_prod_lock"}
    %of_c21toc11_cons_lock = aie.lock(%tile_2_3, 3) {init = 0 : i32, sym_name = "of_c21toc11_cons_lock"}
    %of_c10toc11_cons_buff_0 = aie.buffer(%tile_2_3) {address = 5120 : i32, mem_bank = 0 : i32, sym_name = "of_c10toc11_cons_buff_0"} : memref<1024xf32> 
    %of_c10toc11_cons_buff_1 = aie.buffer(%tile_2_3) {address = 20480 : i32, mem_bank = 1 : i32, sym_name = "of_c10toc11_cons_buff_1"} : memref<1024xf32> 
    %of_c10toc11_cons_prod_lock = aie.lock(%tile_2_3, 0) {init = 2 : i32, sym_name = "of_c10toc11_cons_prod_lock"}
    %of_c10toc11_cons_cons_lock = aie.lock(%tile_2_3, 1) {init = 0 : i32, sym_name = "of_c10toc11_cons_cons_lock"}
    %of_c10toc11_buff_0 = aie.buffer(%tile_1_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_c10toc11_buff_0"} : memref<1024xf32> 
    %of_c10toc11_buff_1 = aie.buffer(%tile_1_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_c10toc11_buff_1"} : memref<1024xf32> 
    %of_c10toc11_prod_lock = aie.lock(%tile_1_2, 4) {init = 2 : i32, sym_name = "of_c10toc11_prod_lock"}
    %of_c10toc11_cons_lock = aie.lock(%tile_1_2, 5) {init = 0 : i32, sym_name = "of_c10toc11_cons_lock"}
    %of_c30toc21_buff_0 = aie.buffer(%tile_3_2) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_c30toc21_buff_0"} : memref<1024xf32> 
    %of_c30toc21_buff_1 = aie.buffer(%tile_3_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_c30toc21_buff_1"} : memref<1024xf32> 
    %of_c30toc21_prod_lock = aie.lock(%tile_3_2, 0) {init = 2 : i32, sym_name = "of_c30toc21_prod_lock"}
    %of_c30toc21_cons_lock = aie.lock(%tile_3_2, 1) {init = 0 : i32, sym_name = "of_c30toc21_cons_lock"}
    %of_c20toc21_cons_buff_0 = aie.buffer(%tile_3_3) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_c20toc21_cons_buff_0"} : memref<1024xf32> 
    %of_c20toc21_cons_buff_1 = aie.buffer(%tile_3_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_c20toc21_cons_buff_1"} : memref<1024xf32> 
    %of_c20toc21_cons_prod_lock = aie.lock(%tile_3_3, 0) {init = 2 : i32, sym_name = "of_c20toc21_cons_prod_lock"}
    %of_c20toc21_cons_cons_lock = aie.lock(%tile_3_3, 1) {init = 0 : i32, sym_name = "of_c20toc21_cons_cons_lock"}
    %of_c20toc21_buff_0 = aie.buffer(%tile_2_2) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_c20toc21_buff_0"} : memref<1024xf32> 
    %of_c20toc21_buff_1 = aie.buffer(%tile_2_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_c20toc21_buff_1"} : memref<1024xf32> 
    %of_c20toc21_prod_lock = aie.lock(%tile_2_2, 0) {init = 2 : i32, sym_name = "of_c20toc21_prod_lock"}
    %of_c20toc21_cons_lock = aie.lock(%tile_2_2, 1) {init = 0 : i32, sym_name = "of_c20toc21_cons_lock"}
    %in3_cons_buff_0 = aie.buffer(%tile_1_2) {address = 5120 : i32, mem_bank = 0 : i32, sym_name = "in3_cons_buff_0"} : memref<1xf32> 
    %in3_cons_buff_1 = aie.buffer(%tile_1_2) {address = 20480 : i32, mem_bank = 1 : i32, sym_name = "in3_cons_buff_1"} : memref<1xf32> 
    %in3_cons_prod_lock = aie.lock(%tile_1_2, 2) {init = 2 : i32, sym_name = "in3_cons_prod_lock"}
    %in3_cons_cons_lock = aie.lock(%tile_1_2, 3) {init = 0 : i32, sym_name = "in3_cons_cons_lock"}
    %in3_prod_lock = aie.lock(%tile_1_0, 2) {init = 1 : i32, sym_name = "in3_prod_lock"}
    %in3_cons_lock = aie.lock(%tile_1_0, 3) {init = 0 : i32, sym_name = "in3_cons_lock"}
    %in2_cons_buff_0 = aie.buffer(%tile_1_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in2_cons_buff_0"} : memref<1024xf32> 
    %in2_cons_buff_1 = aie.buffer(%tile_1_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in2_cons_buff_1"} : memref<1024xf32> 
    %in2_cons_prod_lock = aie.lock(%tile_1_2, 0) {init = 2 : i32, sym_name = "in2_cons_prod_lock"}
    %in2_cons_cons_lock = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "in2_cons_cons_lock"}
    %in2_prod_lock = aie.lock(%tile_1_0, 0) {init = 1 : i32, sym_name = "in2_prod_lock"}
    %in2_cons_lock = aie.lock(%tile_1_0, 1) {init = 0 : i32, sym_name = "in2_cons_lock"}
    %in1_cons_buff_0 = aie.buffer(%tile_1_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in1_cons_buff_0"} : memref<1024xf32> 
    %in1_cons_buff_1 = aie.buffer(%tile_1_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in1_cons_buff_1"} : memref<1024xf32> 
    %in1_cons_prod_lock = aie.lock(%tile_1_3, 0) {init = 2 : i32, sym_name = "in1_cons_prod_lock"}
    %in1_cons_cons_lock = aie.lock(%tile_1_3, 1) {init = 0 : i32, sym_name = "in1_cons_cons_lock"}
    %in1_prod_lock = aie.lock(%tile_0_0, 2) {init = 1 : i32, sym_name = "in1_prod_lock"}
    %in1_cons_lock = aie.lock(%tile_0_0, 3) {init = 0 : i32, sym_name = "in1_cons_lock"}
    %in0_cons_buff_0 = aie.buffer(%tile_2_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "in0_cons_buff_0"} : memref<1xf32> 
    %in0_cons_buff_1 = aie.buffer(%tile_2_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "in0_cons_buff_1"} : memref<1xf32> 
    %in0_cons_prod_lock = aie.lock(%tile_2_4, 0) {init = 2 : i32, sym_name = "in0_cons_prod_lock"}
    %in0_cons_cons_lock = aie.lock(%tile_2_4, 1) {init = 0 : i32, sym_name = "in0_cons_cons_lock"}
    %in0_prod_lock = aie.lock(%tile_0_0, 0) {init = 1 : i32, sym_name = "in0_prod_lock"}
    %in0_cons_lock = aie.lock(%tile_0_0, 1) {init = 0 : i32, sym_name = "in0_cons_lock"}
    aie.flow(%tile_0_0, DMA : 0, %tile_2_4, DMA : 0)
    aie.flow(%tile_0_0, DMA : 1, %tile_1_3, DMA : 0)
    aie.flow(%tile_1_0, DMA : 0, %tile_1_2, DMA : 0)
    aie.flow(%tile_1_0, DMA : 1, %tile_1_2, DMA : 1)
    aie.flow(%tile_2_2, DMA : 0, %tile_3_3, DMA : 0)
    aie.flow(%tile_1_2, DMA : 0, %tile_2_3, DMA : 0)
    aie.flow(%tile_1_3, DMA : 0, %tile_0_4, DMA : 0)
    aie.flow(%tile_0_3, DMA : 0, %tile_1_0, DMA : 0)
    %core_1_2 = aie.core(%tile_1_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c2_1 = arith.constant 2 : index
      %c1_2 = arith.constant 1 : index
      %c2_3 = arith.constant 2 : index
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %c9 = arith.constant 9 : index
      %c1_5 = arith.constant 1 : index
      %c8 = arith.constant 8 : index
      %c2_6 = arith.constant 2 : index
      cf.br ^bb3(%c0_4 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_7 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_0, %c1024_i32_7) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2_6 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_8 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_0, %c1024_i32_8) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_9 = arith.constant 0 : index
      %c9_10 = arith.constant 9 : index
      %c1_11 = arith.constant 1 : index
      %c8_12 = arith.constant 8 : index
      %c2_13 = arith.constant 2 : index
      cf.br ^bb6(%c0_9 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8_12 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_14 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_1, %c1024_i32_14) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_15 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_1, %c1024_i32_15) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2_13 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_16 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_1, %c1024_i32_16) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      %c0_17 = arith.constant 0 : index
      %c2_18 = arith.constant 2 : index
      %c1_19 = arith.constant 1 : index
      %c2_20 = arith.constant 2 : index
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_21 = arith.constant 0 : index
      %c9_22 = arith.constant 9 : index
      %c1_23 = arith.constant 1 : index
      %c8_24 = arith.constant 8 : index
      %c2_25 = arith.constant 2 : index
      cf.br ^bb9(%c0_21 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c8_24 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_26 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_0, %c1024_i32_26) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_27 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_0, %c1024_i32_27) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      %10 = arith.addi %8, %c2_25 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_28 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_0, %c1024_i32_28) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_29 = arith.constant 0 : index
      %c9_30 = arith.constant 9 : index
      %c1_31 = arith.constant 1 : index
      %c8_32 = arith.constant 8 : index
      %c2_33 = arith.constant 2 : index
      cf.br ^bb12(%c0_29 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c8_32 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_34 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_1, %c1024_i32_34) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_35 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_1, %c1024_i32_35) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      %13 = arith.addi %11, %c2_33 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_36 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_1, %c1024_i32_36) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      %14 = arith.addi %0, %c2 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      %c0_37 = arith.constant 0 : index
      %c2_38 = arith.constant 2 : index
      %c1_39 = arith.constant 1 : index
      %c2_40 = arith.constant 2 : index
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_41 = arith.constant 0 : index
      %c9_42 = arith.constant 9 : index
      %c1_43 = arith.constant 1 : index
      %c8_44 = arith.constant 8 : index
      %c2_45 = arith.constant 2 : index
      cf.br ^bb16(%c0_41 : index)
    ^bb16(%15: index):  // 2 preds: ^bb15, ^bb17
      %16 = arith.cmpi slt, %15, %c8_44 : index
      cf.cond_br %16, ^bb17, ^bb18
    ^bb17:  // pred: ^bb16
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_46 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_0, %c1024_i32_46) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_47 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_0, %c1024_i32_47) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      %17 = arith.addi %15, %c2_45 : index
      cf.br ^bb16(%17 : index)
    ^bb18:  // pred: ^bb16
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_48 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_0, %c1024_i32_48) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_49 = arith.constant 0 : index
      %c9_50 = arith.constant 9 : index
      %c1_51 = arith.constant 1 : index
      %c8_52 = arith.constant 8 : index
      %c2_53 = arith.constant 2 : index
      cf.br ^bb19(%c0_49 : index)
    ^bb19(%18: index):  // 2 preds: ^bb18, ^bb20
      %19 = arith.cmpi slt, %18, %c8_52 : index
      cf.cond_br %19, ^bb20, ^bb21
    ^bb20:  // pred: ^bb19
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_54 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_1, %c1024_i32_54) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_55 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_1, %c1024_i32_55) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      %20 = arith.addi %18, %c2_53 : index
      cf.br ^bb19(%20 : index)
    ^bb21:  // pred: ^bb19
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_56 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_1, %c1024_i32_56) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_2_3 = aie.core(%tile_2_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c9 = arith.constant 9 : index
      %c1_1 = arith.constant 1 : index
      %c8 = arith.constant 8 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @passthrough(%of_c10toc11_cons_buff_0, %of_c21toc22_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @passthrough(%of_c10toc11_cons_buff_1, %of_c21toc22_buff_1, %c1024_i32_3) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @passthrough(%of_c10toc11_cons_buff_0, %of_c21toc22_buff_0, %c1024_i32_4) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      %c0_5 = arith.constant 0 : index
      %c9_6 = arith.constant 9 : index
      %c1_7 = arith.constant 1 : index
      %c8_8 = arith.constant 8 : index
      %c2_9 = arith.constant 2 : index
      cf.br ^bb6(%c0_5 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8_8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_10 = arith.constant 1024 : i32
      func.call @passthrough(%of_c10toc11_cons_buff_1, %of_c21toc22_buff_1, %c1024_i32_10) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @passthrough(%of_c10toc11_cons_buff_0, %of_c21toc22_buff_0, %c1024_i32_11) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @passthrough(%of_c10toc11_cons_buff_1, %of_c21toc22_buff_1, %c1024_i32_12) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      %c0_13 = arith.constant 0 : index
      %c9_14 = arith.constant 9 : index
      %c1_15 = arith.constant 1 : index
      %c8_16 = arith.constant 8 : index
      %c2_17 = arith.constant 2 : index
      cf.br ^bb10(%c0_13 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c8_16 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_18 = arith.constant 1024 : i32
      func.call @passthrough(%of_c10toc11_cons_buff_0, %of_c21toc22_buff_0, %c1024_i32_18) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @passthrough(%of_c10toc11_cons_buff_1, %of_c21toc22_buff_1, %c1024_i32_19) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @passthrough(%of_c10toc11_cons_buff_0, %of_c21toc22_buff_0, %c1024_i32_20) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_2_4 = aie.core(%tile_2_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c9 = arith.constant 9 : index
      %c1_1 = arith.constant 1 : index
      %c8 = arith.constant 8 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_0, %of_c22toc12_buff_0, %in0_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_1, %of_c22toc12_buff_1, %in0_cons_buff_0, %c1024_i32_3) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_0, %of_c22toc12_buff_0, %in0_cons_buff_0, %c1024_i32_4) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c9_6 = arith.constant 9 : index
      %c1_7 = arith.constant 1 : index
      %c8_8 = arith.constant 8 : index
      %c2_9 = arith.constant 2 : index
      cf.br ^bb6(%c0_5 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8_8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_10 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_1, %of_c22toc12_buff_1, %in0_cons_buff_1, %c1024_i32_10) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_0, %of_c22toc12_buff_0, %in0_cons_buff_1, %c1024_i32_11) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_1, %of_c22toc12_buff_1, %in0_cons_buff_1, %c1024_i32_12) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_13 = arith.constant 0 : index
      %c9_14 = arith.constant 9 : index
      %c1_15 = arith.constant 1 : index
      %c8_16 = arith.constant 8 : index
      %c2_17 = arith.constant 2 : index
      cf.br ^bb10(%c0_13 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c8_16 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_18 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_0, %of_c22toc12_buff_0, %in0_cons_buff_0, %c1024_i32_18) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_1, %of_c22toc12_buff_1, %in0_cons_buff_0, %c1024_i32_19) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_0, %of_c22toc12_buff_0, %in0_cons_buff_0, %c1024_i32_20) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_1_4 = aie.core(%tile_1_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c9 = arith.constant 9 : index
      %c1_1 = arith.constant 1 : index
      %c8 = arith.constant 8 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @passthrough(%of_c22toc12_buff_0, %of_c12toc11_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @passthrough(%of_c22toc12_buff_1, %of_c12toc11_buff_1, %c1024_i32_3) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @passthrough(%of_c22toc12_buff_0, %of_c12toc11_buff_0, %c1024_i32_4) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      %c0_5 = arith.constant 0 : index
      %c9_6 = arith.constant 9 : index
      %c1_7 = arith.constant 1 : index
      %c8_8 = arith.constant 8 : index
      %c2_9 = arith.constant 2 : index
      cf.br ^bb6(%c0_5 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8_8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_10 = arith.constant 1024 : i32
      func.call @passthrough(%of_c22toc12_buff_1, %of_c12toc11_buff_1, %c1024_i32_10) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @passthrough(%of_c22toc12_buff_0, %of_c12toc11_buff_0, %c1024_i32_11) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @passthrough(%of_c22toc12_buff_1, %of_c12toc11_buff_1, %c1024_i32_12) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      %c0_13 = arith.constant 0 : index
      %c9_14 = arith.constant 9 : index
      %c1_15 = arith.constant 1 : index
      %c8_16 = arith.constant 8 : index
      %c2_17 = arith.constant 2 : index
      cf.br ^bb10(%c0_13 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c8_16 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_18 = arith.constant 1024 : i32
      func.call @passthrough(%of_c22toc12_buff_0, %of_c12toc11_buff_0, %c1024_i32_18) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @passthrough(%of_c22toc12_buff_1, %of_c12toc11_buff_1, %c1024_i32_19) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @passthrough(%of_c22toc12_buff_0, %of_c12toc11_buff_0, %c1024_i32_20) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_1_3 = aie.core(%tile_1_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c9 = arith.constant 9 : index
      %c1_1 = arith.constant 1 : index
      %c8 = arith.constant 8 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%in1_cons_buff_0, %of_c12toc11_buff_0, %ofc11toc02_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%in1_cons_buff_1, %of_c12toc11_buff_1, %ofc11toc02_buff_1, %c1024_i32_3) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%in1_cons_buff_0, %of_c12toc11_buff_0, %ofc11toc02_buff_0, %c1024_i32_4) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      %c0_5 = arith.constant 0 : index
      %c9_6 = arith.constant 9 : index
      %c1_7 = arith.constant 1 : index
      %c8_8 = arith.constant 8 : index
      %c2_9 = arith.constant 2 : index
      cf.br ^bb6(%c0_5 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8_8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_10 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%in1_cons_buff_1, %of_c12toc11_buff_1, %ofc11toc02_buff_1, %c1024_i32_10) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%in1_cons_buff_0, %of_c12toc11_buff_0, %ofc11toc02_buff_0, %c1024_i32_11) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%in1_cons_buff_1, %of_c12toc11_buff_1, %ofc11toc02_buff_1, %c1024_i32_12) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      %c0_13 = arith.constant 0 : index
      %c9_14 = arith.constant 9 : index
      %c1_15 = arith.constant 1 : index
      %c8_16 = arith.constant 8 : index
      %c2_17 = arith.constant 2 : index
      cf.br ^bb10(%c0_13 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c8_16 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_18 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%in1_cons_buff_0, %of_c12toc11_buff_0, %ofc11toc02_buff_0, %c1024_i32_18) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%in1_cons_buff_1, %of_c12toc11_buff_1, %ofc11toc02_buff_1, %c1024_i32_19) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%in1_cons_buff_0, %of_c12toc11_buff_0, %ofc11toc02_buff_0, %c1024_i32_20) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      aie.end
    } {link_with = "vector_mult.o"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775800 = arith.constant 9223372036854775800 : index
      %c10 = arith.constant 10 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775800 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c9 = arith.constant 9 : index
      %c1_1 = arith.constant 1 : index
      %c9_2 = arith.constant 9 : index
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32_3) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32_4) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_5 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32_5) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_6 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32_6) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_7 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32_7) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_8 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32_8) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_9 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32_9) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_10 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32_10) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      %c0_11 = arith.constant 0 : index
      %c9_12 = arith.constant 9 : index
      %c1_13 = arith.constant 1 : index
      %c9_14 = arith.constant 9 : index
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_15 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_9, %c1024_i32_15) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_16 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32_16) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_17 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32_17) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_18 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32_18) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32_19) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32_20) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_21 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32_21) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_22 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32_22) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_23 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32_23) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      %c0_24 = arith.constant 0 : index
      %c9_25 = arith.constant 9 : index
      %c1_26 = arith.constant 1 : index
      %c9_27 = arith.constant 9 : index
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_28 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32_28) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_29 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_9, %c1024_i32_29) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_30 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32_30) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_31 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32_31) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_32 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32_32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_33 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32_33) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_34 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32_34) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_35 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32_35) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_36 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32_36) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      %c0_37 = arith.constant 0 : index
      %c9_38 = arith.constant 9 : index
      %c1_39 = arith.constant 1 : index
      %c9_40 = arith.constant 9 : index
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_41 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32_41) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_42 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32_42) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_43 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_9, %c1024_i32_43) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_44 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32_44) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_45 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32_45) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_46 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32_46) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_47 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32_47) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_48 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32_48) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_49 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32_49) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      %c0_50 = arith.constant 0 : index
      %c9_51 = arith.constant 9 : index
      %c1_52 = arith.constant 1 : index
      %c9_53 = arith.constant 9 : index
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_54 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32_54) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_55 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32_55) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_56 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32_56) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_57 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_9, %c1024_i32_57) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_58 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32_58) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_59 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32_59) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_60 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32_60) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_61 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32_61) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_62 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32_62) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      %c0_63 = arith.constant 0 : index
      %c9_64 = arith.constant 9 : index
      %c1_65 = arith.constant 1 : index
      %c9_66 = arith.constant 9 : index
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_67 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32_67) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_68 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32_68) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_69 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32_69) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_70 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32_70) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_71 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_9, %c1024_i32_71) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_72 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32_72) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_73 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32_73) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_74 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32_74) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_75 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32_75) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      %c0_76 = arith.constant 0 : index
      %c9_77 = arith.constant 9 : index
      %c1_78 = arith.constant 1 : index
      %c9_79 = arith.constant 9 : index
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_80 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32_80) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_81 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32_81) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_82 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32_82) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_83 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32_83) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_84 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32_84) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_85 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_9, %c1024_i32_85) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_86 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32_86) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_87 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32_87) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_88 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32_88) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      %c0_89 = arith.constant 0 : index
      %c9_90 = arith.constant 9 : index
      %c1_91 = arith.constant 1 : index
      %c9_92 = arith.constant 9 : index
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_93 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32_93) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_94 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32_94) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_95 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32_95) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_96 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32_96) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_97 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32_97) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_98 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32_98) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_99 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_9, %c1024_i32_99) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_100 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32_100) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_101 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32_101) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      %c0_102 = arith.constant 0 : index
      %c9_103 = arith.constant 9 : index
      %c1_104 = arith.constant 1 : index
      %c9_105 = arith.constant 9 : index
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_106 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32_106) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_107 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32_107) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_108 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32_108) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_109 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32_109) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_110 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32_110) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_111 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32_111) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_112 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32_112) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_113 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_9, %c1024_i32_113) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_114 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32_114) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      %c0_115 = arith.constant 0 : index
      %c9_116 = arith.constant 9 : index
      %c1_117 = arith.constant 1 : index
      %c9_118 = arith.constant 9 : index
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_119 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32_119) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_120 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32_120) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_121 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32_121) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_122 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32_122) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_123 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32_123) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_124 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32_124) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_125 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32_125) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_126 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32_126) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_127 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_9, %c1024_i32_127) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      %2 = arith.addi %0, %c10 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      cf.br ^bb4(%c9223372036854775800 : index)
    ^bb4(%3: index):  // 2 preds: ^bb3, ^bb5
      %4 = arith.cmpi slt, %3, %c9223372036854775807 : index
      cf.cond_br %4, ^bb5, ^bb6
    ^bb5:  // pred: ^bb4
      %c0_128 = arith.constant 0 : index
      %c9_129 = arith.constant 9 : index
      %c1_130 = arith.constant 1 : index
      %c9_131 = arith.constant 9 : index
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_132 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32_132) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_133 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32_133) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_134 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32_134) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_135 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32_135) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_136 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32_136) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_137 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32_137) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_138 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32_138) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_139 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32_139) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_140 = arith.constant 1024 : i32
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32_140) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      %5 = arith.addi %3, %c1 : index
      cf.br ^bb4(%5 : index)
    ^bb6:  // pred: ^bb4
      aie.end
    } {link_with = "mean.o"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775800 = arith.constant 9223372036854775800 : index
      %c10 = arith.constant 10 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775800 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      %c1_2 = arith.constant 1 : index
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %c0_3 = arith.constant 0 : index
      %2 = memref.load %ofc02toc01_buff_0[%c0_3] : memref<1xf32>
      %c0_4 = arith.constant 0 : index
      %3 = memref.load %ofc02toc01_buff_1[%c0_4] : memref<1xf32>
      %4 = arith.addf %2, %3 : f32
      %c0_5 = arith.constant 0 : index
      %5 = memref.load %ofc02toc01_buff_2[%c0_5] : memref<1xf32>
      %6 = arith.addf %4, %5 : f32
      %c0_6 = arith.constant 0 : index
      %7 = memref.load %ofc02toc01_buff_3[%c0_6] : memref<1xf32>
      %8 = arith.addf %6, %7 : f32
      %c0_7 = arith.constant 0 : index
      %9 = memref.load %ofc02toc01_buff_4[%c0_7] : memref<1xf32>
      %10 = arith.addf %8, %9 : f32
      %c0_8 = arith.constant 0 : index
      %11 = memref.load %ofc02toc01_buff_5[%c0_8] : memref<1xf32>
      %12 = arith.addf %10, %11 : f32
      %c0_9 = arith.constant 0 : index
      %13 = memref.load %ofc02toc01_buff_6[%c0_9] : memref<1xf32>
      %14 = arith.addf %12, %13 : f32
      %c0_10 = arith.constant 0 : index
      %15 = memref.load %ofc02toc01_buff_7[%c0_10] : memref<1xf32>
      %16 = arith.addf %14, %15 : f32
      %c0_11 = arith.constant 0 : index
      %17 = memref.load %ofc02toc01_buff_8[%c0_11] : memref<1xf32>
      %18 = arith.addf %16, %17 : f32
      %cst = arith.constant 9.000000e+00 : f32
      %19 = arith.divf %18, %cst : f32
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      %c0_12 = arith.constant 0 : index
      %c1_13 = arith.constant 1 : index
      %c1_14 = arith.constant 1 : index
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %c0_15 = arith.constant 0 : index
      %20 = memref.load %ofc02toc01_buff_9[%c0_15] : memref<1xf32>
      %c0_16 = arith.constant 0 : index
      %21 = memref.load %ofc02toc01_buff_0[%c0_16] : memref<1xf32>
      %22 = arith.addf %20, %21 : f32
      %c0_17 = arith.constant 0 : index
      %23 = memref.load %ofc02toc01_buff_1[%c0_17] : memref<1xf32>
      %24 = arith.addf %22, %23 : f32
      %c0_18 = arith.constant 0 : index
      %25 = memref.load %ofc02toc01_buff_2[%c0_18] : memref<1xf32>
      %26 = arith.addf %24, %25 : f32
      %c0_19 = arith.constant 0 : index
      %27 = memref.load %ofc02toc01_buff_3[%c0_19] : memref<1xf32>
      %28 = arith.addf %26, %27 : f32
      %c0_20 = arith.constant 0 : index
      %29 = memref.load %ofc02toc01_buff_4[%c0_20] : memref<1xf32>
      %30 = arith.addf %28, %29 : f32
      %c0_21 = arith.constant 0 : index
      %31 = memref.load %ofc02toc01_buff_5[%c0_21] : memref<1xf32>
      %32 = arith.addf %30, %31 : f32
      %c0_22 = arith.constant 0 : index
      %33 = memref.load %ofc02toc01_buff_6[%c0_22] : memref<1xf32>
      %34 = arith.addf %32, %33 : f32
      %c0_23 = arith.constant 0 : index
      %35 = memref.load %ofc02toc01_buff_7[%c0_23] : memref<1xf32>
      %36 = arith.addf %34, %35 : f32
      %cst_24 = arith.constant 9.000000e+00 : f32
      %37 = arith.divf %36, %cst_24 : f32
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      %c0_25 = arith.constant 0 : index
      %c1_26 = arith.constant 1 : index
      %c1_27 = arith.constant 1 : index
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %c0_28 = arith.constant 0 : index
      %38 = memref.load %ofc02toc01_buff_8[%c0_28] : memref<1xf32>
      %c0_29 = arith.constant 0 : index
      %39 = memref.load %ofc02toc01_buff_9[%c0_29] : memref<1xf32>
      %40 = arith.addf %38, %39 : f32
      %c0_30 = arith.constant 0 : index
      %41 = memref.load %ofc02toc01_buff_0[%c0_30] : memref<1xf32>
      %42 = arith.addf %40, %41 : f32
      %c0_31 = arith.constant 0 : index
      %43 = memref.load %ofc02toc01_buff_1[%c0_31] : memref<1xf32>
      %44 = arith.addf %42, %43 : f32
      %c0_32 = arith.constant 0 : index
      %45 = memref.load %ofc02toc01_buff_2[%c0_32] : memref<1xf32>
      %46 = arith.addf %44, %45 : f32
      %c0_33 = arith.constant 0 : index
      %47 = memref.load %ofc02toc01_buff_3[%c0_33] : memref<1xf32>
      %48 = arith.addf %46, %47 : f32
      %c0_34 = arith.constant 0 : index
      %49 = memref.load %ofc02toc01_buff_4[%c0_34] : memref<1xf32>
      %50 = arith.addf %48, %49 : f32
      %c0_35 = arith.constant 0 : index
      %51 = memref.load %ofc02toc01_buff_5[%c0_35] : memref<1xf32>
      %52 = arith.addf %50, %51 : f32
      %c0_36 = arith.constant 0 : index
      %53 = memref.load %ofc02toc01_buff_6[%c0_36] : memref<1xf32>
      %54 = arith.addf %52, %53 : f32
      %cst_37 = arith.constant 9.000000e+00 : f32
      %55 = arith.divf %54, %cst_37 : f32
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      %c0_38 = arith.constant 0 : index
      %c1_39 = arith.constant 1 : index
      %c1_40 = arith.constant 1 : index
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %c0_41 = arith.constant 0 : index
      %56 = memref.load %ofc02toc01_buff_7[%c0_41] : memref<1xf32>
      %c0_42 = arith.constant 0 : index
      %57 = memref.load %ofc02toc01_buff_8[%c0_42] : memref<1xf32>
      %58 = arith.addf %56, %57 : f32
      %c0_43 = arith.constant 0 : index
      %59 = memref.load %ofc02toc01_buff_9[%c0_43] : memref<1xf32>
      %60 = arith.addf %58, %59 : f32
      %c0_44 = arith.constant 0 : index
      %61 = memref.load %ofc02toc01_buff_0[%c0_44] : memref<1xf32>
      %62 = arith.addf %60, %61 : f32
      %c0_45 = arith.constant 0 : index
      %63 = memref.load %ofc02toc01_buff_1[%c0_45] : memref<1xf32>
      %64 = arith.addf %62, %63 : f32
      %c0_46 = arith.constant 0 : index
      %65 = memref.load %ofc02toc01_buff_2[%c0_46] : memref<1xf32>
      %66 = arith.addf %64, %65 : f32
      %c0_47 = arith.constant 0 : index
      %67 = memref.load %ofc02toc01_buff_3[%c0_47] : memref<1xf32>
      %68 = arith.addf %66, %67 : f32
      %c0_48 = arith.constant 0 : index
      %69 = memref.load %ofc02toc01_buff_4[%c0_48] : memref<1xf32>
      %70 = arith.addf %68, %69 : f32
      %c0_49 = arith.constant 0 : index
      %71 = memref.load %ofc02toc01_buff_5[%c0_49] : memref<1xf32>
      %72 = arith.addf %70, %71 : f32
      %cst_50 = arith.constant 9.000000e+00 : f32
      %73 = arith.divf %72, %cst_50 : f32
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      %c0_51 = arith.constant 0 : index
      %c1_52 = arith.constant 1 : index
      %c1_53 = arith.constant 1 : index
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %c0_54 = arith.constant 0 : index
      %74 = memref.load %ofc02toc01_buff_6[%c0_54] : memref<1xf32>
      %c0_55 = arith.constant 0 : index
      %75 = memref.load %ofc02toc01_buff_7[%c0_55] : memref<1xf32>
      %76 = arith.addf %74, %75 : f32
      %c0_56 = arith.constant 0 : index
      %77 = memref.load %ofc02toc01_buff_8[%c0_56] : memref<1xf32>
      %78 = arith.addf %76, %77 : f32
      %c0_57 = arith.constant 0 : index
      %79 = memref.load %ofc02toc01_buff_9[%c0_57] : memref<1xf32>
      %80 = arith.addf %78, %79 : f32
      %c0_58 = arith.constant 0 : index
      %81 = memref.load %ofc02toc01_buff_0[%c0_58] : memref<1xf32>
      %82 = arith.addf %80, %81 : f32
      %c0_59 = arith.constant 0 : index
      %83 = memref.load %ofc02toc01_buff_1[%c0_59] : memref<1xf32>
      %84 = arith.addf %82, %83 : f32
      %c0_60 = arith.constant 0 : index
      %85 = memref.load %ofc02toc01_buff_2[%c0_60] : memref<1xf32>
      %86 = arith.addf %84, %85 : f32
      %c0_61 = arith.constant 0 : index
      %87 = memref.load %ofc02toc01_buff_3[%c0_61] : memref<1xf32>
      %88 = arith.addf %86, %87 : f32
      %c0_62 = arith.constant 0 : index
      %89 = memref.load %ofc02toc01_buff_4[%c0_62] : memref<1xf32>
      %90 = arith.addf %88, %89 : f32
      %cst_63 = arith.constant 9.000000e+00 : f32
      %91 = arith.divf %90, %cst_63 : f32
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      %c0_64 = arith.constant 0 : index
      %c1_65 = arith.constant 1 : index
      %c1_66 = arith.constant 1 : index
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %c0_67 = arith.constant 0 : index
      %92 = memref.load %ofc02toc01_buff_5[%c0_67] : memref<1xf32>
      %c0_68 = arith.constant 0 : index
      %93 = memref.load %ofc02toc01_buff_6[%c0_68] : memref<1xf32>
      %94 = arith.addf %92, %93 : f32
      %c0_69 = arith.constant 0 : index
      %95 = memref.load %ofc02toc01_buff_7[%c0_69] : memref<1xf32>
      %96 = arith.addf %94, %95 : f32
      %c0_70 = arith.constant 0 : index
      %97 = memref.load %ofc02toc01_buff_8[%c0_70] : memref<1xf32>
      %98 = arith.addf %96, %97 : f32
      %c0_71 = arith.constant 0 : index
      %99 = memref.load %ofc02toc01_buff_9[%c0_71] : memref<1xf32>
      %100 = arith.addf %98, %99 : f32
      %c0_72 = arith.constant 0 : index
      %101 = memref.load %ofc02toc01_buff_0[%c0_72] : memref<1xf32>
      %102 = arith.addf %100, %101 : f32
      %c0_73 = arith.constant 0 : index
      %103 = memref.load %ofc02toc01_buff_1[%c0_73] : memref<1xf32>
      %104 = arith.addf %102, %103 : f32
      %c0_74 = arith.constant 0 : index
      %105 = memref.load %ofc02toc01_buff_2[%c0_74] : memref<1xf32>
      %106 = arith.addf %104, %105 : f32
      %c0_75 = arith.constant 0 : index
      %107 = memref.load %ofc02toc01_buff_3[%c0_75] : memref<1xf32>
      %108 = arith.addf %106, %107 : f32
      %cst_76 = arith.constant 9.000000e+00 : f32
      %109 = arith.divf %108, %cst_76 : f32
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      %c0_77 = arith.constant 0 : index
      %c1_78 = arith.constant 1 : index
      %c1_79 = arith.constant 1 : index
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %c0_80 = arith.constant 0 : index
      %110 = memref.load %ofc02toc01_buff_4[%c0_80] : memref<1xf32>
      %c0_81 = arith.constant 0 : index
      %111 = memref.load %ofc02toc01_buff_5[%c0_81] : memref<1xf32>
      %112 = arith.addf %110, %111 : f32
      %c0_82 = arith.constant 0 : index
      %113 = memref.load %ofc02toc01_buff_6[%c0_82] : memref<1xf32>
      %114 = arith.addf %112, %113 : f32
      %c0_83 = arith.constant 0 : index
      %115 = memref.load %ofc02toc01_buff_7[%c0_83] : memref<1xf32>
      %116 = arith.addf %114, %115 : f32
      %c0_84 = arith.constant 0 : index
      %117 = memref.load %ofc02toc01_buff_8[%c0_84] : memref<1xf32>
      %118 = arith.addf %116, %117 : f32
      %c0_85 = arith.constant 0 : index
      %119 = memref.load %ofc02toc01_buff_9[%c0_85] : memref<1xf32>
      %120 = arith.addf %118, %119 : f32
      %c0_86 = arith.constant 0 : index
      %121 = memref.load %ofc02toc01_buff_0[%c0_86] : memref<1xf32>
      %122 = arith.addf %120, %121 : f32
      %c0_87 = arith.constant 0 : index
      %123 = memref.load %ofc02toc01_buff_1[%c0_87] : memref<1xf32>
      %124 = arith.addf %122, %123 : f32
      %c0_88 = arith.constant 0 : index
      %125 = memref.load %ofc02toc01_buff_2[%c0_88] : memref<1xf32>
      %126 = arith.addf %124, %125 : f32
      %cst_89 = arith.constant 9.000000e+00 : f32
      %127 = arith.divf %126, %cst_89 : f32
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      %c0_90 = arith.constant 0 : index
      %c1_91 = arith.constant 1 : index
      %c1_92 = arith.constant 1 : index
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %c0_93 = arith.constant 0 : index
      %128 = memref.load %ofc02toc01_buff_3[%c0_93] : memref<1xf32>
      %c0_94 = arith.constant 0 : index
      %129 = memref.load %ofc02toc01_buff_4[%c0_94] : memref<1xf32>
      %130 = arith.addf %128, %129 : f32
      %c0_95 = arith.constant 0 : index
      %131 = memref.load %ofc02toc01_buff_5[%c0_95] : memref<1xf32>
      %132 = arith.addf %130, %131 : f32
      %c0_96 = arith.constant 0 : index
      %133 = memref.load %ofc02toc01_buff_6[%c0_96] : memref<1xf32>
      %134 = arith.addf %132, %133 : f32
      %c0_97 = arith.constant 0 : index
      %135 = memref.load %ofc02toc01_buff_7[%c0_97] : memref<1xf32>
      %136 = arith.addf %134, %135 : f32
      %c0_98 = arith.constant 0 : index
      %137 = memref.load %ofc02toc01_buff_8[%c0_98] : memref<1xf32>
      %138 = arith.addf %136, %137 : f32
      %c0_99 = arith.constant 0 : index
      %139 = memref.load %ofc02toc01_buff_9[%c0_99] : memref<1xf32>
      %140 = arith.addf %138, %139 : f32
      %c0_100 = arith.constant 0 : index
      %141 = memref.load %ofc02toc01_buff_0[%c0_100] : memref<1xf32>
      %142 = arith.addf %140, %141 : f32
      %c0_101 = arith.constant 0 : index
      %143 = memref.load %ofc02toc01_buff_1[%c0_101] : memref<1xf32>
      %144 = arith.addf %142, %143 : f32
      %cst_102 = arith.constant 9.000000e+00 : f32
      %145 = arith.divf %144, %cst_102 : f32
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      %c0_103 = arith.constant 0 : index
      %c1_104 = arith.constant 1 : index
      %c1_105 = arith.constant 1 : index
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %c0_106 = arith.constant 0 : index
      %146 = memref.load %ofc02toc01_buff_2[%c0_106] : memref<1xf32>
      %c0_107 = arith.constant 0 : index
      %147 = memref.load %ofc02toc01_buff_3[%c0_107] : memref<1xf32>
      %148 = arith.addf %146, %147 : f32
      %c0_108 = arith.constant 0 : index
      %149 = memref.load %ofc02toc01_buff_4[%c0_108] : memref<1xf32>
      %150 = arith.addf %148, %149 : f32
      %c0_109 = arith.constant 0 : index
      %151 = memref.load %ofc02toc01_buff_5[%c0_109] : memref<1xf32>
      %152 = arith.addf %150, %151 : f32
      %c0_110 = arith.constant 0 : index
      %153 = memref.load %ofc02toc01_buff_6[%c0_110] : memref<1xf32>
      %154 = arith.addf %152, %153 : f32
      %c0_111 = arith.constant 0 : index
      %155 = memref.load %ofc02toc01_buff_7[%c0_111] : memref<1xf32>
      %156 = arith.addf %154, %155 : f32
      %c0_112 = arith.constant 0 : index
      %157 = memref.load %ofc02toc01_buff_8[%c0_112] : memref<1xf32>
      %158 = arith.addf %156, %157 : f32
      %c0_113 = arith.constant 0 : index
      %159 = memref.load %ofc02toc01_buff_9[%c0_113] : memref<1xf32>
      %160 = arith.addf %158, %159 : f32
      %c0_114 = arith.constant 0 : index
      %161 = memref.load %ofc02toc01_buff_0[%c0_114] : memref<1xf32>
      %162 = arith.addf %160, %161 : f32
      %cst_115 = arith.constant 9.000000e+00 : f32
      %163 = arith.divf %162, %cst_115 : f32
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      %c0_116 = arith.constant 0 : index
      %c1_117 = arith.constant 1 : index
      %c1_118 = arith.constant 1 : index
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %c0_119 = arith.constant 0 : index
      %164 = memref.load %ofc02toc01_buff_1[%c0_119] : memref<1xf32>
      %c0_120 = arith.constant 0 : index
      %165 = memref.load %ofc02toc01_buff_2[%c0_120] : memref<1xf32>
      %166 = arith.addf %164, %165 : f32
      %c0_121 = arith.constant 0 : index
      %167 = memref.load %ofc02toc01_buff_3[%c0_121] : memref<1xf32>
      %168 = arith.addf %166, %167 : f32
      %c0_122 = arith.constant 0 : index
      %169 = memref.load %ofc02toc01_buff_4[%c0_122] : memref<1xf32>
      %170 = arith.addf %168, %169 : f32
      %c0_123 = arith.constant 0 : index
      %171 = memref.load %ofc02toc01_buff_5[%c0_123] : memref<1xf32>
      %172 = arith.addf %170, %171 : f32
      %c0_124 = arith.constant 0 : index
      %173 = memref.load %ofc02toc01_buff_6[%c0_124] : memref<1xf32>
      %174 = arith.addf %172, %173 : f32
      %c0_125 = arith.constant 0 : index
      %175 = memref.load %ofc02toc01_buff_7[%c0_125] : memref<1xf32>
      %176 = arith.addf %174, %175 : f32
      %c0_126 = arith.constant 0 : index
      %177 = memref.load %ofc02toc01_buff_8[%c0_126] : memref<1xf32>
      %178 = arith.addf %176, %177 : f32
      %c0_127 = arith.constant 0 : index
      %179 = memref.load %ofc02toc01_buff_9[%c0_127] : memref<1xf32>
      %180 = arith.addf %178, %179 : f32
      %cst_128 = arith.constant 9.000000e+00 : f32
      %181 = arith.divf %180, %cst_128 : f32
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      %182 = arith.addi %0, %c10 : index
      cf.br ^bb1(%182 : index)
    ^bb3:  // pred: ^bb1
      cf.br ^bb4(%c9223372036854775800 : index)
    ^bb4(%183: index):  // 2 preds: ^bb3, ^bb5
      %184 = arith.cmpi slt, %183, %c9223372036854775807 : index
      cf.cond_br %184, ^bb5, ^bb6
    ^bb5:  // pred: ^bb4
      %c0_129 = arith.constant 0 : index
      %c1_130 = arith.constant 1 : index
      %c1_131 = arith.constant 1 : index
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %c0_132 = arith.constant 0 : index
      %185 = memref.load %ofc02toc01_buff_0[%c0_132] : memref<1xf32>
      %c0_133 = arith.constant 0 : index
      %186 = memref.load %ofc02toc01_buff_1[%c0_133] : memref<1xf32>
      %187 = arith.addf %185, %186 : f32
      %c0_134 = arith.constant 0 : index
      %188 = memref.load %ofc02toc01_buff_2[%c0_134] : memref<1xf32>
      %189 = arith.addf %187, %188 : f32
      %c0_135 = arith.constant 0 : index
      %190 = memref.load %ofc02toc01_buff_3[%c0_135] : memref<1xf32>
      %191 = arith.addf %189, %190 : f32
      %c0_136 = arith.constant 0 : index
      %192 = memref.load %ofc02toc01_buff_4[%c0_136] : memref<1xf32>
      %193 = arith.addf %191, %192 : f32
      %c0_137 = arith.constant 0 : index
      %194 = memref.load %ofc02toc01_buff_5[%c0_137] : memref<1xf32>
      %195 = arith.addf %193, %194 : f32
      %c0_138 = arith.constant 0 : index
      %196 = memref.load %ofc02toc01_buff_6[%c0_138] : memref<1xf32>
      %197 = arith.addf %195, %196 : f32
      %c0_139 = arith.constant 0 : index
      %198 = memref.load %ofc02toc01_buff_7[%c0_139] : memref<1xf32>
      %199 = arith.addf %197, %198 : f32
      %c0_140 = arith.constant 0 : index
      %200 = memref.load %ofc02toc01_buff_8[%c0_140] : memref<1xf32>
      %201 = arith.addf %199, %200 : f32
      %cst_141 = arith.constant 9.000000e+00 : f32
      %202 = arith.divf %201, %cst_141 : f32
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      %203 = arith.addi %183, %c1 : index
      cf.br ^bb4(%203 : index)
    ^bb6:  // pred: ^bb4
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
    aie.shim_dma_allocation @in0(MM2S, 0, 0)
    %mem_2_4 = aie.mem(%tile_2_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_0 : memref<1xf32>, 0, 1) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_1 : memref<1xf32>, 0, 1) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    aie.shim_dma_allocation @in1(MM2S, 1, 0)
    %mem_1_3 = aie.mem(%tile_1_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%ofc11toc02_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%ofc11toc02_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%ofc11toc02_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%ofc11toc02_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%ofc11toc02_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%ofc11toc02_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    aie.shim_dma_allocation @in2(MM2S, 0, 1)
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%in3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_0 : memref<1xf32>, 0, 1) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_1 : memref<1xf32>, 0, 1) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%of_c10toc11_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_c10toc11_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_c10toc11_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_c10toc11_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_c10toc11_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_c10toc11_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @in3(MM2S, 1, 1)
    %mem_2_2 = aie.mem(%tile_2_2) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_c20toc21_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_c20toc21_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_c20toc21_prod_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_c20toc21_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_c20toc21_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_c20toc21_prod_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    %mem_3_3 = aie.mem(%tile_3_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_c20toc21_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_c20toc21_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_c20toc21_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_c20toc21_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_c20toc21_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_c20toc21_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    %mem_2_3 = aie.mem(%tile_2_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_c10toc11_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_c10toc11_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_c10toc11_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_c10toc11_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_c10toc11_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_c10toc11_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    %mem_0_4 = aie.mem(%tile_0_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%ofc11toc02_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%ofc11toc02_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%ofc11toc02_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%ofc11toc02_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%ofc11toc02_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%ofc11toc02_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_0 : memref<1xf32>, 0, 1) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%out_prod_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_1 : memref<1xf32>, 0, 1) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%out_prod_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    aie.shim_dma_allocation @out(S2MM, 0, 1)
    aie.packet_flow(15) {
      aie.packet_source<%tile_0_0, Ctrl : 0>
      aie.packet_dest<%tile_0_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%tile_1_0, Ctrl : 0>
      aie.packet_dest<%tile_1_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%tile_2_0, Ctrl : 0>
      aie.packet_dest<%tile_2_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%tile_3_0, Ctrl : 0>
      aie.packet_dest<%tile_3_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
  }
}
