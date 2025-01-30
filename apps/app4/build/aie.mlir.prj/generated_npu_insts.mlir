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
    %tile_0_3 = aie.tile(0, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_0_4 = aie.tile(0, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_1_0 = aie.tile(1, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_1_2 = aie.tile(1, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_1_3 = aie.tile(1, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_1_4 = aie.tile(1, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_2_0 = aie.tile(2, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_2_2 = aie.tile(2, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_2_3 = aie.tile(2, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_2_4 = aie.tile(2, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_3_0 = aie.tile(3, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_3_2 = aie.tile(3, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_3_3 = aie.tile(3, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
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
    %in2_cons_buff_0 = aie.buffer(%tile_1_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in2_cons_buff_0"} : memref<1024xf32> 
    %in2_cons_buff_1 = aie.buffer(%tile_1_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in2_cons_buff_1"} : memref<1024xf32> 
    %in2_cons_prod_lock = aie.lock(%tile_1_2, 0) {init = 2 : i32, sym_name = "in2_cons_prod_lock"}
    %in2_cons_cons_lock = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "in2_cons_cons_lock"}
    %in1_cons_buff_0 = aie.buffer(%tile_1_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in1_cons_buff_0"} : memref<1024xf32> 
    %in1_cons_buff_1 = aie.buffer(%tile_1_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in1_cons_buff_1"} : memref<1024xf32> 
    %in1_cons_prod_lock = aie.lock(%tile_1_3, 0) {init = 2 : i32, sym_name = "in1_cons_prod_lock"}
    %in1_cons_cons_lock = aie.lock(%tile_1_3, 1) {init = 0 : i32, sym_name = "in1_cons_cons_lock"}
    %in0_cons_buff_0 = aie.buffer(%tile_2_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "in0_cons_buff_0"} : memref<1xf32> 
    %in0_cons_buff_1 = aie.buffer(%tile_2_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "in0_cons_buff_1"} : memref<1xf32> 
    %in0_cons_prod_lock = aie.lock(%tile_2_4, 0) {init = 2 : i32, sym_name = "in0_cons_prod_lock"}
    %in0_cons_cons_lock = aie.lock(%tile_2_4, 1) {init = 0 : i32, sym_name = "in0_cons_cons_lock"}
    aie.flow(%tile_0_0, DMA : 0, %tile_2_4, DMA : 0)
    aie.flow(%tile_0_0, DMA : 1, %tile_1_3, DMA : 0)
    aie.flow(%tile_1_0, DMA : 0, %tile_1_2, DMA : 0)
    aie.flow(%tile_1_0, DMA : 1, %tile_1_2, DMA : 1)
    aie.flow(%tile_2_2, DMA : 0, %tile_3_3, DMA : 0)
    aie.flow(%tile_1_2, DMA : 0, %tile_2_3, DMA : 0)
    aie.flow(%tile_1_3, DMA : 0, %tile_0_4, DMA : 0)
    aie.flow(%tile_0_3, DMA : 0, %tile_1_0, DMA : 0)
    %core_1_2 = aie.core(%tile_1_2) {
      %c1024_i32 = arith.constant 1024 : i32
      %c8 = arith.constant 8 : index
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb14
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb15
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb9(%c0 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb10
      %9 = arith.cmpi slt, %8, %c8 : index
      cf.cond_br %9, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      %10 = arith.addi %8, %c2 : index
      cf.br ^bb9(%10 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb12(%c0 : index)
    ^bb12(%11: index):  // 2 preds: ^bb11, ^bb13
      %12 = arith.cmpi slt, %11, %c8 : index
      cf.cond_br %12, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      %13 = arith.addi %11, %c2 : index
      cf.br ^bb12(%13 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      %14 = arith.addi %0, %c2 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb16(%c0 : index)
    ^bb16(%15: index):  // 2 preds: ^bb15, ^bb17
      %16 = arith.cmpi slt, %15, %c8 : index
      cf.cond_br %16, ^bb17, ^bb18
    ^bb17:  // pred: ^bb16
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      %17 = arith.addi %15, %c2 : index
      cf.br ^bb16(%17 : index)
    ^bb18:  // pred: ^bb16
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb19(%c0 : index)
    ^bb19(%18: index):  // 2 preds: ^bb18, ^bb20
      %19 = arith.cmpi slt, %18, %c8 : index
      cf.cond_br %19, ^bb20, ^bb21
    ^bb20:  // pred: ^bb19
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_0, %of_c10toc11_buff_0, %in3_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      %20 = arith.addi %18, %c2 : index
      cf.br ^bb19(%20 : index)
    ^bb21:  // pred: ^bb19
      aie.use_lock(%of_c10toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%in2_cons_buff_1, %of_c10toc11_buff_1, %in3_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c10toc11_cons_lock, Release, 1)
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_2_3 = aie.core(%tile_2_3) {
      %c1024_i32 = arith.constant 1024 : i32
      %c8 = arith.constant 8 : index
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_c10toc11_cons_buff_0, %of_c21toc22_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_c10toc11_cons_buff_1, %of_c21toc22_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_c10toc11_cons_buff_0, %of_c21toc22_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_c10toc11_cons_buff_1, %of_c21toc22_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_c10toc11_cons_buff_0, %of_c21toc22_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_c10toc11_cons_buff_1, %of_c21toc22_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      cf.br ^bb10(%c0 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c8 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_c10toc11_cons_buff_0, %of_c21toc22_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_c10toc11_cons_buff_1, %of_c21toc22_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_c21toc22_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c10toc11_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_c10toc11_cons_buff_0, %of_c21toc22_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c10toc11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c21toc22_cons_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_2_4 = aie.core(%tile_2_4) {
      %c1024_i32 = arith.constant 1024 : i32
      %c8 = arith.constant 8 : index
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_0, %of_c22toc12_buff_0, %in0_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_1, %of_c22toc12_buff_1, %in0_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_0, %of_c22toc12_buff_0, %in0_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_1, %of_c22toc12_buff_1, %in0_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_0, %of_c22toc12_buff_0, %in0_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_1, %of_c22toc12_buff_1, %in0_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb10(%c0 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c8 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_0, %of_c22toc12_buff_0, %in0_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_1, %of_c22toc12_buff_1, %in0_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_c22toc12_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c21toc22_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_c21toc22_buff_0, %of_c22toc12_buff_0, %in0_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_c21toc22_prod_lock, Release, 1)
      aie.use_lock(%of_c22toc12_cons_lock, Release, 1)
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_1_4 = aie.core(%tile_1_4) {
      %c1024_i32 = arith.constant 1024 : i32
      %c8 = arith.constant 8 : index
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_c22toc12_buff_0, %of_c12toc11_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_c22toc12_buff_1, %of_c12toc11_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_c22toc12_buff_0, %of_c12toc11_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_c22toc12_buff_1, %of_c12toc11_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_c22toc12_buff_0, %of_c12toc11_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_c22toc12_buff_1, %of_c12toc11_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      cf.br ^bb10(%c0 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c8 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_c22toc12_buff_0, %of_c12toc11_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_c22toc12_buff_1, %of_c12toc11_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_c12toc11_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c22toc12_cons_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_c22toc12_buff_0, %of_c12toc11_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_c22toc12_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_cons_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_1_3 = aie.core(%tile_1_3) {
      %c1024_i32 = arith.constant 1024 : i32
      %c8 = arith.constant 8 : index
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%in1_cons_buff_0, %of_c12toc11_buff_0, %ofc11toc02_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%in1_cons_buff_1, %of_c12toc11_buff_1, %ofc11toc02_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%in1_cons_buff_0, %of_c12toc11_buff_0, %ofc11toc02_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%in1_cons_buff_1, %of_c12toc11_buff_1, %ofc11toc02_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%in1_cons_buff_0, %of_c12toc11_buff_0, %ofc11toc02_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%in1_cons_buff_1, %of_c12toc11_buff_1, %ofc11toc02_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      cf.br ^bb10(%c0 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c8 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%in1_cons_buff_0, %of_c12toc11_buff_0, %ofc11toc02_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%in1_cons_buff_1, %of_c12toc11_buff_1, %ofc11toc02_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%ofc11toc02_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_c12toc11_cons_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%in1_cons_buff_0, %of_c12toc11_buff_0, %ofc11toc02_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_c12toc11_prod_lock, Release, 1)
      aie.use_lock(%ofc11toc02_cons_lock, Release, 1)
      aie.end
    } {link_with = "vector_mult.o"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c1024_i32 = arith.constant 1024 : i32
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
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_9, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_9, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_9, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_9, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_9, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_9, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_9, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_9, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_9, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
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
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_1, %ofc02toc01_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%ofc11toc02_cons_prod_lock, Release, 1)
      aie.use_lock(%ofc02toc01_cons_lock, Release, 1)
      aie.use_lock(%ofc02toc01_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc11toc02_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @mean(%ofc11toc02_cons_buff_0, %ofc02toc01_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
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
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      %2 = arith.addi %0, %c10 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      cf.br ^bb4(%c9223372036854775800 : index)
    ^bb4(%3: index):  // 2 preds: ^bb3, ^bb5
      %4 = arith.cmpi slt, %3, %c9223372036854775807 : index
      cf.cond_br %4, ^bb5, ^bb6
    ^bb5:  // pred: ^bb4
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      %5 = arith.addi %3, %c1 : index
      cf.br ^bb4(%5 : index)
    ^bb6:  // pred: ^bb4
      aie.end
    } {link_with = "passthrough.o"}
    memref.global "private" constant @blockwrite_data_0 : memref<8xi32> = dense<[1, 0, 0, 0, -2147483648, 0, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_1 : memref<8xi32> = dense<[9216, 0, 0, 0, -2147483648, 0, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_2 : memref<8xi32> = dense<[2, 0, 0, 0, -2147483648, 0, 0, 33554432]>
    aiex.runtime_sequence(%arg0: memref<1xf32>, %arg1: memref<9216xf32>, %arg2: memref<9216xf32>, %arg3: memref<1xf32>, %arg4: memref<9xf32>) {
      %0 = memref.get_global @blockwrite_data_0 : memref<8xi32>
      aiex.npu.blockwrite(%0) {address = 118816 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 118820 : ui32, arg_idx = 0 : i32, arg_plus = 0 : i32}
      aiex.npu.write32 {address = 119316 : ui32, column = 0 : i32, row = 0 : i32, value = 1 : ui32}
      %1 = memref.get_global @blockwrite_data_1 : memref<8xi32>
      aiex.npu.blockwrite(%1) {address = 118848 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 118852 : ui32, arg_idx = 1 : i32, arg_plus = 0 : i32}
      aiex.npu.write32 {address = 119324 : ui32, column = 0 : i32, row = 0 : i32, value = 2 : ui32}
      %2 = memref.get_global @blockwrite_data_1 : memref<8xi32>
      aiex.npu.blockwrite(%2) {address = 33673312 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 33673316 : ui32, arg_idx = 2 : i32, arg_plus = 0 : i32}
      aiex.npu.write32 {address = 119316 : ui32, column = 1 : i32, row = 0 : i32, value = 3 : ui32}
      %3 = memref.get_global @blockwrite_data_2 : memref<8xi32>
      aiex.npu.blockwrite(%3) {address = 33673344 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 33673348 : ui32, arg_idx = 3 : i32, arg_plus = 0 : i32}
      aiex.npu.write32 {address = 119324 : ui32, column = 1 : i32, row = 0 : i32, value = 4 : ui32}
      %4 = memref.get_global @blockwrite_data_0 : memref<8xi32>
      aiex.npu.blockwrite(%4) {address = 33673216 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 33673220 : ui32, arg_idx = 4 : i32, arg_plus = 0 : i32}
      aiex.npu.maskwrite32 {address = 119296 : ui32, column = 1 : i32, mask = 3840 : ui32, row = 0 : i32, value = 3840 : ui32}
      aiex.npu.write32 {address = 119300 : ui32, column = 1 : i32, row = 0 : i32, value = 2147483648 : ui32}
      aiex.npu.sync {channel = 0 : i32, column = 1 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
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

