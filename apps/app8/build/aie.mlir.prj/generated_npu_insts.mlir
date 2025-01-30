module {
  aie.device(npu1_4col) {
    memref.global "public" @out_cons : memref<1xf32>
    memref.global "public" @out : memref<1xf32>
    memref.global "public" @of_meanG : memref<1xf32>
    memref.global "public" @of_meanF : memref<1024xf32>
    memref.global "public" @of_multE : memref<1024xf32>
    memref.global "public" @of_cosD : memref<1024xf32>
    memref.global "public" @of_scaleC : memref<1024xf32>
    memref.global "public" @addB1 : memref<1024xf32>
    memref.global "public" @addB0 : memref<1024xf32>
    memref.global "public" @addA1_cons : memref<1024xf32>
    memref.global "public" @addA1 : memref<1024xf32>
    memref.global "public" @addA0 : memref<1024xf32>
    memref.global "public" @n_cons : memref<1xf32>
    memref.global "public" @n : memref<1xf32>
    memref.global "public" @m_cons : memref<1xf32>
    memref.global "public" @m : memref<1xf32>
    memref.global "public" @l_cons : memref<1xf32>
    memref.global "public" @l : memref<1xf32>
    memref.global "public" @w_cons : memref<1024xf32>
    memref.global "public" @w : memref<1024xf32>
    memref.global "public" @v_cons : memref<1024xf32>
    memref.global "public" @v : memref<1024xf32>
    memref.global "public" @u_cons : memref<1024xf32>
    memref.global "public" @u : memref<1024xf32>
    memref.global "public" @in3_cons : memref<3xf32>
    memref.global "public" @in3 : memref<3xf32>
    memref.global "public" @in2_cons : memref<3072xf32>
    memref.global "public" @in2 : memref<3072xf32>
    memref.global "public" @in1_cons : memref<1024xf32>
    memref.global "public" @in1 : memref<1024xf32>
    memref.global "public" @in0_cons : memref<1xf32>
    memref.global "public" @in0 : memref<1xf32>
    func.func private @vector_scalar_mul_aie_scalar(memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32)
    func.func private @passthrough(memref<1024xf32>, memref<1024xf32>, i32)
    func.func private @vector_add_aie_scalar(memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32)
    func.func private @vector_mult_aie_scalar(memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32)
    func.func private @mean(memref<1024xf32>, memref<1xf32>, i32)
    func.func private @cos_float_1024(memref<1024xf32>, memref<1024xf32>, i32)
    %tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_0_3 = aie.tile(0, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_0_4 = aie.tile(0, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_1_0 = aie.tile(1, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_1_1 = aie.tile(1, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_1_2 = aie.tile(1, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_1_3 = aie.tile(1, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_1_4 = aie.tile(1, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_2_0 = aie.tile(2, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_2_1 = aie.tile(2, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_2_2 = aie.tile(2, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_2_3 = aie.tile(2, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_2_4 = aie.tile(2, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_3_0 = aie.tile(3, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_3_2 = aie.tile(3, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_3_4 = aie.tile(3, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %out_buff_0 = aie.buffer(%tile_3_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out_buff_0"} : memref<1xf32> 
    %out_buff_1 = aie.buffer(%tile_3_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out_buff_1"} : memref<1xf32> 
    %out_prod_lock = aie.lock(%tile_3_4, 0) {init = 2 : i32, sym_name = "out_prod_lock"}
    %out_cons_lock = aie.lock(%tile_3_4, 1) {init = 0 : i32, sym_name = "out_cons_lock"}
    %of_meanG_buff_0 = aie.buffer(%tile_2_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_meanG_buff_0"} : memref<1xf32> 
    %of_meanG_buff_1 = aie.buffer(%tile_2_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_meanG_buff_1"} : memref<1xf32> 
    %of_meanG_buff_2 = aie.buffer(%tile_2_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_meanG_buff_2"} : memref<1xf32> 
    %of_meanG_buff_3 = aie.buffer(%tile_2_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_meanG_buff_3"} : memref<1xf32> 
    %of_meanG_buff_4 = aie.buffer(%tile_2_4) {address = 1028 : i32, mem_bank = 0 : i32, sym_name = "of_meanG_buff_4"} : memref<1xf32> 
    %of_meanG_buff_5 = aie.buffer(%tile_2_4) {address = 16388 : i32, mem_bank = 1 : i32, sym_name = "of_meanG_buff_5"} : memref<1xf32> 
    %of_meanG_buff_6 = aie.buffer(%tile_2_4) {address = 32772 : i32, mem_bank = 2 : i32, sym_name = "of_meanG_buff_6"} : memref<1xf32> 
    %of_meanG_buff_7 = aie.buffer(%tile_2_4) {address = 49156 : i32, mem_bank = 3 : i32, sym_name = "of_meanG_buff_7"} : memref<1xf32> 
    %of_meanG_buff_8 = aie.buffer(%tile_2_4) {address = 1032 : i32, mem_bank = 0 : i32, sym_name = "of_meanG_buff_8"} : memref<1xf32> 
    %of_meanG_buff_9 = aie.buffer(%tile_2_4) {address = 16392 : i32, mem_bank = 1 : i32, sym_name = "of_meanG_buff_9"} : memref<1xf32> 
    %of_meanG_prod_lock = aie.lock(%tile_2_4, 0) {init = 10 : i32, sym_name = "of_meanG_prod_lock"}
    %of_meanG_cons_lock = aie.lock(%tile_2_4, 1) {init = 0 : i32, sym_name = "of_meanG_cons_lock"}
    %of_meanF_buff_0 = aie.buffer(%tile_1_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_meanF_buff_0"} : memref<1024xf32> 
    %of_meanF_buff_1 = aie.buffer(%tile_1_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_meanF_buff_1"} : memref<1024xf32> 
    %of_meanF_prod_lock = aie.lock(%tile_1_4, 2) {init = 2 : i32, sym_name = "of_meanF_prod_lock"}
    %of_meanF_cons_lock = aie.lock(%tile_1_4, 3) {init = 0 : i32, sym_name = "of_meanF_cons_lock"}
    %of_multE_buff_0 = aie.buffer(%tile_0_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_multE_buff_0"} : memref<1024xf32> 
    %of_multE_buff_1 = aie.buffer(%tile_0_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_multE_buff_1"} : memref<1024xf32> 
    %of_multE_prod_lock = aie.lock(%tile_0_4, 0) {init = 2 : i32, sym_name = "of_multE_prod_lock"}
    %of_multE_cons_lock = aie.lock(%tile_0_4, 1) {init = 0 : i32, sym_name = "of_multE_cons_lock"}
    %of_cosD_buff_0 = aie.buffer(%tile_0_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_cosD_buff_0"} : memref<1024xf32> 
    %of_cosD_buff_1 = aie.buffer(%tile_0_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_cosD_buff_1"} : memref<1024xf32> 
    %of_cosD_prod_lock = aie.lock(%tile_0_3, 4) {init = 2 : i32, sym_name = "of_cosD_prod_lock"}
    %of_cosD_cons_lock = aie.lock(%tile_0_3, 5) {init = 0 : i32, sym_name = "of_cosD_cons_lock"}
    %of_scaleC_buff_0 = aie.buffer(%tile_0_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_scaleC_buff_0"} : memref<1024xf32> 
    %of_scaleC_buff_1 = aie.buffer(%tile_0_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_scaleC_buff_1"} : memref<1024xf32> 
    %of_scaleC_prod_lock = aie.lock(%tile_0_3, 2) {init = 2 : i32, sym_name = "of_scaleC_prod_lock"}
    %of_scaleC_cons_lock = aie.lock(%tile_0_3, 3) {init = 0 : i32, sym_name = "of_scaleC_cons_lock"}
    %addB1_buff_0 = aie.buffer(%tile_1_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "addB1_buff_0"} : memref<1024xf32> 
    %addB1_buff_1 = aie.buffer(%tile_1_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "addB1_buff_1"} : memref<1024xf32> 
    %addB1_prod_lock = aie.lock(%tile_1_3, 0) {init = 2 : i32, sym_name = "addB1_prod_lock"}
    %addB1_cons_lock = aie.lock(%tile_1_3, 1) {init = 0 : i32, sym_name = "addB1_cons_lock"}
    %addB0_buff_0 = aie.buffer(%tile_1_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "addB0_buff_0"} : memref<1024xf32> 
    %addB0_buff_1 = aie.buffer(%tile_1_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "addB0_buff_1"} : memref<1024xf32> 
    %addB0_prod_lock = aie.lock(%tile_1_2, 4) {init = 2 : i32, sym_name = "addB0_prod_lock"}
    %addB0_cons_lock = aie.lock(%tile_1_2, 5) {init = 0 : i32, sym_name = "addB0_cons_lock"}
    %addA1_cons_buff_0 = aie.buffer(%tile_2_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "addA1_cons_buff_0"} : memref<1024xf32> 
    %addA1_cons_buff_1 = aie.buffer(%tile_2_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "addA1_cons_buff_1"} : memref<1024xf32> 
    %addA1_cons_prod_lock = aie.lock(%tile_2_3, 0) {init = 2 : i32, sym_name = "addA1_cons_prod_lock"}
    %addA1_cons_cons_lock = aie.lock(%tile_2_3, 1) {init = 0 : i32, sym_name = "addA1_cons_cons_lock"}
    %addA1_buff_0 = aie.buffer(%tile_3_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "addA1_buff_0"} : memref<1024xf32> 
    %addA1_buff_1 = aie.buffer(%tile_3_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "addA1_buff_1"} : memref<1024xf32> 
    %addA1_prod_lock = aie.lock(%tile_3_2, 4) {init = 2 : i32, sym_name = "addA1_prod_lock"}
    %addA1_cons_lock = aie.lock(%tile_3_2, 5) {init = 0 : i32, sym_name = "addA1_cons_lock"}
    %addA0_buff_0 = aie.buffer(%tile_2_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "addA0_buff_0"} : memref<1024xf32> 
    %addA0_buff_1 = aie.buffer(%tile_2_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "addA0_buff_1"} : memref<1024xf32> 
    %addA0_prod_lock = aie.lock(%tile_2_2, 4) {init = 2 : i32, sym_name = "addA0_prod_lock"}
    %addA0_cons_lock = aie.lock(%tile_2_2, 5) {init = 0 : i32, sym_name = "addA0_cons_lock"}
    %n_cons_buff_0 = aie.buffer(%tile_3_2) {address = 5120 : i32, mem_bank = 0 : i32, sym_name = "n_cons_buff_0"} : memref<1xf32> 
    %n_cons_buff_1 = aie.buffer(%tile_3_2) {address = 20480 : i32, mem_bank = 1 : i32, sym_name = "n_cons_buff_1"} : memref<1xf32> 
    %n_cons_prod_lock = aie.lock(%tile_3_2, 2) {init = 2 : i32, sym_name = "n_cons_prod_lock"}
    %n_cons_cons_lock = aie.lock(%tile_3_2, 3) {init = 0 : i32, sym_name = "n_cons_cons_lock"}
    %m_cons_buff_0 = aie.buffer(%tile_2_2) {address = 5120 : i32, mem_bank = 0 : i32, sym_name = "m_cons_buff_0"} : memref<1xf32> 
    %m_cons_buff_1 = aie.buffer(%tile_2_2) {address = 20480 : i32, mem_bank = 1 : i32, sym_name = "m_cons_buff_1"} : memref<1xf32> 
    %m_cons_prod_lock = aie.lock(%tile_2_2, 2) {init = 2 : i32, sym_name = "m_cons_prod_lock"}
    %m_cons_cons_lock = aie.lock(%tile_2_2, 3) {init = 0 : i32, sym_name = "m_cons_cons_lock"}
    %l_cons_buff_0 = aie.buffer(%tile_1_2) {address = 5120 : i32, mem_bank = 0 : i32, sym_name = "l_cons_buff_0"} : memref<1xf32> 
    %l_cons_buff_1 = aie.buffer(%tile_1_2) {address = 20480 : i32, mem_bank = 1 : i32, sym_name = "l_cons_buff_1"} : memref<1xf32> 
    %l_cons_prod_lock = aie.lock(%tile_1_2, 2) {init = 2 : i32, sym_name = "l_cons_prod_lock"}
    %l_cons_cons_lock = aie.lock(%tile_1_2, 3) {init = 0 : i32, sym_name = "l_cons_cons_lock"}
    %w_cons_buff_0 = aie.buffer(%tile_3_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "w_cons_buff_0"} : memref<1024xf32> 
    %w_cons_buff_1 = aie.buffer(%tile_3_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "w_cons_buff_1"} : memref<1024xf32> 
    %w_cons_prod_lock = aie.lock(%tile_3_2, 0) {init = 2 : i32, sym_name = "w_cons_prod_lock"}
    %w_cons_cons_lock = aie.lock(%tile_3_2, 1) {init = 0 : i32, sym_name = "w_cons_cons_lock"}
    %v_cons_buff_0 = aie.buffer(%tile_2_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "v_cons_buff_0"} : memref<1024xf32> 
    %v_cons_buff_1 = aie.buffer(%tile_2_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "v_cons_buff_1"} : memref<1024xf32> 
    %v_cons_prod_lock = aie.lock(%tile_2_2, 0) {init = 2 : i32, sym_name = "v_cons_prod_lock"}
    %v_cons_cons_lock = aie.lock(%tile_2_2, 1) {init = 0 : i32, sym_name = "v_cons_cons_lock"}
    %u_cons_buff_0 = aie.buffer(%tile_1_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "u_cons_buff_0"} : memref<1024xf32> 
    %u_cons_buff_1 = aie.buffer(%tile_1_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "u_cons_buff_1"} : memref<1024xf32> 
    %u_cons_prod_lock = aie.lock(%tile_1_2, 0) {init = 2 : i32, sym_name = "u_cons_prod_lock"}
    %u_cons_cons_lock = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "u_cons_cons_lock"}
    %in3_cons_buff_0 = aie.buffer(%tile_2_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in3_cons_buff_0"} : memref<3xf32> 
    %in3_cons_prod_lock = aie.lock(%tile_2_1, 0) {init = 3 : i32, sym_name = "in3_cons_prod_lock"}
    %in3_cons_cons_lock = aie.lock(%tile_2_1, 1) {init = 0 : i32, sym_name = "in3_cons_cons_lock"}
    %in2_cons_buff_0 = aie.buffer(%tile_1_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in2_cons_buff_0"} : memref<3072xf32> 
    %in2_cons_prod_lock = aie.lock(%tile_1_1, 0) {init = 3 : i32, sym_name = "in2_cons_prod_lock"}
    %in2_cons_cons_lock = aie.lock(%tile_1_1, 1) {init = 0 : i32, sym_name = "in2_cons_cons_lock"}
    %in1_cons_buff_0 = aie.buffer(%tile_1_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in1_cons_buff_0"} : memref<1024xf32> 
    %in1_cons_buff_1 = aie.buffer(%tile_1_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in1_cons_buff_1"} : memref<1024xf32> 
    %in1_cons_prod_lock = aie.lock(%tile_1_4, 0) {init = 2 : i32, sym_name = "in1_cons_prod_lock"}
    %in1_cons_cons_lock = aie.lock(%tile_1_4, 1) {init = 0 : i32, sym_name = "in1_cons_cons_lock"}
    %in0_cons_buff_0 = aie.buffer(%tile_0_3) {address = 5120 : i32, mem_bank = 0 : i32, sym_name = "in0_cons_buff_0"} : memref<1xf32> 
    %in0_cons_buff_1 = aie.buffer(%tile_0_3) {address = 20480 : i32, mem_bank = 1 : i32, sym_name = "in0_cons_buff_1"} : memref<1xf32> 
    %in0_cons_prod_lock = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "in0_cons_prod_lock"}
    %in0_cons_cons_lock = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "in0_cons_cons_lock"}
    aie.flow(%tile_0_0, DMA : 0, %tile_0_3, DMA : 0)
    aie.flow(%tile_0_0, DMA : 1, %tile_1_4, DMA : 0)
    aie.flow(%tile_1_0, DMA : 0, %tile_1_1, DMA : 0)
    aie.flow(%tile_1_0, DMA : 1, %tile_2_1, DMA : 0)
    aie.flow(%tile_1_1, DMA : 0, %tile_1_2, DMA : 0)
    aie.flow(%tile_1_1, DMA : 1, %tile_2_2, DMA : 0)
    aie.flow(%tile_1_1, DMA : 2, %tile_3_2, DMA : 0)
    aie.flow(%tile_2_1, DMA : 0, %tile_1_2, DMA : 1)
    aie.flow(%tile_2_1, DMA : 1, %tile_2_2, DMA : 1)
    aie.flow(%tile_2_1, DMA : 2, %tile_3_2, DMA : 1)
    aie.flow(%tile_3_2, DMA : 0, %tile_2_3, DMA : 0)
    aie.flow(%tile_3_4, DMA : 0, %tile_3_0, DMA : 0)
    %core_1_2 = aie.core(%tile_1_2) {
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
      aie.use_lock(%l_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%l_cons_prod_lock, Release, 1)
      aie.use_lock(%l_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%l_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%l_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb10(%c0 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c8 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%l_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_2_2 = aie.core(%tile_2_2) {
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
      aie.use_lock(%m_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%m_cons_prod_lock, Release, 1)
      aie.use_lock(%m_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%m_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%m_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb10(%c0 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c8 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%m_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_3_2 = aie.core(%tile_3_2) {
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
      aie.use_lock(%n_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%n_cons_prod_lock, Release, 1)
      aie.use_lock(%n_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%n_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%n_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb10(%c0 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c8 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%n_cons_prod_lock, Release, 1)
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
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      cf.br ^bb10(%c0 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c8 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "vector_add.o"}
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
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      cf.br ^bb10(%c0 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c8 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      aie.end
    } {link_with = "vector_add.o"}
    %core_0_3 = aie.core(%tile_0_3) {
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
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
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
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_0_4 = aie.core(%tile_0_4) {
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
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      cf.br ^bb10(%c0 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c8 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
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
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      cf.br ^bb10(%c0 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c8 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "vector_mult.o"}
    %core_2_4 = aie.core(%tile_2_4) {
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
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %2 = arith.addi %0, %c10 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      cf.br ^bb4(%c9223372036854775800 : index)
    ^bb4(%3: index):  // 2 preds: ^bb3, ^bb5
      %4 = arith.cmpi slt, %3, %c9223372036854775807 : index
      cf.cond_br %4, ^bb5, ^bb6
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %5 = arith.addi %3, %c1 : index
      cf.br ^bb4(%5 : index)
    ^bb6:  // pred: ^bb4
      aie.end
    } {link_with = "mean.o"}
    %core_3_4 = aie.core(%tile_3_4) {
      %cst = arith.constant 9.000000e+00 : f32
      %c0 = arith.constant 0 : index
      %c9223372036854775800 = arith.constant 9223372036854775800 : index
      %c10 = arith.constant 10 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775800 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %2 = memref.load %of_meanG_buff_0[%c0] : memref<1xf32>
      %3 = memref.load %of_meanG_buff_1[%c0] : memref<1xf32>
      %4 = arith.addf %2, %3 : f32
      %5 = memref.load %of_meanG_buff_2[%c0] : memref<1xf32>
      %6 = arith.addf %4, %5 : f32
      %7 = memref.load %of_meanG_buff_3[%c0] : memref<1xf32>
      %8 = arith.addf %6, %7 : f32
      %9 = memref.load %of_meanG_buff_4[%c0] : memref<1xf32>
      %10 = arith.addf %8, %9 : f32
      %11 = memref.load %of_meanG_buff_5[%c0] : memref<1xf32>
      %12 = arith.addf %10, %11 : f32
      %13 = memref.load %of_meanG_buff_6[%c0] : memref<1xf32>
      %14 = arith.addf %12, %13 : f32
      %15 = memref.load %of_meanG_buff_7[%c0] : memref<1xf32>
      %16 = arith.addf %14, %15 : f32
      %17 = memref.load %of_meanG_buff_8[%c0] : memref<1xf32>
      %18 = arith.addf %16, %17 : f32
      %19 = arith.divf %18, %cst : f32
      memref.store %19, %out_buff_0[%c0] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %20 = memref.load %of_meanG_buff_9[%c0] : memref<1xf32>
      %21 = memref.load %of_meanG_buff_0[%c0] : memref<1xf32>
      %22 = arith.addf %20, %21 : f32
      %23 = memref.load %of_meanG_buff_1[%c0] : memref<1xf32>
      %24 = arith.addf %22, %23 : f32
      %25 = memref.load %of_meanG_buff_2[%c0] : memref<1xf32>
      %26 = arith.addf %24, %25 : f32
      %27 = memref.load %of_meanG_buff_3[%c0] : memref<1xf32>
      %28 = arith.addf %26, %27 : f32
      %29 = memref.load %of_meanG_buff_4[%c0] : memref<1xf32>
      %30 = arith.addf %28, %29 : f32
      %31 = memref.load %of_meanG_buff_5[%c0] : memref<1xf32>
      %32 = arith.addf %30, %31 : f32
      %33 = memref.load %of_meanG_buff_6[%c0] : memref<1xf32>
      %34 = arith.addf %32, %33 : f32
      %35 = memref.load %of_meanG_buff_7[%c0] : memref<1xf32>
      %36 = arith.addf %34, %35 : f32
      %37 = arith.divf %36, %cst : f32
      memref.store %37, %out_buff_1[%c0] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %38 = memref.load %of_meanG_buff_8[%c0] : memref<1xf32>
      %39 = memref.load %of_meanG_buff_9[%c0] : memref<1xf32>
      %40 = arith.addf %38, %39 : f32
      %41 = memref.load %of_meanG_buff_0[%c0] : memref<1xf32>
      %42 = arith.addf %40, %41 : f32
      %43 = memref.load %of_meanG_buff_1[%c0] : memref<1xf32>
      %44 = arith.addf %42, %43 : f32
      %45 = memref.load %of_meanG_buff_2[%c0] : memref<1xf32>
      %46 = arith.addf %44, %45 : f32
      %47 = memref.load %of_meanG_buff_3[%c0] : memref<1xf32>
      %48 = arith.addf %46, %47 : f32
      %49 = memref.load %of_meanG_buff_4[%c0] : memref<1xf32>
      %50 = arith.addf %48, %49 : f32
      %51 = memref.load %of_meanG_buff_5[%c0] : memref<1xf32>
      %52 = arith.addf %50, %51 : f32
      %53 = memref.load %of_meanG_buff_6[%c0] : memref<1xf32>
      %54 = arith.addf %52, %53 : f32
      %55 = arith.divf %54, %cst : f32
      memref.store %55, %out_buff_0[%c0] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %56 = memref.load %of_meanG_buff_7[%c0] : memref<1xf32>
      %57 = memref.load %of_meanG_buff_8[%c0] : memref<1xf32>
      %58 = arith.addf %56, %57 : f32
      %59 = memref.load %of_meanG_buff_9[%c0] : memref<1xf32>
      %60 = arith.addf %58, %59 : f32
      %61 = memref.load %of_meanG_buff_0[%c0] : memref<1xf32>
      %62 = arith.addf %60, %61 : f32
      %63 = memref.load %of_meanG_buff_1[%c0] : memref<1xf32>
      %64 = arith.addf %62, %63 : f32
      %65 = memref.load %of_meanG_buff_2[%c0] : memref<1xf32>
      %66 = arith.addf %64, %65 : f32
      %67 = memref.load %of_meanG_buff_3[%c0] : memref<1xf32>
      %68 = arith.addf %66, %67 : f32
      %69 = memref.load %of_meanG_buff_4[%c0] : memref<1xf32>
      %70 = arith.addf %68, %69 : f32
      %71 = memref.load %of_meanG_buff_5[%c0] : memref<1xf32>
      %72 = arith.addf %70, %71 : f32
      %73 = arith.divf %72, %cst : f32
      memref.store %73, %out_buff_1[%c0] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %74 = memref.load %of_meanG_buff_6[%c0] : memref<1xf32>
      %75 = memref.load %of_meanG_buff_7[%c0] : memref<1xf32>
      %76 = arith.addf %74, %75 : f32
      %77 = memref.load %of_meanG_buff_8[%c0] : memref<1xf32>
      %78 = arith.addf %76, %77 : f32
      %79 = memref.load %of_meanG_buff_9[%c0] : memref<1xf32>
      %80 = arith.addf %78, %79 : f32
      %81 = memref.load %of_meanG_buff_0[%c0] : memref<1xf32>
      %82 = arith.addf %80, %81 : f32
      %83 = memref.load %of_meanG_buff_1[%c0] : memref<1xf32>
      %84 = arith.addf %82, %83 : f32
      %85 = memref.load %of_meanG_buff_2[%c0] : memref<1xf32>
      %86 = arith.addf %84, %85 : f32
      %87 = memref.load %of_meanG_buff_3[%c0] : memref<1xf32>
      %88 = arith.addf %86, %87 : f32
      %89 = memref.load %of_meanG_buff_4[%c0] : memref<1xf32>
      %90 = arith.addf %88, %89 : f32
      %91 = arith.divf %90, %cst : f32
      memref.store %91, %out_buff_0[%c0] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %92 = memref.load %of_meanG_buff_5[%c0] : memref<1xf32>
      %93 = memref.load %of_meanG_buff_6[%c0] : memref<1xf32>
      %94 = arith.addf %92, %93 : f32
      %95 = memref.load %of_meanG_buff_7[%c0] : memref<1xf32>
      %96 = arith.addf %94, %95 : f32
      %97 = memref.load %of_meanG_buff_8[%c0] : memref<1xf32>
      %98 = arith.addf %96, %97 : f32
      %99 = memref.load %of_meanG_buff_9[%c0] : memref<1xf32>
      %100 = arith.addf %98, %99 : f32
      %101 = memref.load %of_meanG_buff_0[%c0] : memref<1xf32>
      %102 = arith.addf %100, %101 : f32
      %103 = memref.load %of_meanG_buff_1[%c0] : memref<1xf32>
      %104 = arith.addf %102, %103 : f32
      %105 = memref.load %of_meanG_buff_2[%c0] : memref<1xf32>
      %106 = arith.addf %104, %105 : f32
      %107 = memref.load %of_meanG_buff_3[%c0] : memref<1xf32>
      %108 = arith.addf %106, %107 : f32
      %109 = arith.divf %108, %cst : f32
      memref.store %109, %out_buff_1[%c0] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %110 = memref.load %of_meanG_buff_4[%c0] : memref<1xf32>
      %111 = memref.load %of_meanG_buff_5[%c0] : memref<1xf32>
      %112 = arith.addf %110, %111 : f32
      %113 = memref.load %of_meanG_buff_6[%c0] : memref<1xf32>
      %114 = arith.addf %112, %113 : f32
      %115 = memref.load %of_meanG_buff_7[%c0] : memref<1xf32>
      %116 = arith.addf %114, %115 : f32
      %117 = memref.load %of_meanG_buff_8[%c0] : memref<1xf32>
      %118 = arith.addf %116, %117 : f32
      %119 = memref.load %of_meanG_buff_9[%c0] : memref<1xf32>
      %120 = arith.addf %118, %119 : f32
      %121 = memref.load %of_meanG_buff_0[%c0] : memref<1xf32>
      %122 = arith.addf %120, %121 : f32
      %123 = memref.load %of_meanG_buff_1[%c0] : memref<1xf32>
      %124 = arith.addf %122, %123 : f32
      %125 = memref.load %of_meanG_buff_2[%c0] : memref<1xf32>
      %126 = arith.addf %124, %125 : f32
      %127 = arith.divf %126, %cst : f32
      memref.store %127, %out_buff_0[%c0] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %128 = memref.load %of_meanG_buff_3[%c0] : memref<1xf32>
      %129 = memref.load %of_meanG_buff_4[%c0] : memref<1xf32>
      %130 = arith.addf %128, %129 : f32
      %131 = memref.load %of_meanG_buff_5[%c0] : memref<1xf32>
      %132 = arith.addf %130, %131 : f32
      %133 = memref.load %of_meanG_buff_6[%c0] : memref<1xf32>
      %134 = arith.addf %132, %133 : f32
      %135 = memref.load %of_meanG_buff_7[%c0] : memref<1xf32>
      %136 = arith.addf %134, %135 : f32
      %137 = memref.load %of_meanG_buff_8[%c0] : memref<1xf32>
      %138 = arith.addf %136, %137 : f32
      %139 = memref.load %of_meanG_buff_9[%c0] : memref<1xf32>
      %140 = arith.addf %138, %139 : f32
      %141 = memref.load %of_meanG_buff_0[%c0] : memref<1xf32>
      %142 = arith.addf %140, %141 : f32
      %143 = memref.load %of_meanG_buff_1[%c0] : memref<1xf32>
      %144 = arith.addf %142, %143 : f32
      %145 = arith.divf %144, %cst : f32
      memref.store %145, %out_buff_1[%c0] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %146 = memref.load %of_meanG_buff_2[%c0] : memref<1xf32>
      %147 = memref.load %of_meanG_buff_3[%c0] : memref<1xf32>
      %148 = arith.addf %146, %147 : f32
      %149 = memref.load %of_meanG_buff_4[%c0] : memref<1xf32>
      %150 = arith.addf %148, %149 : f32
      %151 = memref.load %of_meanG_buff_5[%c0] : memref<1xf32>
      %152 = arith.addf %150, %151 : f32
      %153 = memref.load %of_meanG_buff_6[%c0] : memref<1xf32>
      %154 = arith.addf %152, %153 : f32
      %155 = memref.load %of_meanG_buff_7[%c0] : memref<1xf32>
      %156 = arith.addf %154, %155 : f32
      %157 = memref.load %of_meanG_buff_8[%c0] : memref<1xf32>
      %158 = arith.addf %156, %157 : f32
      %159 = memref.load %of_meanG_buff_9[%c0] : memref<1xf32>
      %160 = arith.addf %158, %159 : f32
      %161 = memref.load %of_meanG_buff_0[%c0] : memref<1xf32>
      %162 = arith.addf %160, %161 : f32
      %163 = arith.divf %162, %cst : f32
      memref.store %163, %out_buff_0[%c0] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %164 = memref.load %of_meanG_buff_1[%c0] : memref<1xf32>
      %165 = memref.load %of_meanG_buff_2[%c0] : memref<1xf32>
      %166 = arith.addf %164, %165 : f32
      %167 = memref.load %of_meanG_buff_3[%c0] : memref<1xf32>
      %168 = arith.addf %166, %167 : f32
      %169 = memref.load %of_meanG_buff_4[%c0] : memref<1xf32>
      %170 = arith.addf %168, %169 : f32
      %171 = memref.load %of_meanG_buff_5[%c0] : memref<1xf32>
      %172 = arith.addf %170, %171 : f32
      %173 = memref.load %of_meanG_buff_6[%c0] : memref<1xf32>
      %174 = arith.addf %172, %173 : f32
      %175 = memref.load %of_meanG_buff_7[%c0] : memref<1xf32>
      %176 = arith.addf %174, %175 : f32
      %177 = memref.load %of_meanG_buff_8[%c0] : memref<1xf32>
      %178 = arith.addf %176, %177 : f32
      %179 = memref.load %of_meanG_buff_9[%c0] : memref<1xf32>
      %180 = arith.addf %178, %179 : f32
      %181 = arith.divf %180, %cst : f32
      memref.store %181, %out_buff_1[%c0] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      %182 = arith.addi %0, %c10 : index
      cf.br ^bb1(%182 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %183 = memref.load %of_meanG_buff_0[%c0] : memref<1xf32>
      %184 = memref.load %of_meanG_buff_1[%c0] : memref<1xf32>
      %185 = arith.addf %183, %184 : f32
      %186 = memref.load %of_meanG_buff_2[%c0] : memref<1xf32>
      %187 = arith.addf %185, %186 : f32
      %188 = memref.load %of_meanG_buff_3[%c0] : memref<1xf32>
      %189 = arith.addf %187, %188 : f32
      %190 = memref.load %of_meanG_buff_4[%c0] : memref<1xf32>
      %191 = arith.addf %189, %190 : f32
      %192 = memref.load %of_meanG_buff_5[%c0] : memref<1xf32>
      %193 = arith.addf %191, %192 : f32
      %194 = memref.load %of_meanG_buff_6[%c0] : memref<1xf32>
      %195 = arith.addf %193, %194 : f32
      %196 = memref.load %of_meanG_buff_7[%c0] : memref<1xf32>
      %197 = arith.addf %195, %196 : f32
      %198 = memref.load %of_meanG_buff_8[%c0] : memref<1xf32>
      %199 = arith.addf %197, %198 : f32
      %200 = arith.divf %199, %cst : f32
      memref.store %200, %out_buff_0[%c0] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %201 = memref.load %of_meanG_buff_9[%c0] : memref<1xf32>
      %202 = memref.load %of_meanG_buff_0[%c0] : memref<1xf32>
      %203 = arith.addf %201, %202 : f32
      %204 = memref.load %of_meanG_buff_1[%c0] : memref<1xf32>
      %205 = arith.addf %203, %204 : f32
      %206 = memref.load %of_meanG_buff_2[%c0] : memref<1xf32>
      %207 = arith.addf %205, %206 : f32
      %208 = memref.load %of_meanG_buff_3[%c0] : memref<1xf32>
      %209 = arith.addf %207, %208 : f32
      %210 = memref.load %of_meanG_buff_4[%c0] : memref<1xf32>
      %211 = arith.addf %209, %210 : f32
      %212 = memref.load %of_meanG_buff_5[%c0] : memref<1xf32>
      %213 = arith.addf %211, %212 : f32
      %214 = memref.load %of_meanG_buff_6[%c0] : memref<1xf32>
      %215 = arith.addf %213, %214 : f32
      %216 = memref.load %of_meanG_buff_7[%c0] : memref<1xf32>
      %217 = arith.addf %215, %216 : f32
      %218 = arith.divf %217, %cst : f32
      memref.store %218, %out_buff_1[%c0] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %219 = memref.load %of_meanG_buff_8[%c0] : memref<1xf32>
      %220 = memref.load %of_meanG_buff_9[%c0] : memref<1xf32>
      %221 = arith.addf %219, %220 : f32
      %222 = memref.load %of_meanG_buff_0[%c0] : memref<1xf32>
      %223 = arith.addf %221, %222 : f32
      %224 = memref.load %of_meanG_buff_1[%c0] : memref<1xf32>
      %225 = arith.addf %223, %224 : f32
      %226 = memref.load %of_meanG_buff_2[%c0] : memref<1xf32>
      %227 = arith.addf %225, %226 : f32
      %228 = memref.load %of_meanG_buff_3[%c0] : memref<1xf32>
      %229 = arith.addf %227, %228 : f32
      %230 = memref.load %of_meanG_buff_4[%c0] : memref<1xf32>
      %231 = arith.addf %229, %230 : f32
      %232 = memref.load %of_meanG_buff_5[%c0] : memref<1xf32>
      %233 = arith.addf %231, %232 : f32
      %234 = memref.load %of_meanG_buff_6[%c0] : memref<1xf32>
      %235 = arith.addf %233, %234 : f32
      %236 = arith.divf %235, %cst : f32
      memref.store %236, %out_buff_0[%c0] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %237 = memref.load %of_meanG_buff_7[%c0] : memref<1xf32>
      %238 = memref.load %of_meanG_buff_8[%c0] : memref<1xf32>
      %239 = arith.addf %237, %238 : f32
      %240 = memref.load %of_meanG_buff_9[%c0] : memref<1xf32>
      %241 = arith.addf %239, %240 : f32
      %242 = memref.load %of_meanG_buff_0[%c0] : memref<1xf32>
      %243 = arith.addf %241, %242 : f32
      %244 = memref.load %of_meanG_buff_1[%c0] : memref<1xf32>
      %245 = arith.addf %243, %244 : f32
      %246 = memref.load %of_meanG_buff_2[%c0] : memref<1xf32>
      %247 = arith.addf %245, %246 : f32
      %248 = memref.load %of_meanG_buff_3[%c0] : memref<1xf32>
      %249 = arith.addf %247, %248 : f32
      %250 = memref.load %of_meanG_buff_4[%c0] : memref<1xf32>
      %251 = arith.addf %249, %250 : f32
      %252 = memref.load %of_meanG_buff_5[%c0] : memref<1xf32>
      %253 = arith.addf %251, %252 : f32
      %254 = arith.divf %253, %cst : f32
      memref.store %254, %out_buff_1[%c0] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %255 = memref.load %of_meanG_buff_6[%c0] : memref<1xf32>
      %256 = memref.load %of_meanG_buff_7[%c0] : memref<1xf32>
      %257 = arith.addf %255, %256 : f32
      %258 = memref.load %of_meanG_buff_8[%c0] : memref<1xf32>
      %259 = arith.addf %257, %258 : f32
      %260 = memref.load %of_meanG_buff_9[%c0] : memref<1xf32>
      %261 = arith.addf %259, %260 : f32
      %262 = memref.load %of_meanG_buff_0[%c0] : memref<1xf32>
      %263 = arith.addf %261, %262 : f32
      %264 = memref.load %of_meanG_buff_1[%c0] : memref<1xf32>
      %265 = arith.addf %263, %264 : f32
      %266 = memref.load %of_meanG_buff_2[%c0] : memref<1xf32>
      %267 = arith.addf %265, %266 : f32
      %268 = memref.load %of_meanG_buff_3[%c0] : memref<1xf32>
      %269 = arith.addf %267, %268 : f32
      %270 = memref.load %of_meanG_buff_4[%c0] : memref<1xf32>
      %271 = arith.addf %269, %270 : f32
      %272 = arith.divf %271, %cst : f32
      memref.store %272, %out_buff_0[%c0] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %273 = memref.load %of_meanG_buff_5[%c0] : memref<1xf32>
      %274 = memref.load %of_meanG_buff_6[%c0] : memref<1xf32>
      %275 = arith.addf %273, %274 : f32
      %276 = memref.load %of_meanG_buff_7[%c0] : memref<1xf32>
      %277 = arith.addf %275, %276 : f32
      %278 = memref.load %of_meanG_buff_8[%c0] : memref<1xf32>
      %279 = arith.addf %277, %278 : f32
      %280 = memref.load %of_meanG_buff_9[%c0] : memref<1xf32>
      %281 = arith.addf %279, %280 : f32
      %282 = memref.load %of_meanG_buff_0[%c0] : memref<1xf32>
      %283 = arith.addf %281, %282 : f32
      %284 = memref.load %of_meanG_buff_1[%c0] : memref<1xf32>
      %285 = arith.addf %283, %284 : f32
      %286 = memref.load %of_meanG_buff_2[%c0] : memref<1xf32>
      %287 = arith.addf %285, %286 : f32
      %288 = memref.load %of_meanG_buff_3[%c0] : memref<1xf32>
      %289 = arith.addf %287, %288 : f32
      %290 = arith.divf %289, %cst : f32
      memref.store %290, %out_buff_1[%c0] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %291 = memref.load %of_meanG_buff_4[%c0] : memref<1xf32>
      %292 = memref.load %of_meanG_buff_5[%c0] : memref<1xf32>
      %293 = arith.addf %291, %292 : f32
      %294 = memref.load %of_meanG_buff_6[%c0] : memref<1xf32>
      %295 = arith.addf %293, %294 : f32
      %296 = memref.load %of_meanG_buff_7[%c0] : memref<1xf32>
      %297 = arith.addf %295, %296 : f32
      %298 = memref.load %of_meanG_buff_8[%c0] : memref<1xf32>
      %299 = arith.addf %297, %298 : f32
      %300 = memref.load %of_meanG_buff_9[%c0] : memref<1xf32>
      %301 = arith.addf %299, %300 : f32
      %302 = memref.load %of_meanG_buff_0[%c0] : memref<1xf32>
      %303 = arith.addf %301, %302 : f32
      %304 = memref.load %of_meanG_buff_1[%c0] : memref<1xf32>
      %305 = arith.addf %303, %304 : f32
      %306 = memref.load %of_meanG_buff_2[%c0] : memref<1xf32>
      %307 = arith.addf %305, %306 : f32
      %308 = arith.divf %307, %cst : f32
      memref.store %308, %out_buff_0[%c0] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.end
    } {link_with = "passthrough.o"}
    memref.global "private" constant @blockwrite_data_0 : memref<8xi32> = dense<[1, 0, 0, 0, -2147483648, 0, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_1 : memref<8xi32> = dense<[9216, 0, 0, 0, -2147483648, 0, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_2 : memref<8xi32> = dense<[27648, 0, 0, 0, -2147483648, 0, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_3 : memref<8xi32> = dense<[196608, 0, 0, 0, -2147483648, 0, 0, 33554432]>
    aiex.runtime_sequence(%arg0: memref<1xf32>, %arg1: memref<9216xf32>, %arg2: memref<27648xf32>, %arg3: memref<1xf32>, %arg4: memref<9216xf32>) {
      %0 = memref.get_global @blockwrite_data_0 : memref<8xi32>
      aiex.npu.blockwrite(%0) {address = 118816 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 118820 : ui32, arg_idx = 0 : i32, arg_plus = 0 : i32}
      aiex.npu.write32 {address = 119316 : ui32, column = 0 : i32, row = 0 : i32, value = 1 : ui32}
      %1 = memref.get_global @blockwrite_data_1 : memref<8xi32>
      aiex.npu.blockwrite(%1) {address = 118848 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 118852 : ui32, arg_idx = 1 : i32, arg_plus = 0 : i32}
      aiex.npu.write32 {address = 119324 : ui32, column = 0 : i32, row = 0 : i32, value = 2 : ui32}
      %2 = memref.get_global @blockwrite_data_2 : memref<8xi32>
      aiex.npu.blockwrite(%2) {address = 33673312 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 33673316 : ui32, arg_idx = 2 : i32, arg_plus = 0 : i32}
      aiex.npu.write32 {address = 119316 : ui32, column = 1 : i32, row = 0 : i32, value = 3 : ui32}
      %3 = memref.get_global @blockwrite_data_3 : memref<8xi32>
      aiex.npu.blockwrite(%3) {address = 33673344 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 33673348 : ui32, arg_idx = 3 : i32, arg_plus = 0 : i32}
      aiex.npu.write32 {address = 119324 : ui32, column = 1 : i32, row = 0 : i32, value = 4 : ui32}
      %4 = memref.get_global @blockwrite_data_0 : memref<8xi32>
      aiex.npu.blockwrite(%4) {address = 100782080 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 100782084 : ui32, arg_idx = 4 : i32, arg_plus = 0 : i32}
      aiex.npu.maskwrite32 {address = 119296 : ui32, column = 3 : i32, mask = 3840 : ui32, row = 0 : i32, value = 3840 : ui32}
      aiex.npu.write32 {address = 119300 : ui32, column = 3 : i32, row = 0 : i32, value = 2147483648 : ui32}
      aiex.npu.sync {channel = 0 : i32, column = 3 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
    }
    aie.shim_dma_allocation @in0(MM2S, 0, 0)
    %mem_0_3 = aie.mem(%tile_0_3) {
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
    %mem_1_4 = aie.mem(%tile_1_4) {
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
      aie.end
    }
    aie.shim_dma_allocation @in2(MM2S, 0, 1)
    %memtile_dma_1_1 = aie.memtile_dma(%tile_1_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%in2_cons_prod_lock, AcquireGreaterEqual, 3)
      aie.dma_bd(%in2_cons_buff_0 : memref<3072xf32>, 0, 3072) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in2_cons_cons_lock, Release, 3)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb3, ^bb4)
    ^bb3:  // 2 preds: ^bb2, ^bb3
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<3072xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb4:  // pred: ^bb2
      %2 = aie.dma_start(MM2S, 1, ^bb5, ^bb6)
    ^bb5:  // 2 preds: ^bb4, ^bb5
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<3072xf32>, 1024, 1024) {bd_id = 24 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb6:  // pred: ^bb4
      %3 = aie.dma_start(MM2S, 2, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<3072xf32>, 2048, 1024) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @in3(MM2S, 1, 1)
    %memtile_dma_2_1 = aie.memtile_dma(%tile_2_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%in3_cons_prod_lock, AcquireGreaterEqual, 3)
      aie.dma_bd(%in3_cons_buff_0 : memref<3xf32>, 0, 3) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in3_cons_cons_lock, Release, 3)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb3, ^bb4)
    ^bb3:  // 2 preds: ^bb2, ^bb3
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_0 : memref<3xf32>, 0, 1) {bd_id = 1 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb4:  // pred: ^bb2
      %2 = aie.dma_start(MM2S, 1, ^bb5, ^bb6)
    ^bb5:  // 2 preds: ^bb4, ^bb5
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_0 : memref<3xf32>, 1, 1) {bd_id = 24 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb6:  // pred: ^bb4
      %3 = aie.dma_start(MM2S, 2, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_0 : memref<3xf32>, 2, 1) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%u_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%u_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%u_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%u_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%u_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%u_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%l_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%l_cons_buff_0 : memref<1xf32>, 0, 1) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%l_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%l_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%l_cons_buff_1 : memref<1xf32>, 0, 1) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%l_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_2_2 = aie.mem(%tile_2_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%v_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%v_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%v_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%v_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%v_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%v_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%m_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%m_cons_buff_0 : memref<1xf32>, 0, 1) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%m_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%m_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%m_cons_buff_1 : memref<1xf32>, 0, 1) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%m_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_3_2 = aie.mem(%tile_3_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%w_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%w_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%w_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%w_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%w_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%w_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%n_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%n_cons_buff_0 : memref<1xf32>, 0, 1) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%n_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%n_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%n_cons_buff_1 : memref<1xf32>, 0, 1) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%n_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%addA1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%addA1_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%addA1_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%addA1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%addA1_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%addA1_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_2_3 = aie.mem(%tile_2_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%addA1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%addA1_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%addA1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%addA1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%addA1_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%addA1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    %mem_3_4 = aie.mem(%tile_3_4) {
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
    aie.shim_dma_allocation @out(S2MM, 0, 3)
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

