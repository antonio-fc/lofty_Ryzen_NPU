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
    func.func private @vector_scalar_mul_aie_scalar(memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32)
    func.func private @passthrough(memref<1024xbf16>, memref<1024xbf16>, i32)
    func.func private @vector_add_aie_scalar(memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32)
    func.func private @vector_mult_aie_scalar(memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32)
    func.func private @mean(memref<1024xbf16>, memref<2xbf16>, i32)
    func.func private @mean_w(memref<1024xbf16>, memref<2xbf16>, i32, i32)
    func.func private @cos_float_1024(memref<1024xbf16>, memref<1024xbf16>, i32)
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
    %out_cons_prod_lock = aie.lock(%tile_3_0, 0) {init = 1 : i32, sym_name = "out_cons_prod_lock"}
    %out_cons_cons_lock = aie.lock(%tile_3_0, 1) {init = 0 : i32, sym_name = "out_cons_cons_lock"}
    %out_buff_0 = aie.buffer(%tile_2_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out_buff_0"} : memref<2xbf16> 
    %out_buff_1 = aie.buffer(%tile_2_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out_buff_1"} : memref<2xbf16> 
    %out_prod_lock = aie.lock(%tile_2_4, 2) {init = 2 : i32, sym_name = "out_prod_lock"}
    %out_cons_lock = aie.lock(%tile_2_4, 3) {init = 0 : i32, sym_name = "out_cons_lock"}
    %of_meanG_buff_0 = aie.buffer(%tile_2_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_meanG_buff_0"} : memref<2xbf16> 
    %of_meanG_buff_1 = aie.buffer(%tile_2_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_meanG_buff_1"} : memref<2xbf16> 
    %of_meanG_prod_lock = aie.lock(%tile_2_4, 0) {init = 2 : i32, sym_name = "of_meanG_prod_lock"}
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
    %in3_prod_lock = aie.lock(%tile_1_0, 2) {init = 1 : i32, sym_name = "in3_prod_lock"}
    %in3_cons_lock = aie.lock(%tile_1_0, 3) {init = 0 : i32, sym_name = "in3_cons_lock"}
    %in2_cons_buff_0 = aie.buffer(%tile_1_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in2_cons_buff_0"} : memref<3072xbf16> 
    %in2_cons_prod_lock = aie.lock(%tile_1_1, 0) {init = 3 : i32, sym_name = "in2_cons_prod_lock"}
    %in2_cons_cons_lock = aie.lock(%tile_1_1, 1) {init = 0 : i32, sym_name = "in2_cons_cons_lock"}
    %in2_prod_lock = aie.lock(%tile_1_0, 0) {init = 1 : i32, sym_name = "in2_prod_lock"}
    %in2_cons_lock = aie.lock(%tile_1_0, 1) {init = 0 : i32, sym_name = "in2_cons_lock"}
    %in1_cons_buff_0 = aie.buffer(%tile_1_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in1_cons_buff_0"} : memref<1024xbf16> 
    %in1_cons_buff_1 = aie.buffer(%tile_1_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in1_cons_buff_1"} : memref<1024xbf16> 
    %in1_cons_prod_lock = aie.lock(%tile_1_4, 0) {init = 2 : i32, sym_name = "in1_cons_prod_lock"}
    %in1_cons_cons_lock = aie.lock(%tile_1_4, 1) {init = 0 : i32, sym_name = "in1_cons_cons_lock"}
    %in1_prod_lock = aie.lock(%tile_0_0, 2) {init = 1 : i32, sym_name = "in1_prod_lock"}
    %in1_cons_lock = aie.lock(%tile_0_0, 3) {init = 0 : i32, sym_name = "in1_cons_lock"}
    %in0_cons_buff_0 = aie.buffer(%tile_0_3) {address = 3072 : i32, mem_bank = 0 : i32, sym_name = "in0_cons_buff_0"} : memref<2xbf16> 
    %in0_cons_buff_1 = aie.buffer(%tile_0_3) {address = 18432 : i32, mem_bank = 1 : i32, sym_name = "in0_cons_buff_1"} : memref<2xbf16> 
    %in0_cons_prod_lock = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "in0_cons_prod_lock"}
    %in0_cons_cons_lock = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "in0_cons_cons_lock"}
    %in0_prod_lock = aie.lock(%tile_0_0, 0) {init = 1 : i32, sym_name = "in0_prod_lock"}
    %in0_cons_lock = aie.lock(%tile_0_0, 1) {init = 0 : i32, sym_name = "in0_cons_lock"}
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
    aie.flow(%tile_2_4, DMA : 0, %tile_3_0, DMA : 0)
    %core_1_2 = aie.core(%tile_1_2) {
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
      aie.use_lock(%l_cons_cons_lock, AcquireGreaterEqual, 1)
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
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_0, %c1024_i32_3) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i32_4) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%l_cons_prod_lock, Release, 1)
      aie.use_lock(%l_cons_cons_lock, AcquireGreaterEqual, 1)
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
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_10 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_1, %c1024_i32_10) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_1, %c1024_i32_11) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_1, %c1024_i32_12) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%l_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%l_cons_cons_lock, AcquireGreaterEqual, 1)
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
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_18 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i32_18) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_0, %c1024_i32_19) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i32_20) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%l_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_2_2 = aie.core(%tile_2_2) {
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
      aie.use_lock(%m_cons_cons_lock, AcquireGreaterEqual, 1)
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
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_0, %c1024_i32_3) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i32_4) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%m_cons_prod_lock, Release, 1)
      aie.use_lock(%m_cons_cons_lock, AcquireGreaterEqual, 1)
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
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_10 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_1, %c1024_i32_10) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_1, %c1024_i32_11) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_1, %c1024_i32_12) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%m_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%m_cons_cons_lock, AcquireGreaterEqual, 1)
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
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_18 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i32_18) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_0, %c1024_i32_19) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i32_20) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%m_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_3_2 = aie.core(%tile_3_2) {
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
      aie.use_lock(%n_cons_cons_lock, AcquireGreaterEqual, 1)
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
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_0, %c1024_i32_3) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i32_4) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%n_cons_prod_lock, Release, 1)
      aie.use_lock(%n_cons_cons_lock, AcquireGreaterEqual, 1)
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
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_10 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_1, %c1024_i32_10) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_1, %c1024_i32_11) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_1, %c1024_i32_12) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%n_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%n_cons_cons_lock, AcquireGreaterEqual, 1)
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
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_18 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i32_18) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_0, %c1024_i32_19) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i32_20) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%n_cons_prod_lock, Release, 1)
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
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i32_3) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i32_4) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
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
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_10 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i32_10) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i32_11) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i32_12) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
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
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_18 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i32_18) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i32_19) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i32_20) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "vector_add.o"}
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
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i32_3) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i32_4) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
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
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_10 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i32_10) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i32_11) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i32_12) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
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
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_18 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i32_18) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i32_19) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i32_20) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      aie.end
    } {link_with = "vector_add.o"}
    %core_0_3 = aie.core(%tile_0_3) {
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
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_0, %c1024_i32_3) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i32_4) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
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
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_10 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_1, %c1024_i32_10) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_1, %c1024_i32_11) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_1, %c1024_i32_12) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
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
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_18 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i32_18) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_0, %c1024_i32_19) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i32_20) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_0_4 = aie.core(%tile_0_4) {
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
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i32_3) : (memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i32_4) : (memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
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
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_10 = arith.constant 1024 : i32
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i32_10) : (memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i32_11) : (memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i32_12) : (memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
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
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_18 = arith.constant 1024 : i32
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i32_18) : (memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i32_19) : (memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i32_20) : (memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
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
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i32) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i32_3) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i32_4) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
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
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_10 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i32_10) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i32_11) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i32_12) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
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
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_18 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i32_18) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i32_19) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i32_20) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "vector_mult.o"}
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
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      %c9_i32 = arith.constant 9 : i32
      %c0_i32 = arith.constant 0 : i32
      func.call @mean_w(%of_meanF_buff_0, %out_buff_0, %c9_i32, %c0_i32) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      %c1024_i32 = arith.constant 1024 : i32
      %c1_i32 = arith.constant 1 : i32
      func.call @mean_w(%of_meanF_buff_0, %out_buff_0, %c1024_i32, %c1_i32) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c2_0 = arith.constant 2 : index
      %c9 = arith.constant 9 : index
      %c1_1 = arith.constant 1 : index
      %c8 = arith.constant 8 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c2_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      %c1_i32_4 = arith.constant 1 : i32
      func.call @mean_w(%of_meanF_buff_1, %out_buff_0, %c1024_i32_3, %c1_i32_4) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_5 = arith.constant 1024 : i32
      %c1_i32_6 = arith.constant 1 : i32
      func.call @mean_w(%of_meanF_buff_0, %out_buff_0, %c1024_i32_5, %c1_i32_6) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_7 = arith.constant 1024 : i32
      %c1_i32_8 = arith.constant 1 : i32
      func.call @mean_w(%of_meanF_buff_1, %out_buff_0, %c1024_i32_7, %c1_i32_8) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_9 = arith.constant 1024 : i32
      %c1_i32_10 = arith.constant 1 : i32
      func.call @mean_w(%of_meanF_buff_0, %out_buff_0, %c1024_i32_9, %c1_i32_10) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      %c9216_i32 = arith.constant 9216 : i32
      %c2_i32 = arith.constant 2 : i32
      func.call @mean_w(%of_meanF_buff_0, %out_buff_0, %c9216_i32, %c2_i32) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      %c9_i32_11 = arith.constant 9 : i32
      %c0_i32_12 = arith.constant 0 : i32
      func.call @mean_w(%of_meanF_buff_1, %out_buff_1, %c9_i32_11, %c0_i32_12) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      %c1024_i32_13 = arith.constant 1024 : i32
      %c1_i32_14 = arith.constant 1 : i32
      func.call @mean_w(%of_meanF_buff_1, %out_buff_1, %c1024_i32_13, %c1_i32_14) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c2_15 = arith.constant 2 : index
      %c9_16 = arith.constant 9 : index
      %c1_17 = arith.constant 1 : index
      %c8_18 = arith.constant 8 : index
      %c2_19 = arith.constant 2 : index
      cf.br ^bb6(%c2_15 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8_18 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      %c1_i32_21 = arith.constant 1 : i32
      func.call @mean_w(%of_meanF_buff_0, %out_buff_1, %c1024_i32_20, %c1_i32_21) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_22 = arith.constant 1024 : i32
      %c1_i32_23 = arith.constant 1 : i32
      func.call @mean_w(%of_meanF_buff_1, %out_buff_1, %c1024_i32_22, %c1_i32_23) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_19 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_24 = arith.constant 1024 : i32
      %c1_i32_25 = arith.constant 1 : i32
      func.call @mean_w(%of_meanF_buff_0, %out_buff_1, %c1024_i32_24, %c1_i32_25) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_26 = arith.constant 1024 : i32
      %c1_i32_27 = arith.constant 1 : i32
      func.call @mean_w(%of_meanF_buff_1, %out_buff_1, %c1024_i32_26, %c1_i32_27) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      %c9216_i32_28 = arith.constant 9216 : i32
      %c2_i32_29 = arith.constant 2 : i32
      func.call @mean_w(%of_meanF_buff_1, %out_buff_1, %c9216_i32_28, %c2_i32_29) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      %c9_i32_30 = arith.constant 9 : i32
      %c0_i32_31 = arith.constant 0 : i32
      func.call @mean_w(%of_meanF_buff_0, %out_buff_0, %c9_i32_30, %c0_i32_31) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      %c1024_i32_32 = arith.constant 1024 : i32
      %c1_i32_33 = arith.constant 1 : i32
      func.call @mean_w(%of_meanF_buff_0, %out_buff_0, %c1024_i32_32, %c1_i32_33) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c2_34 = arith.constant 2 : index
      %c9_35 = arith.constant 9 : index
      %c1_36 = arith.constant 1 : index
      %c8_37 = arith.constant 8 : index
      %c2_38 = arith.constant 2 : index
      cf.br ^bb10(%c2_34 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c8_37 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_39 = arith.constant 1024 : i32
      %c1_i32_40 = arith.constant 1 : i32
      func.call @mean_w(%of_meanF_buff_1, %out_buff_0, %c1024_i32_39, %c1_i32_40) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_41 = arith.constant 1024 : i32
      %c1_i32_42 = arith.constant 1 : i32
      func.call @mean_w(%of_meanF_buff_0, %out_buff_0, %c1024_i32_41, %c1_i32_42) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_38 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_43 = arith.constant 1024 : i32
      %c1_i32_44 = arith.constant 1 : i32
      func.call @mean_w(%of_meanF_buff_1, %out_buff_0, %c1024_i32_43, %c1_i32_44) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      %c1024_i32_45 = arith.constant 1024 : i32
      %c1_i32_46 = arith.constant 1 : i32
      func.call @mean_w(%of_meanF_buff_0, %out_buff_0, %c1024_i32_45, %c1_i32_46) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      %c9216_i32_47 = arith.constant 9216 : i32
      %c2_i32_48 = arith.constant 2 : i32
      func.call @mean_w(%of_meanF_buff_0, %out_buff_0, %c9216_i32_47, %c2_i32_48) : (memref<1024xbf16>, memref<2xbf16>, i32, i32) -> ()
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.end
    } {link_with = "mean_w.o"}
    aiex.runtime_sequence(%arg0: memref<9216xbf16>, %arg1: memref<9216xbf16>, %arg2: memref<9216xbf16>, %arg3: memref<9216xbf16>, %arg4: memref<9216xbf16>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 2][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<9216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 9216][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<9216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 27648][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<9216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg3[0, 0, 0, 0][1, 1, 1, 196608][0, 0, 0, 1]) {id = 4 : i64, metadata = @in3} : memref<9216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg4[0, 0, 0, 0][1, 1, 1, 2][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<9216xbf16>
      aiex.npu.dma_wait {symbol = @out}
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
    %mem_2_4 = aie.mem(%tile_2_4) {
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
