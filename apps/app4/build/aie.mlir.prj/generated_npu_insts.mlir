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
      %cst = arith.constant 9.000000e+00 : f32
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
      %2 = memref.load %ofc02toc01_buff_0[%c0] : memref<1xf32>
      %3 = memref.load %ofc02toc01_buff_1[%c0] : memref<1xf32>
      %4 = arith.addf %2, %3 : f32
      %5 = memref.load %ofc02toc01_buff_2[%c0] : memref<1xf32>
      %6 = arith.addf %4, %5 : f32
      %7 = memref.load %ofc02toc01_buff_3[%c0] : memref<1xf32>
      %8 = arith.addf %6, %7 : f32
      %9 = memref.load %ofc02toc01_buff_4[%c0] : memref<1xf32>
      %10 = arith.addf %8, %9 : f32
      %11 = memref.load %ofc02toc01_buff_5[%c0] : memref<1xf32>
      %12 = arith.addf %10, %11 : f32
      %13 = memref.load %ofc02toc01_buff_6[%c0] : memref<1xf32>
      %14 = arith.addf %12, %13 : f32
      %15 = memref.load %ofc02toc01_buff_7[%c0] : memref<1xf32>
      %16 = arith.addf %14, %15 : f32
      %17 = memref.load %ofc02toc01_buff_8[%c0] : memref<1xf32>
      %18 = arith.addf %16, %17 : f32
      %19 = arith.divf %18, %cst : f32
      memref.store %19, %out_buff_0[%c0] : memref<1xf32>
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %20 = memref.load %ofc02toc01_buff_9[%c0] : memref<1xf32>
      %21 = memref.load %ofc02toc01_buff_0[%c0] : memref<1xf32>
      %22 = arith.addf %20, %21 : f32
      %23 = memref.load %ofc02toc01_buff_1[%c0] : memref<1xf32>
      %24 = arith.addf %22, %23 : f32
      %25 = memref.load %ofc02toc01_buff_2[%c0] : memref<1xf32>
      %26 = arith.addf %24, %25 : f32
      %27 = memref.load %ofc02toc01_buff_3[%c0] : memref<1xf32>
      %28 = arith.addf %26, %27 : f32
      %29 = memref.load %ofc02toc01_buff_4[%c0] : memref<1xf32>
      %30 = arith.addf %28, %29 : f32
      %31 = memref.load %ofc02toc01_buff_5[%c0] : memref<1xf32>
      %32 = arith.addf %30, %31 : f32
      %33 = memref.load %ofc02toc01_buff_6[%c0] : memref<1xf32>
      %34 = arith.addf %32, %33 : f32
      %35 = memref.load %ofc02toc01_buff_7[%c0] : memref<1xf32>
      %36 = arith.addf %34, %35 : f32
      %37 = arith.divf %36, %cst : f32
      memref.store %37, %out_buff_1[%c0] : memref<1xf32>
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %38 = memref.load %ofc02toc01_buff_8[%c0] : memref<1xf32>
      %39 = memref.load %ofc02toc01_buff_9[%c0] : memref<1xf32>
      %40 = arith.addf %38, %39 : f32
      %41 = memref.load %ofc02toc01_buff_0[%c0] : memref<1xf32>
      %42 = arith.addf %40, %41 : f32
      %43 = memref.load %ofc02toc01_buff_1[%c0] : memref<1xf32>
      %44 = arith.addf %42, %43 : f32
      %45 = memref.load %ofc02toc01_buff_2[%c0] : memref<1xf32>
      %46 = arith.addf %44, %45 : f32
      %47 = memref.load %ofc02toc01_buff_3[%c0] : memref<1xf32>
      %48 = arith.addf %46, %47 : f32
      %49 = memref.load %ofc02toc01_buff_4[%c0] : memref<1xf32>
      %50 = arith.addf %48, %49 : f32
      %51 = memref.load %ofc02toc01_buff_5[%c0] : memref<1xf32>
      %52 = arith.addf %50, %51 : f32
      %53 = memref.load %ofc02toc01_buff_6[%c0] : memref<1xf32>
      %54 = arith.addf %52, %53 : f32
      %55 = arith.divf %54, %cst : f32
      memref.store %55, %out_buff_0[%c0] : memref<1xf32>
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %56 = memref.load %ofc02toc01_buff_7[%c0] : memref<1xf32>
      %57 = memref.load %ofc02toc01_buff_8[%c0] : memref<1xf32>
      %58 = arith.addf %56, %57 : f32
      %59 = memref.load %ofc02toc01_buff_9[%c0] : memref<1xf32>
      %60 = arith.addf %58, %59 : f32
      %61 = memref.load %ofc02toc01_buff_0[%c0] : memref<1xf32>
      %62 = arith.addf %60, %61 : f32
      %63 = memref.load %ofc02toc01_buff_1[%c0] : memref<1xf32>
      %64 = arith.addf %62, %63 : f32
      %65 = memref.load %ofc02toc01_buff_2[%c0] : memref<1xf32>
      %66 = arith.addf %64, %65 : f32
      %67 = memref.load %ofc02toc01_buff_3[%c0] : memref<1xf32>
      %68 = arith.addf %66, %67 : f32
      %69 = memref.load %ofc02toc01_buff_4[%c0] : memref<1xf32>
      %70 = arith.addf %68, %69 : f32
      %71 = memref.load %ofc02toc01_buff_5[%c0] : memref<1xf32>
      %72 = arith.addf %70, %71 : f32
      %73 = arith.divf %72, %cst : f32
      memref.store %73, %out_buff_1[%c0] : memref<1xf32>
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %74 = memref.load %ofc02toc01_buff_6[%c0] : memref<1xf32>
      %75 = memref.load %ofc02toc01_buff_7[%c0] : memref<1xf32>
      %76 = arith.addf %74, %75 : f32
      %77 = memref.load %ofc02toc01_buff_8[%c0] : memref<1xf32>
      %78 = arith.addf %76, %77 : f32
      %79 = memref.load %ofc02toc01_buff_9[%c0] : memref<1xf32>
      %80 = arith.addf %78, %79 : f32
      %81 = memref.load %ofc02toc01_buff_0[%c0] : memref<1xf32>
      %82 = arith.addf %80, %81 : f32
      %83 = memref.load %ofc02toc01_buff_1[%c0] : memref<1xf32>
      %84 = arith.addf %82, %83 : f32
      %85 = memref.load %ofc02toc01_buff_2[%c0] : memref<1xf32>
      %86 = arith.addf %84, %85 : f32
      %87 = memref.load %ofc02toc01_buff_3[%c0] : memref<1xf32>
      %88 = arith.addf %86, %87 : f32
      %89 = memref.load %ofc02toc01_buff_4[%c0] : memref<1xf32>
      %90 = arith.addf %88, %89 : f32
      %91 = arith.divf %90, %cst : f32
      memref.store %91, %out_buff_0[%c0] : memref<1xf32>
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %92 = memref.load %ofc02toc01_buff_5[%c0] : memref<1xf32>
      %93 = memref.load %ofc02toc01_buff_6[%c0] : memref<1xf32>
      %94 = arith.addf %92, %93 : f32
      %95 = memref.load %ofc02toc01_buff_7[%c0] : memref<1xf32>
      %96 = arith.addf %94, %95 : f32
      %97 = memref.load %ofc02toc01_buff_8[%c0] : memref<1xf32>
      %98 = arith.addf %96, %97 : f32
      %99 = memref.load %ofc02toc01_buff_9[%c0] : memref<1xf32>
      %100 = arith.addf %98, %99 : f32
      %101 = memref.load %ofc02toc01_buff_0[%c0] : memref<1xf32>
      %102 = arith.addf %100, %101 : f32
      %103 = memref.load %ofc02toc01_buff_1[%c0] : memref<1xf32>
      %104 = arith.addf %102, %103 : f32
      %105 = memref.load %ofc02toc01_buff_2[%c0] : memref<1xf32>
      %106 = arith.addf %104, %105 : f32
      %107 = memref.load %ofc02toc01_buff_3[%c0] : memref<1xf32>
      %108 = arith.addf %106, %107 : f32
      %109 = arith.divf %108, %cst : f32
      memref.store %109, %out_buff_1[%c0] : memref<1xf32>
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %110 = memref.load %ofc02toc01_buff_4[%c0] : memref<1xf32>
      %111 = memref.load %ofc02toc01_buff_5[%c0] : memref<1xf32>
      %112 = arith.addf %110, %111 : f32
      %113 = memref.load %ofc02toc01_buff_6[%c0] : memref<1xf32>
      %114 = arith.addf %112, %113 : f32
      %115 = memref.load %ofc02toc01_buff_7[%c0] : memref<1xf32>
      %116 = arith.addf %114, %115 : f32
      %117 = memref.load %ofc02toc01_buff_8[%c0] : memref<1xf32>
      %118 = arith.addf %116, %117 : f32
      %119 = memref.load %ofc02toc01_buff_9[%c0] : memref<1xf32>
      %120 = arith.addf %118, %119 : f32
      %121 = memref.load %ofc02toc01_buff_0[%c0] : memref<1xf32>
      %122 = arith.addf %120, %121 : f32
      %123 = memref.load %ofc02toc01_buff_1[%c0] : memref<1xf32>
      %124 = arith.addf %122, %123 : f32
      %125 = memref.load %ofc02toc01_buff_2[%c0] : memref<1xf32>
      %126 = arith.addf %124, %125 : f32
      %127 = arith.divf %126, %cst : f32
      memref.store %127, %out_buff_0[%c0] : memref<1xf32>
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %128 = memref.load %ofc02toc01_buff_3[%c0] : memref<1xf32>
      %129 = memref.load %ofc02toc01_buff_4[%c0] : memref<1xf32>
      %130 = arith.addf %128, %129 : f32
      %131 = memref.load %ofc02toc01_buff_5[%c0] : memref<1xf32>
      %132 = arith.addf %130, %131 : f32
      %133 = memref.load %ofc02toc01_buff_6[%c0] : memref<1xf32>
      %134 = arith.addf %132, %133 : f32
      %135 = memref.load %ofc02toc01_buff_7[%c0] : memref<1xf32>
      %136 = arith.addf %134, %135 : f32
      %137 = memref.load %ofc02toc01_buff_8[%c0] : memref<1xf32>
      %138 = arith.addf %136, %137 : f32
      %139 = memref.load %ofc02toc01_buff_9[%c0] : memref<1xf32>
      %140 = arith.addf %138, %139 : f32
      %141 = memref.load %ofc02toc01_buff_0[%c0] : memref<1xf32>
      %142 = arith.addf %140, %141 : f32
      %143 = memref.load %ofc02toc01_buff_1[%c0] : memref<1xf32>
      %144 = arith.addf %142, %143 : f32
      %145 = arith.divf %144, %cst : f32
      memref.store %145, %out_buff_1[%c0] : memref<1xf32>
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %146 = memref.load %ofc02toc01_buff_2[%c0] : memref<1xf32>
      %147 = memref.load %ofc02toc01_buff_3[%c0] : memref<1xf32>
      %148 = arith.addf %146, %147 : f32
      %149 = memref.load %ofc02toc01_buff_4[%c0] : memref<1xf32>
      %150 = arith.addf %148, %149 : f32
      %151 = memref.load %ofc02toc01_buff_5[%c0] : memref<1xf32>
      %152 = arith.addf %150, %151 : f32
      %153 = memref.load %ofc02toc01_buff_6[%c0] : memref<1xf32>
      %154 = arith.addf %152, %153 : f32
      %155 = memref.load %ofc02toc01_buff_7[%c0] : memref<1xf32>
      %156 = arith.addf %154, %155 : f32
      %157 = memref.load %ofc02toc01_buff_8[%c0] : memref<1xf32>
      %158 = arith.addf %156, %157 : f32
      %159 = memref.load %ofc02toc01_buff_9[%c0] : memref<1xf32>
      %160 = arith.addf %158, %159 : f32
      %161 = memref.load %ofc02toc01_buff_0[%c0] : memref<1xf32>
      %162 = arith.addf %160, %161 : f32
      %163 = arith.divf %162, %cst : f32
      memref.store %163, %out_buff_0[%c0] : memref<1xf32>
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %164 = memref.load %ofc02toc01_buff_1[%c0] : memref<1xf32>
      %165 = memref.load %ofc02toc01_buff_2[%c0] : memref<1xf32>
      %166 = arith.addf %164, %165 : f32
      %167 = memref.load %ofc02toc01_buff_3[%c0] : memref<1xf32>
      %168 = arith.addf %166, %167 : f32
      %169 = memref.load %ofc02toc01_buff_4[%c0] : memref<1xf32>
      %170 = arith.addf %168, %169 : f32
      %171 = memref.load %ofc02toc01_buff_5[%c0] : memref<1xf32>
      %172 = arith.addf %170, %171 : f32
      %173 = memref.load %ofc02toc01_buff_6[%c0] : memref<1xf32>
      %174 = arith.addf %172, %173 : f32
      %175 = memref.load %ofc02toc01_buff_7[%c0] : memref<1xf32>
      %176 = arith.addf %174, %175 : f32
      %177 = memref.load %ofc02toc01_buff_8[%c0] : memref<1xf32>
      %178 = arith.addf %176, %177 : f32
      %179 = memref.load %ofc02toc01_buff_9[%c0] : memref<1xf32>
      %180 = arith.addf %178, %179 : f32
      %181 = arith.divf %180, %cst : f32
      memref.store %181, %out_buff_1[%c0] : memref<1xf32>
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
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%ofc02toc01_cons_lock, AcquireGreaterEqual, 9)
      %185 = memref.load %ofc02toc01_buff_0[%c0] : memref<1xf32>
      %186 = memref.load %ofc02toc01_buff_1[%c0] : memref<1xf32>
      %187 = arith.addf %185, %186 : f32
      %188 = memref.load %ofc02toc01_buff_2[%c0] : memref<1xf32>
      %189 = arith.addf %187, %188 : f32
      %190 = memref.load %ofc02toc01_buff_3[%c0] : memref<1xf32>
      %191 = arith.addf %189, %190 : f32
      %192 = memref.load %ofc02toc01_buff_4[%c0] : memref<1xf32>
      %193 = arith.addf %191, %192 : f32
      %194 = memref.load %ofc02toc01_buff_5[%c0] : memref<1xf32>
      %195 = arith.addf %193, %194 : f32
      %196 = memref.load %ofc02toc01_buff_6[%c0] : memref<1xf32>
      %197 = arith.addf %195, %196 : f32
      %198 = memref.load %ofc02toc01_buff_7[%c0] : memref<1xf32>
      %199 = arith.addf %197, %198 : f32
      %200 = memref.load %ofc02toc01_buff_8[%c0] : memref<1xf32>
      %201 = arith.addf %199, %200 : f32
      %202 = arith.divf %201, %cst : f32
      memref.store %202, %out_buff_0[%c0] : memref<1xf32>
      aie.use_lock(%ofc02toc01_prod_lock, Release, 9)
      aie.use_lock(%out_cons_lock, Release, 1)
      %203 = arith.addi %183, %c1 : index
      cf.br ^bb4(%203 : index)
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

