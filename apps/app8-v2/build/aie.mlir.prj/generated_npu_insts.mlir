module {
  aie.device(npu1_4col) {
    memref.global "public" @out_cons : memref<2xbf16>
    memref.global "public" @out : memref<2xbf16>
    memref.global "public" @of_meanG : memref<2xbf16>
    memref.global "public" @of_meanF : memref<1024xbf16>
    memref.global "public" @of_multE : memref<1024xbf16>
    memref.global "public" @of_cosD : memref<1024xbf16>
    memref.global "public" @of_scaleC : memref<1024xbf16>
    memref.global "public" @addB1 : memref<1024xbf16>
    memref.global "public" @addB0 : memref<1024xbf16>
    memref.global "public" @addA1_cons : memref<1024xbf16>
    memref.global "public" @addA1 : memref<1024xbf16>
    memref.global "public" @addA0 : memref<1024xbf16>
    memref.global "public" @n_cons : memref<2xbf16>
    memref.global "public" @n : memref<2xbf16>
    memref.global "public" @m_cons : memref<2xbf16>
    memref.global "public" @m : memref<2xbf16>
    memref.global "public" @l_cons : memref<2xbf16>
    memref.global "public" @l : memref<2xbf16>
    memref.global "public" @w_cons : memref<1024xbf16>
    memref.global "public" @w : memref<1024xbf16>
    memref.global "public" @v_cons : memref<1024xbf16>
    memref.global "public" @v : memref<1024xbf16>
    memref.global "public" @u_cons : memref<1024xbf16>
    memref.global "public" @u : memref<1024xbf16>
    memref.global "public" @in3_cons : memref<6xbf16>
    memref.global "public" @in3 : memref<6xbf16>
    memref.global "public" @in2_cons : memref<3072xbf16>
    memref.global "public" @in2 : memref<3072xbf16>
    memref.global "public" @in1_cons : memref<1024xbf16>
    memref.global "public" @in1 : memref<1024xbf16>
    memref.global "public" @in0_cons : memref<2xbf16>
    memref.global "public" @in0 : memref<2xbf16>
    func.func private @vector_scalar_mul_aie_scalar(memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16)
    func.func private @passthrough(memref<1024xbf16>, memref<1024xbf16>, i16)
    func.func private @vector_add_aie_scalar(memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16)
    func.func private @vector_mult_aie_scalar(memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16)
    func.func private @mean(memref<1024xbf16>, memref<2xbf16>, i16)
    func.func private @cos_float_1024(memref<1024xbf16>, memref<1024xbf16>, i16)
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
    %out_buff_0 = aie.buffer(%tile_3_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out_buff_0"} : memref<2xbf16> 
    %out_buff_1 = aie.buffer(%tile_3_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out_buff_1"} : memref<2xbf16> 
    %out_prod_lock = aie.lock(%tile_3_4, 0) {init = 2 : i32, sym_name = "out_prod_lock"}
    %out_cons_lock = aie.lock(%tile_3_4, 1) {init = 0 : i32, sym_name = "out_cons_lock"}
    %of_meanG_buff_0 = aie.buffer(%tile_2_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_meanG_buff_0"} : memref<2xbf16> 
    %of_meanG_buff_1 = aie.buffer(%tile_2_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_meanG_buff_1"} : memref<2xbf16> 
    %of_meanG_buff_2 = aie.buffer(%tile_2_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_meanG_buff_2"} : memref<2xbf16> 
    %of_meanG_buff_3 = aie.buffer(%tile_2_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_meanG_buff_3"} : memref<2xbf16> 
    %of_meanG_buff_4 = aie.buffer(%tile_2_4) {address = 1028 : i32, mem_bank = 0 : i32, sym_name = "of_meanG_buff_4"} : memref<2xbf16> 
    %of_meanG_buff_5 = aie.buffer(%tile_2_4) {address = 16388 : i32, mem_bank = 1 : i32, sym_name = "of_meanG_buff_5"} : memref<2xbf16> 
    %of_meanG_buff_6 = aie.buffer(%tile_2_4) {address = 32772 : i32, mem_bank = 2 : i32, sym_name = "of_meanG_buff_6"} : memref<2xbf16> 
    %of_meanG_buff_7 = aie.buffer(%tile_2_4) {address = 49156 : i32, mem_bank = 3 : i32, sym_name = "of_meanG_buff_7"} : memref<2xbf16> 
    %of_meanG_buff_8 = aie.buffer(%tile_2_4) {address = 1032 : i32, mem_bank = 0 : i32, sym_name = "of_meanG_buff_8"} : memref<2xbf16> 
    %of_meanG_buff_9 = aie.buffer(%tile_2_4) {address = 16392 : i32, mem_bank = 1 : i32, sym_name = "of_meanG_buff_9"} : memref<2xbf16> 
    %of_meanG_prod_lock = aie.lock(%tile_2_4, 0) {init = 10 : i32, sym_name = "of_meanG_prod_lock"}
    %of_meanG_cons_lock = aie.lock(%tile_2_4, 1) {init = 0 : i32, sym_name = "of_meanG_cons_lock"}
    %of_meanF_buff_0 = aie.buffer(%tile_1_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_meanF_buff_0"} : memref<1024xbf16> 
    %of_meanF_buff_1 = aie.buffer(%tile_1_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_meanF_buff_1"} : memref<1024xbf16> 
    %of_meanF_prod_lock = aie.lock(%tile_1_4, 2) {init = 2 : i32, sym_name = "of_meanF_prod_lock"}
    %of_meanF_cons_lock = aie.lock(%tile_1_4, 3) {init = 0 : i32, sym_name = "of_meanF_cons_lock"}
    %of_multE_buff_0 = aie.buffer(%tile_0_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_multE_buff_0"} : memref<1024xbf16> 
    %of_multE_buff_1 = aie.buffer(%tile_0_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_multE_buff_1"} : memref<1024xbf16> 
    %of_multE_prod_lock = aie.lock(%tile_0_4, 0) {init = 2 : i32, sym_name = "of_multE_prod_lock"}
    %of_multE_cons_lock = aie.lock(%tile_0_4, 1) {init = 0 : i32, sym_name = "of_multE_cons_lock"}
    %of_cosD_buff_0 = aie.buffer(%tile_0_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_cosD_buff_0"} : memref<1024xbf16> 
    %of_cosD_buff_1 = aie.buffer(%tile_0_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_cosD_buff_1"} : memref<1024xbf16> 
    %of_cosD_prod_lock = aie.lock(%tile_0_3, 4) {init = 2 : i32, sym_name = "of_cosD_prod_lock"}
    %of_cosD_cons_lock = aie.lock(%tile_0_3, 5) {init = 0 : i32, sym_name = "of_cosD_cons_lock"}
    %of_scaleC_buff_0 = aie.buffer(%tile_0_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_scaleC_buff_0"} : memref<1024xbf16> 
    %of_scaleC_buff_1 = aie.buffer(%tile_0_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_scaleC_buff_1"} : memref<1024xbf16> 
    %of_scaleC_prod_lock = aie.lock(%tile_0_3, 2) {init = 2 : i32, sym_name = "of_scaleC_prod_lock"}
    %of_scaleC_cons_lock = aie.lock(%tile_0_3, 3) {init = 0 : i32, sym_name = "of_scaleC_cons_lock"}
    %addB1_buff_0 = aie.buffer(%tile_1_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "addB1_buff_0"} : memref<1024xbf16> 
    %addB1_buff_1 = aie.buffer(%tile_1_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "addB1_buff_1"} : memref<1024xbf16> 
    %addB1_prod_lock = aie.lock(%tile_1_3, 0) {init = 2 : i32, sym_name = "addB1_prod_lock"}
    %addB1_cons_lock = aie.lock(%tile_1_3, 1) {init = 0 : i32, sym_name = "addB1_cons_lock"}
    %addB0_buff_0 = aie.buffer(%tile_1_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "addB0_buff_0"} : memref<1024xbf16> 
    %addB0_buff_1 = aie.buffer(%tile_1_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "addB0_buff_1"} : memref<1024xbf16> 
    %addB0_prod_lock = aie.lock(%tile_1_2, 4) {init = 2 : i32, sym_name = "addB0_prod_lock"}
    %addB0_cons_lock = aie.lock(%tile_1_2, 5) {init = 0 : i32, sym_name = "addB0_cons_lock"}
    %addA1_cons_buff_0 = aie.buffer(%tile_2_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "addA1_cons_buff_0"} : memref<1024xbf16> 
    %addA1_cons_buff_1 = aie.buffer(%tile_2_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "addA1_cons_buff_1"} : memref<1024xbf16> 
    %addA1_cons_prod_lock = aie.lock(%tile_2_3, 0) {init = 2 : i32, sym_name = "addA1_cons_prod_lock"}
    %addA1_cons_cons_lock = aie.lock(%tile_2_3, 1) {init = 0 : i32, sym_name = "addA1_cons_cons_lock"}
    %addA1_buff_0 = aie.buffer(%tile_3_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "addA1_buff_0"} : memref<1024xbf16> 
    %addA1_buff_1 = aie.buffer(%tile_3_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "addA1_buff_1"} : memref<1024xbf16> 
    %addA1_prod_lock = aie.lock(%tile_3_2, 4) {init = 2 : i32, sym_name = "addA1_prod_lock"}
    %addA1_cons_lock = aie.lock(%tile_3_2, 5) {init = 0 : i32, sym_name = "addA1_cons_lock"}
    %addA0_buff_0 = aie.buffer(%tile_2_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "addA0_buff_0"} : memref<1024xbf16> 
    %addA0_buff_1 = aie.buffer(%tile_2_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "addA0_buff_1"} : memref<1024xbf16> 
    %addA0_prod_lock = aie.lock(%tile_2_2, 4) {init = 2 : i32, sym_name = "addA0_prod_lock"}
    %addA0_cons_lock = aie.lock(%tile_2_2, 5) {init = 0 : i32, sym_name = "addA0_cons_lock"}
    %n_cons_buff_0 = aie.buffer(%tile_3_2) {address = 3072 : i32, mem_bank = 0 : i32, sym_name = "n_cons_buff_0"} : memref<2xbf16> 
    %n_cons_buff_1 = aie.buffer(%tile_3_2) {address = 18432 : i32, mem_bank = 1 : i32, sym_name = "n_cons_buff_1"} : memref<2xbf16> 
    %n_cons_prod_lock = aie.lock(%tile_3_2, 2) {init = 2 : i32, sym_name = "n_cons_prod_lock"}
    %n_cons_cons_lock = aie.lock(%tile_3_2, 3) {init = 0 : i32, sym_name = "n_cons_cons_lock"}
    %m_cons_buff_0 = aie.buffer(%tile_2_2) {address = 3072 : i32, mem_bank = 0 : i32, sym_name = "m_cons_buff_0"} : memref<2xbf16> 
    %m_cons_buff_1 = aie.buffer(%tile_2_2) {address = 18432 : i32, mem_bank = 1 : i32, sym_name = "m_cons_buff_1"} : memref<2xbf16> 
    %m_cons_prod_lock = aie.lock(%tile_2_2, 2) {init = 2 : i32, sym_name = "m_cons_prod_lock"}
    %m_cons_cons_lock = aie.lock(%tile_2_2, 3) {init = 0 : i32, sym_name = "m_cons_cons_lock"}
    %l_cons_buff_0 = aie.buffer(%tile_1_2) {address = 3072 : i32, mem_bank = 0 : i32, sym_name = "l_cons_buff_0"} : memref<2xbf16> 
    %l_cons_buff_1 = aie.buffer(%tile_1_2) {address = 18432 : i32, mem_bank = 1 : i32, sym_name = "l_cons_buff_1"} : memref<2xbf16> 
    %l_cons_prod_lock = aie.lock(%tile_1_2, 2) {init = 2 : i32, sym_name = "l_cons_prod_lock"}
    %l_cons_cons_lock = aie.lock(%tile_1_2, 3) {init = 0 : i32, sym_name = "l_cons_cons_lock"}
    %w_cons_buff_0 = aie.buffer(%tile_3_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "w_cons_buff_0"} : memref<1024xbf16> 
    %w_cons_buff_1 = aie.buffer(%tile_3_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "w_cons_buff_1"} : memref<1024xbf16> 
    %w_cons_prod_lock = aie.lock(%tile_3_2, 0) {init = 2 : i32, sym_name = "w_cons_prod_lock"}
    %w_cons_cons_lock = aie.lock(%tile_3_2, 1) {init = 0 : i32, sym_name = "w_cons_cons_lock"}
    %v_cons_buff_0 = aie.buffer(%tile_2_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "v_cons_buff_0"} : memref<1024xbf16> 
    %v_cons_buff_1 = aie.buffer(%tile_2_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "v_cons_buff_1"} : memref<1024xbf16> 
    %v_cons_prod_lock = aie.lock(%tile_2_2, 0) {init = 2 : i32, sym_name = "v_cons_prod_lock"}
    %v_cons_cons_lock = aie.lock(%tile_2_2, 1) {init = 0 : i32, sym_name = "v_cons_cons_lock"}
    %u_cons_buff_0 = aie.buffer(%tile_1_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "u_cons_buff_0"} : memref<1024xbf16> 
    %u_cons_buff_1 = aie.buffer(%tile_1_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "u_cons_buff_1"} : memref<1024xbf16> 
    %u_cons_prod_lock = aie.lock(%tile_1_2, 0) {init = 2 : i32, sym_name = "u_cons_prod_lock"}
    %u_cons_cons_lock = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "u_cons_cons_lock"}
    %in3_cons_buff_0 = aie.buffer(%tile_2_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in3_cons_buff_0"} : memref<6xbf16> 
    %in3_cons_prod_lock = aie.lock(%tile_2_1, 0) {init = 3 : i32, sym_name = "in3_cons_prod_lock"}
    %in3_cons_cons_lock = aie.lock(%tile_2_1, 1) {init = 0 : i32, sym_name = "in3_cons_cons_lock"}
    %in2_cons_buff_0 = aie.buffer(%tile_1_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in2_cons_buff_0"} : memref<3072xbf16> 
    %in2_cons_prod_lock = aie.lock(%tile_1_1, 0) {init = 3 : i32, sym_name = "in2_cons_prod_lock"}
    %in2_cons_cons_lock = aie.lock(%tile_1_1, 1) {init = 0 : i32, sym_name = "in2_cons_cons_lock"}
    %in1_cons_buff_0 = aie.buffer(%tile_1_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in1_cons_buff_0"} : memref<1024xbf16> 
    %in1_cons_buff_1 = aie.buffer(%tile_1_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in1_cons_buff_1"} : memref<1024xbf16> 
    %in1_cons_prod_lock = aie.lock(%tile_1_4, 0) {init = 2 : i32, sym_name = "in1_cons_prod_lock"}
    %in1_cons_cons_lock = aie.lock(%tile_1_4, 1) {init = 0 : i32, sym_name = "in1_cons_cons_lock"}
    %in0_cons_buff_0 = aie.buffer(%tile_0_3) {address = 3072 : i32, mem_bank = 0 : i32, sym_name = "in0_cons_buff_0"} : memref<2xbf16> 
    %in0_cons_buff_1 = aie.buffer(%tile_0_3) {address = 18432 : i32, mem_bank = 1 : i32, sym_name = "in0_cons_buff_1"} : memref<2xbf16> 
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
      %c1024_i16 = arith.constant 1024 : i16
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
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%l_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_2_2 = aie.core(%tile_2_2) {
      %c1024_i16 = arith.constant 1024 : i16
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
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%m_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_3_2 = aie.core(%tile_3_2) {
      %c1024_i16 = arith.constant 1024 : i16
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
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%n_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_2_3 = aie.core(%tile_2_3) {
      %c1024_i16 = arith.constant 1024 : i16
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
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
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
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
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
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "vector_add.o"}
    %core_1_3 = aie.core(%tile_1_3) {
      %c1024_i16 = arith.constant 1024 : i16
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
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
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
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
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
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      aie.end
    } {link_with = "vector_add.o"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c1024_i16 = arith.constant 1024 : i16
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
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c1024_i16 = arith.constant 1024 : i16
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
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      cf.br ^bb6(%c0 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
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
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_1_4 = aie.core(%tile_1_4) {
      %c1024_i16 = arith.constant 1024 : i16
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
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
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
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
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
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "vector_mult.o"}
    %core_2_4 = aie.core(%tile_2_4) {
      %c1024_i16 = arith.constant 1024 : i16
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
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %5 = arith.addi %3, %c1 : index
      cf.br ^bb4(%5 : index)
    ^bb6:  // pred: ^bb4
      aie.end
    } {link_with = "mean.o"}
    %core_3_4 = aie.core(%tile_3_4) {
      %cst = arith.constant 9.000000e+00 : bf16
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
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %2 = memref.load %of_meanG_buff_0[%c0] : memref<2xbf16>
      memref.store %2, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %3 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %4 = memref.load %of_meanG_buff_1[%c0] : memref<2xbf16>
      %5 = arith.addf %3, %4 : bf16
      memref.store %5, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %6 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %7 = memref.load %of_meanG_buff_2[%c0] : memref<2xbf16>
      %8 = arith.addf %6, %7 : bf16
      memref.store %8, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %9 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %10 = memref.load %of_meanG_buff_3[%c0] : memref<2xbf16>
      %11 = arith.addf %9, %10 : bf16
      memref.store %11, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %12 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %13 = memref.load %of_meanG_buff_4[%c0] : memref<2xbf16>
      %14 = arith.addf %12, %13 : bf16
      memref.store %14, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %15 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %16 = memref.load %of_meanG_buff_5[%c0] : memref<2xbf16>
      %17 = arith.addf %15, %16 : bf16
      memref.store %17, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %18 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %19 = memref.load %of_meanG_buff_6[%c0] : memref<2xbf16>
      %20 = arith.addf %18, %19 : bf16
      memref.store %20, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %21 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %22 = memref.load %of_meanG_buff_7[%c0] : memref<2xbf16>
      %23 = arith.addf %21, %22 : bf16
      memref.store %23, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %24 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %25 = memref.load %of_meanG_buff_8[%c0] : memref<2xbf16>
      %26 = arith.addf %24, %25 : bf16
      memref.store %26, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %27 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %28 = arith.divf %27, %cst : bf16
      memref.store %28, %out_buff_0[%c1] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %29 = memref.load %of_meanG_buff_9[%c0] : memref<2xbf16>
      memref.store %29, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %30 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %31 = memref.load %of_meanG_buff_0[%c0] : memref<2xbf16>
      %32 = arith.addf %30, %31 : bf16
      memref.store %32, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %33 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %34 = memref.load %of_meanG_buff_1[%c0] : memref<2xbf16>
      %35 = arith.addf %33, %34 : bf16
      memref.store %35, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %36 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %37 = memref.load %of_meanG_buff_2[%c0] : memref<2xbf16>
      %38 = arith.addf %36, %37 : bf16
      memref.store %38, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %39 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %40 = memref.load %of_meanG_buff_3[%c0] : memref<2xbf16>
      %41 = arith.addf %39, %40 : bf16
      memref.store %41, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %42 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %43 = memref.load %of_meanG_buff_4[%c0] : memref<2xbf16>
      %44 = arith.addf %42, %43 : bf16
      memref.store %44, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %45 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %46 = memref.load %of_meanG_buff_5[%c0] : memref<2xbf16>
      %47 = arith.addf %45, %46 : bf16
      memref.store %47, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %48 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %49 = memref.load %of_meanG_buff_6[%c0] : memref<2xbf16>
      %50 = arith.addf %48, %49 : bf16
      memref.store %50, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %51 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %52 = memref.load %of_meanG_buff_7[%c0] : memref<2xbf16>
      %53 = arith.addf %51, %52 : bf16
      memref.store %53, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %54 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %55 = arith.divf %54, %cst : bf16
      memref.store %55, %out_buff_1[%c1] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %56 = memref.load %of_meanG_buff_8[%c0] : memref<2xbf16>
      memref.store %56, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %57 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %58 = memref.load %of_meanG_buff_9[%c0] : memref<2xbf16>
      %59 = arith.addf %57, %58 : bf16
      memref.store %59, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %60 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %61 = memref.load %of_meanG_buff_0[%c0] : memref<2xbf16>
      %62 = arith.addf %60, %61 : bf16
      memref.store %62, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %63 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %64 = memref.load %of_meanG_buff_1[%c0] : memref<2xbf16>
      %65 = arith.addf %63, %64 : bf16
      memref.store %65, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %66 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %67 = memref.load %of_meanG_buff_2[%c0] : memref<2xbf16>
      %68 = arith.addf %66, %67 : bf16
      memref.store %68, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %69 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %70 = memref.load %of_meanG_buff_3[%c0] : memref<2xbf16>
      %71 = arith.addf %69, %70 : bf16
      memref.store %71, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %72 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %73 = memref.load %of_meanG_buff_4[%c0] : memref<2xbf16>
      %74 = arith.addf %72, %73 : bf16
      memref.store %74, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %75 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %76 = memref.load %of_meanG_buff_5[%c0] : memref<2xbf16>
      %77 = arith.addf %75, %76 : bf16
      memref.store %77, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %78 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %79 = memref.load %of_meanG_buff_6[%c0] : memref<2xbf16>
      %80 = arith.addf %78, %79 : bf16
      memref.store %80, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %81 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %82 = arith.divf %81, %cst : bf16
      memref.store %82, %out_buff_0[%c1] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %83 = memref.load %of_meanG_buff_7[%c0] : memref<2xbf16>
      memref.store %83, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %84 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %85 = memref.load %of_meanG_buff_8[%c0] : memref<2xbf16>
      %86 = arith.addf %84, %85 : bf16
      memref.store %86, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %87 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %88 = memref.load %of_meanG_buff_9[%c0] : memref<2xbf16>
      %89 = arith.addf %87, %88 : bf16
      memref.store %89, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %90 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %91 = memref.load %of_meanG_buff_0[%c0] : memref<2xbf16>
      %92 = arith.addf %90, %91 : bf16
      memref.store %92, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %93 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %94 = memref.load %of_meanG_buff_1[%c0] : memref<2xbf16>
      %95 = arith.addf %93, %94 : bf16
      memref.store %95, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %96 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %97 = memref.load %of_meanG_buff_2[%c0] : memref<2xbf16>
      %98 = arith.addf %96, %97 : bf16
      memref.store %98, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %99 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %100 = memref.load %of_meanG_buff_3[%c0] : memref<2xbf16>
      %101 = arith.addf %99, %100 : bf16
      memref.store %101, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %102 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %103 = memref.load %of_meanG_buff_4[%c0] : memref<2xbf16>
      %104 = arith.addf %102, %103 : bf16
      memref.store %104, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %105 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %106 = memref.load %of_meanG_buff_5[%c0] : memref<2xbf16>
      %107 = arith.addf %105, %106 : bf16
      memref.store %107, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %108 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %109 = arith.divf %108, %cst : bf16
      memref.store %109, %out_buff_1[%c1] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %110 = memref.load %of_meanG_buff_6[%c0] : memref<2xbf16>
      memref.store %110, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %111 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %112 = memref.load %of_meanG_buff_7[%c0] : memref<2xbf16>
      %113 = arith.addf %111, %112 : bf16
      memref.store %113, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %114 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %115 = memref.load %of_meanG_buff_8[%c0] : memref<2xbf16>
      %116 = arith.addf %114, %115 : bf16
      memref.store %116, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %117 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %118 = memref.load %of_meanG_buff_9[%c0] : memref<2xbf16>
      %119 = arith.addf %117, %118 : bf16
      memref.store %119, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %120 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %121 = memref.load %of_meanG_buff_0[%c0] : memref<2xbf16>
      %122 = arith.addf %120, %121 : bf16
      memref.store %122, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %123 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %124 = memref.load %of_meanG_buff_1[%c0] : memref<2xbf16>
      %125 = arith.addf %123, %124 : bf16
      memref.store %125, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %126 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %127 = memref.load %of_meanG_buff_2[%c0] : memref<2xbf16>
      %128 = arith.addf %126, %127 : bf16
      memref.store %128, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %129 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %130 = memref.load %of_meanG_buff_3[%c0] : memref<2xbf16>
      %131 = arith.addf %129, %130 : bf16
      memref.store %131, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %132 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %133 = memref.load %of_meanG_buff_4[%c0] : memref<2xbf16>
      %134 = arith.addf %132, %133 : bf16
      memref.store %134, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %135 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %136 = arith.divf %135, %cst : bf16
      memref.store %136, %out_buff_0[%c1] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %137 = memref.load %of_meanG_buff_5[%c0] : memref<2xbf16>
      memref.store %137, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %138 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %139 = memref.load %of_meanG_buff_6[%c0] : memref<2xbf16>
      %140 = arith.addf %138, %139 : bf16
      memref.store %140, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %141 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %142 = memref.load %of_meanG_buff_7[%c0] : memref<2xbf16>
      %143 = arith.addf %141, %142 : bf16
      memref.store %143, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %144 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %145 = memref.load %of_meanG_buff_8[%c0] : memref<2xbf16>
      %146 = arith.addf %144, %145 : bf16
      memref.store %146, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %147 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %148 = memref.load %of_meanG_buff_9[%c0] : memref<2xbf16>
      %149 = arith.addf %147, %148 : bf16
      memref.store %149, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %150 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %151 = memref.load %of_meanG_buff_0[%c0] : memref<2xbf16>
      %152 = arith.addf %150, %151 : bf16
      memref.store %152, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %153 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %154 = memref.load %of_meanG_buff_1[%c0] : memref<2xbf16>
      %155 = arith.addf %153, %154 : bf16
      memref.store %155, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %156 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %157 = memref.load %of_meanG_buff_2[%c0] : memref<2xbf16>
      %158 = arith.addf %156, %157 : bf16
      memref.store %158, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %159 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %160 = memref.load %of_meanG_buff_3[%c0] : memref<2xbf16>
      %161 = arith.addf %159, %160 : bf16
      memref.store %161, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %162 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %163 = arith.divf %162, %cst : bf16
      memref.store %163, %out_buff_1[%c1] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %164 = memref.load %of_meanG_buff_4[%c0] : memref<2xbf16>
      memref.store %164, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %165 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %166 = memref.load %of_meanG_buff_5[%c0] : memref<2xbf16>
      %167 = arith.addf %165, %166 : bf16
      memref.store %167, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %168 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %169 = memref.load %of_meanG_buff_6[%c0] : memref<2xbf16>
      %170 = arith.addf %168, %169 : bf16
      memref.store %170, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %171 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %172 = memref.load %of_meanG_buff_7[%c0] : memref<2xbf16>
      %173 = arith.addf %171, %172 : bf16
      memref.store %173, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %174 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %175 = memref.load %of_meanG_buff_8[%c0] : memref<2xbf16>
      %176 = arith.addf %174, %175 : bf16
      memref.store %176, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %177 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %178 = memref.load %of_meanG_buff_9[%c0] : memref<2xbf16>
      %179 = arith.addf %177, %178 : bf16
      memref.store %179, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %180 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %181 = memref.load %of_meanG_buff_0[%c0] : memref<2xbf16>
      %182 = arith.addf %180, %181 : bf16
      memref.store %182, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %183 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %184 = memref.load %of_meanG_buff_1[%c0] : memref<2xbf16>
      %185 = arith.addf %183, %184 : bf16
      memref.store %185, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %186 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %187 = memref.load %of_meanG_buff_2[%c0] : memref<2xbf16>
      %188 = arith.addf %186, %187 : bf16
      memref.store %188, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %189 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %190 = arith.divf %189, %cst : bf16
      memref.store %190, %out_buff_0[%c1] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %191 = memref.load %of_meanG_buff_3[%c0] : memref<2xbf16>
      memref.store %191, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %192 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %193 = memref.load %of_meanG_buff_4[%c0] : memref<2xbf16>
      %194 = arith.addf %192, %193 : bf16
      memref.store %194, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %195 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %196 = memref.load %of_meanG_buff_5[%c0] : memref<2xbf16>
      %197 = arith.addf %195, %196 : bf16
      memref.store %197, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %198 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %199 = memref.load %of_meanG_buff_6[%c0] : memref<2xbf16>
      %200 = arith.addf %198, %199 : bf16
      memref.store %200, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %201 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %202 = memref.load %of_meanG_buff_7[%c0] : memref<2xbf16>
      %203 = arith.addf %201, %202 : bf16
      memref.store %203, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %204 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %205 = memref.load %of_meanG_buff_8[%c0] : memref<2xbf16>
      %206 = arith.addf %204, %205 : bf16
      memref.store %206, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %207 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %208 = memref.load %of_meanG_buff_9[%c0] : memref<2xbf16>
      %209 = arith.addf %207, %208 : bf16
      memref.store %209, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %210 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %211 = memref.load %of_meanG_buff_0[%c0] : memref<2xbf16>
      %212 = arith.addf %210, %211 : bf16
      memref.store %212, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %213 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %214 = memref.load %of_meanG_buff_1[%c0] : memref<2xbf16>
      %215 = arith.addf %213, %214 : bf16
      memref.store %215, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %216 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %217 = arith.divf %216, %cst : bf16
      memref.store %217, %out_buff_1[%c1] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %218 = memref.load %of_meanG_buff_2[%c0] : memref<2xbf16>
      memref.store %218, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %219 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %220 = memref.load %of_meanG_buff_3[%c0] : memref<2xbf16>
      %221 = arith.addf %219, %220 : bf16
      memref.store %221, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %222 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %223 = memref.load %of_meanG_buff_4[%c0] : memref<2xbf16>
      %224 = arith.addf %222, %223 : bf16
      memref.store %224, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %225 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %226 = memref.load %of_meanG_buff_5[%c0] : memref<2xbf16>
      %227 = arith.addf %225, %226 : bf16
      memref.store %227, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %228 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %229 = memref.load %of_meanG_buff_6[%c0] : memref<2xbf16>
      %230 = arith.addf %228, %229 : bf16
      memref.store %230, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %231 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %232 = memref.load %of_meanG_buff_7[%c0] : memref<2xbf16>
      %233 = arith.addf %231, %232 : bf16
      memref.store %233, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %234 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %235 = memref.load %of_meanG_buff_8[%c0] : memref<2xbf16>
      %236 = arith.addf %234, %235 : bf16
      memref.store %236, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %237 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %238 = memref.load %of_meanG_buff_9[%c0] : memref<2xbf16>
      %239 = arith.addf %237, %238 : bf16
      memref.store %239, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %240 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %241 = memref.load %of_meanG_buff_0[%c0] : memref<2xbf16>
      %242 = arith.addf %240, %241 : bf16
      memref.store %242, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %243 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %244 = arith.divf %243, %cst : bf16
      memref.store %244, %out_buff_0[%c1] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %245 = memref.load %of_meanG_buff_1[%c0] : memref<2xbf16>
      memref.store %245, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %246 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %247 = memref.load %of_meanG_buff_2[%c0] : memref<2xbf16>
      %248 = arith.addf %246, %247 : bf16
      memref.store %248, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %249 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %250 = memref.load %of_meanG_buff_3[%c0] : memref<2xbf16>
      %251 = arith.addf %249, %250 : bf16
      memref.store %251, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %252 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %253 = memref.load %of_meanG_buff_4[%c0] : memref<2xbf16>
      %254 = arith.addf %252, %253 : bf16
      memref.store %254, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %255 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %256 = memref.load %of_meanG_buff_5[%c0] : memref<2xbf16>
      %257 = arith.addf %255, %256 : bf16
      memref.store %257, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %258 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %259 = memref.load %of_meanG_buff_6[%c0] : memref<2xbf16>
      %260 = arith.addf %258, %259 : bf16
      memref.store %260, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %261 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %262 = memref.load %of_meanG_buff_7[%c0] : memref<2xbf16>
      %263 = arith.addf %261, %262 : bf16
      memref.store %263, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %264 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %265 = memref.load %of_meanG_buff_8[%c0] : memref<2xbf16>
      %266 = arith.addf %264, %265 : bf16
      memref.store %266, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %267 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %268 = memref.load %of_meanG_buff_9[%c0] : memref<2xbf16>
      %269 = arith.addf %267, %268 : bf16
      memref.store %269, %out_buff_1[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %270 = memref.load %out_buff_1[%c0] : memref<2xbf16>
      %271 = arith.divf %270, %cst : bf16
      memref.store %271, %out_buff_1[%c1] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      %272 = arith.addi %0, %c10 : index
      cf.br ^bb1(%272 : index)
    ^bb3:  // pred: ^bb1
      cf.br ^bb4(%c9223372036854775800 : index)
    ^bb4(%273: index):  // 2 preds: ^bb3, ^bb5
      %274 = arith.cmpi slt, %273, %c9223372036854775807 : index
      cf.cond_br %274, ^bb5, ^bb6
    ^bb5:  // pred: ^bb4
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %275 = memref.load %of_meanG_buff_0[%c0] : memref<2xbf16>
      memref.store %275, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %276 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %277 = memref.load %of_meanG_buff_1[%c0] : memref<2xbf16>
      %278 = arith.addf %276, %277 : bf16
      memref.store %278, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %279 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %280 = memref.load %of_meanG_buff_2[%c0] : memref<2xbf16>
      %281 = arith.addf %279, %280 : bf16
      memref.store %281, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %282 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %283 = memref.load %of_meanG_buff_3[%c0] : memref<2xbf16>
      %284 = arith.addf %282, %283 : bf16
      memref.store %284, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %285 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %286 = memref.load %of_meanG_buff_4[%c0] : memref<2xbf16>
      %287 = arith.addf %285, %286 : bf16
      memref.store %287, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %288 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %289 = memref.load %of_meanG_buff_5[%c0] : memref<2xbf16>
      %290 = arith.addf %288, %289 : bf16
      memref.store %290, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %291 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %292 = memref.load %of_meanG_buff_6[%c0] : memref<2xbf16>
      %293 = arith.addf %291, %292 : bf16
      memref.store %293, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %294 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %295 = memref.load %of_meanG_buff_7[%c0] : memref<2xbf16>
      %296 = arith.addf %294, %295 : bf16
      memref.store %296, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %297 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %298 = memref.load %of_meanG_buff_8[%c0] : memref<2xbf16>
      %299 = arith.addf %297, %298 : bf16
      memref.store %299, %out_buff_0[%c0] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %300 = memref.load %out_buff_0[%c0] : memref<2xbf16>
      %301 = arith.divf %300, %cst : bf16
      memref.store %301, %out_buff_0[%c1] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      %302 = arith.addi %273, %c1 : index
      cf.br ^bb4(%302 : index)
    ^bb6:  // pred: ^bb4
      aie.end
    } {link_with = "passthrough.o"}
    memref.global "private" constant @blockwrite_data_0 : memref<8xi32> = dense<[1, 0, 0, 0, -2147483648, 0, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_1 : memref<8xi32> = dense<[4608, 0, 0, 0, -2147483648, 0, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_2 : memref<8xi32> = dense<[13824, 0, 0, 0, -2147483648, 0, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_3 : memref<8xi32> = dense<[98304, 0, 0, 0, -2147483648, 0, 0, 33554432]>
    aiex.runtime_sequence(%arg0: memref<9216xbf16>, %arg1: memref<9216xbf16>, %arg2: memref<9216xbf16>, %arg3: memref<9216xbf16>, %arg4: memref<9216xbf16>) {
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
      aie.dma_bd(%in0_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 0 : i32}
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
      aie.dma_bd(%in1_cons_buff_0 : memref<1024xbf16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<1024xbf16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
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
      aie.dma_bd(%in2_cons_buff_0 : memref<3072xbf16>, 0, 3072) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in2_cons_cons_lock, Release, 3)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb3, ^bb4)
    ^bb3:  // 2 preds: ^bb2, ^bb3
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<3072xbf16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb4:  // pred: ^bb2
      %2 = aie.dma_start(MM2S, 1, ^bb5, ^bb6)
    ^bb5:  // 2 preds: ^bb4, ^bb5
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<3072xbf16>, 1024, 1024) {bd_id = 24 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb6:  // pred: ^bb4
      %3 = aie.dma_start(MM2S, 2, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<3072xbf16>, 2048, 1024) {bd_id = 2 : i32, next_bd_id = 2 : i32}
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
      aie.dma_bd(%in3_cons_buff_0 : memref<6xbf16>, 0, 6) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in3_cons_cons_lock, Release, 3)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb3, ^bb4)
    ^bb3:  // 2 preds: ^bb2, ^bb3
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_0 : memref<6xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb4:  // pred: ^bb2
      %2 = aie.dma_start(MM2S, 1, ^bb5, ^bb6)
    ^bb5:  // 2 preds: ^bb4, ^bb5
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_0 : memref<6xbf16>, 2, 2) {bd_id = 24 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb6:  // pred: ^bb4
      %3 = aie.dma_start(MM2S, 2, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_0 : memref<6xbf16>, 4, 2) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%u_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%u_cons_buff_0 : memref<1024xbf16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%u_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%u_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%u_cons_buff_1 : memref<1024xbf16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%u_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%l_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%l_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%l_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%l_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%l_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%l_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_2_2 = aie.mem(%tile_2_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%v_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%v_cons_buff_0 : memref<1024xbf16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%v_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%v_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%v_cons_buff_1 : memref<1024xbf16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%v_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%m_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%m_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%m_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%m_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%m_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%m_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_3_2 = aie.mem(%tile_3_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%w_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%w_cons_buff_0 : memref<1024xbf16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%w_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%w_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%w_cons_buff_1 : memref<1024xbf16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%w_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%n_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%n_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%n_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%n_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%n_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%n_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%addA1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%addA1_buff_0 : memref<1024xbf16>, 0, 1024) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%addA1_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%addA1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%addA1_buff_1 : memref<1024xbf16>, 0, 1024) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%addA1_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_2_3 = aie.mem(%tile_2_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%addA1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%addA1_cons_buff_0 : memref<1024xbf16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%addA1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%addA1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%addA1_cons_buff_1 : memref<1024xbf16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%addA1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    %mem_3_4 = aie.mem(%tile_3_4) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%out_prod_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 0 : i32}
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

