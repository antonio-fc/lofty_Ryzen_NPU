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
    %tile_0_1 = aie.tile(0, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_0_2 = aie.tile(0, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_0_3 = aie.tile(0, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_0_4 = aie.tile(0, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %switchbox_0_4 = aie.switchbox(%tile_0_4) {
    }
    %tile_0_5 = aie.tile(0, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %switchbox_0_5 = aie.switchbox(%tile_0_5) {
    }
    %tile_1_0 = aie.tile(1, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_1_1 = aie.tile(1, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_1_2 = aie.tile(1, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_1_3 = aie.tile(1, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_1_4 = aie.tile(1, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_1_5 = aie.tile(1, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %switchbox_1_5 = aie.switchbox(%tile_1_5) {
    }
    %tile_2_0 = aie.tile(2, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_2_1 = aie.tile(2, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_2_2 = aie.tile(2, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_2_3 = aie.tile(2, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_2_4 = aie.tile(2, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %switchbox_2_4 = aie.switchbox(%tile_2_4) {
    }
    %tile_2_5 = aie.tile(2, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %switchbox_2_5 = aie.switchbox(%tile_2_5) {
    }
    %tile_3_0 = aie.tile(3, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_3_1 = aie.tile(3, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_3_2 = aie.tile(3, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_3_3 = aie.tile(3, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_3_4 = aie.tile(3, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_3_5 = aie.tile(3, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %switchbox_3_5 = aie.switchbox(%tile_3_5) {
    }
    %out_cons_prod_lock = aie.lock(%tile_3_0, 0) {init = 1 : i32, sym_name = "out_cons_prod_lock"}
    %out_cons_cons_lock = aie.lock(%tile_3_0, 1) {init = 0 : i32, sym_name = "out_cons_cons_lock"}
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
    %switchbox_0_0 = aie.switchbox(%tile_0_0) {
      aie.connect<South : 3, North : 1>
      aie.connect<South : 7, East : 3>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(Ctrl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_0_0 = aie.shim_mux(%tile_0_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<DMA : 1, North : 7>
    }
    %switchbox_0_1 = aie.switchbox(%tile_0_1) {
      aie.connect<South : 1, North : 1>
    }
    %switchbox_0_2 = aie.switchbox(%tile_0_2) {
      aie.connect<South : 1, North : 0>
    }
    %switchbox_0_3 = aie.switchbox(%tile_0_3) {
      aie.connect<South : 0, DMA : 0>
    }
    %switchbox_1_0 = aie.switchbox(%tile_1_0) {
      aie.connect<West : 3, North : 0>
      aie.connect<South : 3, North : 1>
      aie.connect<South : 7, East : 3>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(Ctrl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %switchbox_1_1 = aie.switchbox(%tile_1_1) {
      aie.connect<South : 0, North : 0>
      aie.connect<South : 1, DMA : 0>
      aie.connect<DMA : 0, North : 1>
      aie.connect<DMA : 1, North : 5>
      aie.connect<DMA : 2, North : 3>
    }
    %switchbox_1_2 = aie.switchbox(%tile_1_2) {
      aie.connect<South : 0, North : 0>
      aie.connect<South : 1, DMA : 0>
      aie.connect<South : 5, East : 3>
      aie.connect<South : 3, East : 2>
      aie.connect<East : 3, DMA : 1>
    }
    %switchbox_1_3 = aie.switchbox(%tile_1_3) {
      aie.connect<South : 0, North : 0>
    }
    %switchbox_1_4 = aie.switchbox(%tile_1_4) {
      aie.connect<South : 0, DMA : 0>
    }
    %shim_mux_1_0 = aie.shim_mux(%tile_1_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<DMA : 1, North : 7>
    }
    %switchbox_2_0 = aie.switchbox(%tile_2_0) {
      aie.connect<West : 3, North : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(Ctrl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %switchbox_2_1 = aie.switchbox(%tile_2_1) {
      aie.connect<South : 2, DMA : 0>
      aie.connect<DMA : 0, North : 1>
      aie.connect<DMA : 1, North : 5>
      aie.connect<DMA : 2, North : 0>
    }
    %switchbox_2_2 = aie.switchbox(%tile_2_2) {
      aie.connect<West : 3, DMA : 0>
      aie.connect<West : 2, East : 1>
      aie.connect<South : 1, West : 3>
      aie.connect<South : 5, DMA : 1>
      aie.connect<South : 0, East : 3>
    }
    %switchbox_3_2 = aie.switchbox(%tile_3_2) {
      aie.connect<West : 1, DMA : 0>
      aie.connect<West : 3, DMA : 1>
      aie.connect<DMA : 0, North : 2>
      aie.connect<North : 3, South : 3>
    }
    %switchbox_2_3 = aie.switchbox(%tile_2_3) {
      aie.connect<East : 1, DMA : 0>
    }
    %switchbox_3_3 = aie.switchbox(%tile_3_3) {
      aie.connect<South : 2, West : 1>
      aie.connect<North : 1, South : 3>
    }
    %switchbox_3_0 = aie.switchbox(%tile_3_0) {
      aie.connect<North : 3, South : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(Ctrl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_3_0 = aie.shim_mux(%tile_3_0) {
      aie.connect<North : 2, DMA : 0>
    }
    %switchbox_3_1 = aie.switchbox(%tile_3_1) {
      aie.connect<North : 3, South : 3>
    }
    %switchbox_3_4 = aie.switchbox(%tile_3_4) {
      aie.connect<DMA : 0, South : 1>
    }
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
      %c1024_i16 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_3 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_0, %c1024_i16_3) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_4 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i16_4) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      %c1024_i16_10 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_1, %c1024_i16_10) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_11 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_1, %c1024_i16_11) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_12 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_1, %c1024_i16_12) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      %c1024_i16_18 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i16_18) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_19 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_0, %c1024_i16_19) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_20 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i16_20) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      %c1024_i16 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_3 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_0, %c1024_i16_3) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_4 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i16_4) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      %c1024_i16_10 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_1, %c1024_i16_10) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_11 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_1, %c1024_i16_11) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_12 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_1, %c1024_i16_12) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      %c1024_i16_18 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i16_18) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_19 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_0, %c1024_i16_19) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_20 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i16_20) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      %c1024_i16 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_3 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_0, %c1024_i16_3) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_4 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i16_4) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      %c1024_i16_10 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_1, %c1024_i16_10) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_11 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_1, %c1024_i16_11) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_12 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_1, %c1024_i16_12) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      %c1024_i16_18 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i16_18) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_19 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_0, %c1024_i16_19) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_20 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i16_20) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      %c1024_i16 = arith.constant 1024 : i16
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_3 = arith.constant 1024 : i16
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i16_3) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_4 = arith.constant 1024 : i16
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i16_4) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
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
      %c1024_i16_10 = arith.constant 1024 : i16
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i16_10) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_11 = arith.constant 1024 : i16
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i16_11) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_12 = arith.constant 1024 : i16
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i16_12) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
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
      %c1024_i16_18 = arith.constant 1024 : i16
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i16_18) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_19 = arith.constant 1024 : i16
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i16_19) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_20 = arith.constant 1024 : i16
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i16_20) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
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
      %c1024_i16 = arith.constant 1024 : i16
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_3 = arith.constant 1024 : i16
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i16_3) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_4 = arith.constant 1024 : i16
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i16_4) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
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
      %c1024_i16_10 = arith.constant 1024 : i16
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i16_10) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_11 = arith.constant 1024 : i16
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i16_11) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_12 = arith.constant 1024 : i16
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i16_12) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
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
      %c1024_i16_18 = arith.constant 1024 : i16
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i16_18) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_19 = arith.constant 1024 : i16
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i16_19) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_20 = arith.constant 1024 : i16
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i16_20) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
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
      %c1024_i16 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_3 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_0, %c1024_i16_3) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_4 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i16_4) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      %c1024_i16_10 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_1, %c1024_i16_10) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_11 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_1, %c1024_i16_11) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_12 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_1, %c1024_i16_12) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      %c1024_i16_18 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i16_18) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_19 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_0, %c1024_i16_19) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_20 = arith.constant 1024 : i16
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i16_20) : (memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      %c1024_i16 = arith.constant 1024 : i16
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_3 = arith.constant 1024 : i16
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i16_3) : (memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_4 = arith.constant 1024 : i16
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i16_4) : (memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
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
      %c1024_i16_10 = arith.constant 1024 : i16
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i16_10) : (memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_11 = arith.constant 1024 : i16
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i16_11) : (memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_12 = arith.constant 1024 : i16
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i16_12) : (memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
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
      %c1024_i16_18 = arith.constant 1024 : i16
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i16_18) : (memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_19 = arith.constant 1024 : i16
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i16_19) : (memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_20 = arith.constant 1024 : i16
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i16_20) : (memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
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
      %c1024_i16 = arith.constant 1024 : i16
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_3 = arith.constant 1024 : i16
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i16_3) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_4 = arith.constant 1024 : i16
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i16_4) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
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
      %c1024_i16_10 = arith.constant 1024 : i16
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i16_10) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_11 = arith.constant 1024 : i16
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i16_11) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_12 = arith.constant 1024 : i16
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i16_12) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
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
      %c1024_i16_18 = arith.constant 1024 : i16
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i16_18) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_19 = arith.constant 1024 : i16
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i16_19) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_20 = arith.constant 1024 : i16
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i16_20) : (memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i16) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "vector_mult.o"}
    %core_2_4 = aie.core(%tile_2_4) {
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
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_3 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16_3) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_4 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16_4) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_5 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16_5) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_6 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16_6) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_7 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16_7) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_8 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16_8) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_9 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16_9) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_10 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16_10) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c0_11 = arith.constant 0 : index
      %c9_12 = arith.constant 9 : index
      %c1_13 = arith.constant 1 : index
      %c9_14 = arith.constant 9 : index
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_15 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i16_15) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_16 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16_16) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_17 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16_17) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_18 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16_18) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_19 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16_19) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_20 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16_20) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_21 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16_21) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_22 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16_22) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_23 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16_23) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c0_24 = arith.constant 0 : index
      %c9_25 = arith.constant 9 : index
      %c1_26 = arith.constant 1 : index
      %c9_27 = arith.constant 9 : index
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_28 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16_28) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_29 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i16_29) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_30 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16_30) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_31 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16_31) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_32 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16_32) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_33 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16_33) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_34 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16_34) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_35 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16_35) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_36 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16_36) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c0_37 = arith.constant 0 : index
      %c9_38 = arith.constant 9 : index
      %c1_39 = arith.constant 1 : index
      %c9_40 = arith.constant 9 : index
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_41 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16_41) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_42 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16_42) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_43 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i16_43) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_44 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16_44) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_45 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16_45) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_46 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16_46) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_47 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16_47) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_48 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16_48) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_49 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16_49) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c0_50 = arith.constant 0 : index
      %c9_51 = arith.constant 9 : index
      %c1_52 = arith.constant 1 : index
      %c9_53 = arith.constant 9 : index
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_54 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16_54) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_55 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16_55) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_56 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16_56) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_57 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i16_57) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_58 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16_58) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_59 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16_59) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_60 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16_60) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_61 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16_61) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_62 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16_62) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c0_63 = arith.constant 0 : index
      %c9_64 = arith.constant 9 : index
      %c1_65 = arith.constant 1 : index
      %c9_66 = arith.constant 9 : index
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_67 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16_67) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_68 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16_68) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_69 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16_69) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_70 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16_70) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_71 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i16_71) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_72 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16_72) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_73 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16_73) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_74 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16_74) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_75 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16_75) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c0_76 = arith.constant 0 : index
      %c9_77 = arith.constant 9 : index
      %c1_78 = arith.constant 1 : index
      %c9_79 = arith.constant 9 : index
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_80 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16_80) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_81 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16_81) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_82 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16_82) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_83 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16_83) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_84 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16_84) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_85 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i16_85) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_86 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16_86) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_87 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16_87) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_88 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16_88) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c0_89 = arith.constant 0 : index
      %c9_90 = arith.constant 9 : index
      %c1_91 = arith.constant 1 : index
      %c9_92 = arith.constant 9 : index
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_93 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16_93) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_94 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16_94) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_95 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16_95) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_96 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16_96) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_97 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16_97) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_98 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16_98) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_99 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i16_99) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_100 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16_100) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_101 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16_101) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c0_102 = arith.constant 0 : index
      %c9_103 = arith.constant 9 : index
      %c1_104 = arith.constant 1 : index
      %c9_105 = arith.constant 9 : index
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_106 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16_106) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_107 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16_107) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_108 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16_108) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_109 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16_109) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_110 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16_110) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_111 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16_111) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_112 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16_112) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_113 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i16_113) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_114 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16_114) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c0_115 = arith.constant 0 : index
      %c9_116 = arith.constant 9 : index
      %c1_117 = arith.constant 1 : index
      %c9_118 = arith.constant 9 : index
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_119 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16_119) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_120 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16_120) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_121 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16_121) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_122 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16_122) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_123 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16_123) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_124 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16_124) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_125 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16_125) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_126 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16_126) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_127 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i16_127) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
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
      %c0_128 = arith.constant 0 : index
      %c9_129 = arith.constant 9 : index
      %c1_130 = arith.constant 1 : index
      %c9_131 = arith.constant 9 : index
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_132 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i16_132) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_133 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i16_133) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_134 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i16_134) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_135 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i16_135) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_136 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i16_136) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_137 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i16_137) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_138 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i16_138) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_139 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i16_139) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i16_140 = arith.constant 1024 : i16
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i16_140) : (memref<1024xbf16>, memref<2xbf16>, i16) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %5 = arith.addi %3, %c1 : index
      cf.br ^bb4(%5 : index)
    ^bb6:  // pred: ^bb4
      aie.end
    } {link_with = "mean.o"}
    %core_3_4 = aie.core(%tile_3_4) {
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
      %c0_0 = arith.constant 0 : index
      %2 = memref.load %of_meanG_buff_0[%c0_0] : memref<2xbf16>
      %c0_1 = arith.constant 0 : index
      memref.store %2, %out_buff_0[%c0_1] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c1_2 = arith.constant 1 : index
      %c9 = arith.constant 9 : index
      %c1_3 = arith.constant 1 : index
      %c8 = arith.constant 8 : index
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %3 = memref.load %out_buff_0[%c0_4] : memref<2xbf16>
      %c0_5 = arith.constant 0 : index
      %4 = memref.load %of_meanG_buff_1[%c0_5] : memref<2xbf16>
      %5 = arith.addf %3, %4 : bf16
      %c0_6 = arith.constant 0 : index
      memref.store %5, %out_buff_0[%c0_6] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_7 = arith.constant 0 : index
      %6 = memref.load %out_buff_0[%c0_7] : memref<2xbf16>
      %c0_8 = arith.constant 0 : index
      %7 = memref.load %of_meanG_buff_2[%c0_8] : memref<2xbf16>
      %8 = arith.addf %6, %7 : bf16
      %c0_9 = arith.constant 0 : index
      memref.store %8, %out_buff_0[%c0_9] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_10 = arith.constant 0 : index
      %9 = memref.load %out_buff_0[%c0_10] : memref<2xbf16>
      %c0_11 = arith.constant 0 : index
      %10 = memref.load %of_meanG_buff_3[%c0_11] : memref<2xbf16>
      %11 = arith.addf %9, %10 : bf16
      %c0_12 = arith.constant 0 : index
      memref.store %11, %out_buff_0[%c0_12] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_13 = arith.constant 0 : index
      %12 = memref.load %out_buff_0[%c0_13] : memref<2xbf16>
      %c0_14 = arith.constant 0 : index
      %13 = memref.load %of_meanG_buff_4[%c0_14] : memref<2xbf16>
      %14 = arith.addf %12, %13 : bf16
      %c0_15 = arith.constant 0 : index
      memref.store %14, %out_buff_0[%c0_15] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_16 = arith.constant 0 : index
      %15 = memref.load %out_buff_0[%c0_16] : memref<2xbf16>
      %c0_17 = arith.constant 0 : index
      %16 = memref.load %of_meanG_buff_5[%c0_17] : memref<2xbf16>
      %17 = arith.addf %15, %16 : bf16
      %c0_18 = arith.constant 0 : index
      memref.store %17, %out_buff_0[%c0_18] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_19 = arith.constant 0 : index
      %18 = memref.load %out_buff_0[%c0_19] : memref<2xbf16>
      %c0_20 = arith.constant 0 : index
      %19 = memref.load %of_meanG_buff_6[%c0_20] : memref<2xbf16>
      %20 = arith.addf %18, %19 : bf16
      %c0_21 = arith.constant 0 : index
      memref.store %20, %out_buff_0[%c0_21] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_22 = arith.constant 0 : index
      %21 = memref.load %out_buff_0[%c0_22] : memref<2xbf16>
      %c0_23 = arith.constant 0 : index
      %22 = memref.load %of_meanG_buff_7[%c0_23] : memref<2xbf16>
      %23 = arith.addf %21, %22 : bf16
      %c0_24 = arith.constant 0 : index
      memref.store %23, %out_buff_0[%c0_24] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_25 = arith.constant 0 : index
      %24 = memref.load %out_buff_0[%c0_25] : memref<2xbf16>
      %c0_26 = arith.constant 0 : index
      %25 = memref.load %of_meanG_buff_8[%c0_26] : memref<2xbf16>
      %26 = arith.addf %24, %25 : bf16
      %c0_27 = arith.constant 0 : index
      memref.store %26, %out_buff_0[%c0_27] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c0_28 = arith.constant 0 : index
      %27 = memref.load %out_buff_0[%c0_28] : memref<2xbf16>
      %cst = arith.constant 9.000000e+00 : bf16
      %28 = arith.divf %27, %cst : bf16
      %c1_29 = arith.constant 1 : index
      memref.store %28, %out_buff_0[%c1_29] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_30 = arith.constant 0 : index
      %29 = memref.load %of_meanG_buff_9[%c0_30] : memref<2xbf16>
      %c0_31 = arith.constant 0 : index
      memref.store %29, %out_buff_1[%c0_31] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c1_32 = arith.constant 1 : index
      %c9_33 = arith.constant 9 : index
      %c1_34 = arith.constant 1 : index
      %c8_35 = arith.constant 8 : index
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_36 = arith.constant 0 : index
      %30 = memref.load %out_buff_1[%c0_36] : memref<2xbf16>
      %c0_37 = arith.constant 0 : index
      %31 = memref.load %of_meanG_buff_0[%c0_37] : memref<2xbf16>
      %32 = arith.addf %30, %31 : bf16
      %c0_38 = arith.constant 0 : index
      memref.store %32, %out_buff_1[%c0_38] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_39 = arith.constant 0 : index
      %33 = memref.load %out_buff_1[%c0_39] : memref<2xbf16>
      %c0_40 = arith.constant 0 : index
      %34 = memref.load %of_meanG_buff_1[%c0_40] : memref<2xbf16>
      %35 = arith.addf %33, %34 : bf16
      %c0_41 = arith.constant 0 : index
      memref.store %35, %out_buff_1[%c0_41] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_42 = arith.constant 0 : index
      %36 = memref.load %out_buff_1[%c0_42] : memref<2xbf16>
      %c0_43 = arith.constant 0 : index
      %37 = memref.load %of_meanG_buff_2[%c0_43] : memref<2xbf16>
      %38 = arith.addf %36, %37 : bf16
      %c0_44 = arith.constant 0 : index
      memref.store %38, %out_buff_1[%c0_44] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_45 = arith.constant 0 : index
      %39 = memref.load %out_buff_1[%c0_45] : memref<2xbf16>
      %c0_46 = arith.constant 0 : index
      %40 = memref.load %of_meanG_buff_3[%c0_46] : memref<2xbf16>
      %41 = arith.addf %39, %40 : bf16
      %c0_47 = arith.constant 0 : index
      memref.store %41, %out_buff_1[%c0_47] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_48 = arith.constant 0 : index
      %42 = memref.load %out_buff_1[%c0_48] : memref<2xbf16>
      %c0_49 = arith.constant 0 : index
      %43 = memref.load %of_meanG_buff_4[%c0_49] : memref<2xbf16>
      %44 = arith.addf %42, %43 : bf16
      %c0_50 = arith.constant 0 : index
      memref.store %44, %out_buff_1[%c0_50] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_51 = arith.constant 0 : index
      %45 = memref.load %out_buff_1[%c0_51] : memref<2xbf16>
      %c0_52 = arith.constant 0 : index
      %46 = memref.load %of_meanG_buff_5[%c0_52] : memref<2xbf16>
      %47 = arith.addf %45, %46 : bf16
      %c0_53 = arith.constant 0 : index
      memref.store %47, %out_buff_1[%c0_53] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_54 = arith.constant 0 : index
      %48 = memref.load %out_buff_1[%c0_54] : memref<2xbf16>
      %c0_55 = arith.constant 0 : index
      %49 = memref.load %of_meanG_buff_6[%c0_55] : memref<2xbf16>
      %50 = arith.addf %48, %49 : bf16
      %c0_56 = arith.constant 0 : index
      memref.store %50, %out_buff_1[%c0_56] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_57 = arith.constant 0 : index
      %51 = memref.load %out_buff_1[%c0_57] : memref<2xbf16>
      %c0_58 = arith.constant 0 : index
      %52 = memref.load %of_meanG_buff_7[%c0_58] : memref<2xbf16>
      %53 = arith.addf %51, %52 : bf16
      %c0_59 = arith.constant 0 : index
      memref.store %53, %out_buff_1[%c0_59] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c0_60 = arith.constant 0 : index
      %54 = memref.load %out_buff_1[%c0_60] : memref<2xbf16>
      %cst_61 = arith.constant 9.000000e+00 : bf16
      %55 = arith.divf %54, %cst_61 : bf16
      %c1_62 = arith.constant 1 : index
      memref.store %55, %out_buff_1[%c1_62] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_63 = arith.constant 0 : index
      %56 = memref.load %of_meanG_buff_8[%c0_63] : memref<2xbf16>
      %c0_64 = arith.constant 0 : index
      memref.store %56, %out_buff_0[%c0_64] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c1_65 = arith.constant 1 : index
      %c9_66 = arith.constant 9 : index
      %c1_67 = arith.constant 1 : index
      %c8_68 = arith.constant 8 : index
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_69 = arith.constant 0 : index
      %57 = memref.load %out_buff_0[%c0_69] : memref<2xbf16>
      %c0_70 = arith.constant 0 : index
      %58 = memref.load %of_meanG_buff_9[%c0_70] : memref<2xbf16>
      %59 = arith.addf %57, %58 : bf16
      %c0_71 = arith.constant 0 : index
      memref.store %59, %out_buff_0[%c0_71] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_72 = arith.constant 0 : index
      %60 = memref.load %out_buff_0[%c0_72] : memref<2xbf16>
      %c0_73 = arith.constant 0 : index
      %61 = memref.load %of_meanG_buff_0[%c0_73] : memref<2xbf16>
      %62 = arith.addf %60, %61 : bf16
      %c0_74 = arith.constant 0 : index
      memref.store %62, %out_buff_0[%c0_74] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_75 = arith.constant 0 : index
      %63 = memref.load %out_buff_0[%c0_75] : memref<2xbf16>
      %c0_76 = arith.constant 0 : index
      %64 = memref.load %of_meanG_buff_1[%c0_76] : memref<2xbf16>
      %65 = arith.addf %63, %64 : bf16
      %c0_77 = arith.constant 0 : index
      memref.store %65, %out_buff_0[%c0_77] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_78 = arith.constant 0 : index
      %66 = memref.load %out_buff_0[%c0_78] : memref<2xbf16>
      %c0_79 = arith.constant 0 : index
      %67 = memref.load %of_meanG_buff_2[%c0_79] : memref<2xbf16>
      %68 = arith.addf %66, %67 : bf16
      %c0_80 = arith.constant 0 : index
      memref.store %68, %out_buff_0[%c0_80] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_81 = arith.constant 0 : index
      %69 = memref.load %out_buff_0[%c0_81] : memref<2xbf16>
      %c0_82 = arith.constant 0 : index
      %70 = memref.load %of_meanG_buff_3[%c0_82] : memref<2xbf16>
      %71 = arith.addf %69, %70 : bf16
      %c0_83 = arith.constant 0 : index
      memref.store %71, %out_buff_0[%c0_83] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_84 = arith.constant 0 : index
      %72 = memref.load %out_buff_0[%c0_84] : memref<2xbf16>
      %c0_85 = arith.constant 0 : index
      %73 = memref.load %of_meanG_buff_4[%c0_85] : memref<2xbf16>
      %74 = arith.addf %72, %73 : bf16
      %c0_86 = arith.constant 0 : index
      memref.store %74, %out_buff_0[%c0_86] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_87 = arith.constant 0 : index
      %75 = memref.load %out_buff_0[%c0_87] : memref<2xbf16>
      %c0_88 = arith.constant 0 : index
      %76 = memref.load %of_meanG_buff_5[%c0_88] : memref<2xbf16>
      %77 = arith.addf %75, %76 : bf16
      %c0_89 = arith.constant 0 : index
      memref.store %77, %out_buff_0[%c0_89] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_90 = arith.constant 0 : index
      %78 = memref.load %out_buff_0[%c0_90] : memref<2xbf16>
      %c0_91 = arith.constant 0 : index
      %79 = memref.load %of_meanG_buff_6[%c0_91] : memref<2xbf16>
      %80 = arith.addf %78, %79 : bf16
      %c0_92 = arith.constant 0 : index
      memref.store %80, %out_buff_0[%c0_92] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c0_93 = arith.constant 0 : index
      %81 = memref.load %out_buff_0[%c0_93] : memref<2xbf16>
      %cst_94 = arith.constant 9.000000e+00 : bf16
      %82 = arith.divf %81, %cst_94 : bf16
      %c1_95 = arith.constant 1 : index
      memref.store %82, %out_buff_0[%c1_95] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_96 = arith.constant 0 : index
      %83 = memref.load %of_meanG_buff_7[%c0_96] : memref<2xbf16>
      %c0_97 = arith.constant 0 : index
      memref.store %83, %out_buff_1[%c0_97] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c1_98 = arith.constant 1 : index
      %c9_99 = arith.constant 9 : index
      %c1_100 = arith.constant 1 : index
      %c8_101 = arith.constant 8 : index
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_102 = arith.constant 0 : index
      %84 = memref.load %out_buff_1[%c0_102] : memref<2xbf16>
      %c0_103 = arith.constant 0 : index
      %85 = memref.load %of_meanG_buff_8[%c0_103] : memref<2xbf16>
      %86 = arith.addf %84, %85 : bf16
      %c0_104 = arith.constant 0 : index
      memref.store %86, %out_buff_1[%c0_104] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_105 = arith.constant 0 : index
      %87 = memref.load %out_buff_1[%c0_105] : memref<2xbf16>
      %c0_106 = arith.constant 0 : index
      %88 = memref.load %of_meanG_buff_9[%c0_106] : memref<2xbf16>
      %89 = arith.addf %87, %88 : bf16
      %c0_107 = arith.constant 0 : index
      memref.store %89, %out_buff_1[%c0_107] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_108 = arith.constant 0 : index
      %90 = memref.load %out_buff_1[%c0_108] : memref<2xbf16>
      %c0_109 = arith.constant 0 : index
      %91 = memref.load %of_meanG_buff_0[%c0_109] : memref<2xbf16>
      %92 = arith.addf %90, %91 : bf16
      %c0_110 = arith.constant 0 : index
      memref.store %92, %out_buff_1[%c0_110] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_111 = arith.constant 0 : index
      %93 = memref.load %out_buff_1[%c0_111] : memref<2xbf16>
      %c0_112 = arith.constant 0 : index
      %94 = memref.load %of_meanG_buff_1[%c0_112] : memref<2xbf16>
      %95 = arith.addf %93, %94 : bf16
      %c0_113 = arith.constant 0 : index
      memref.store %95, %out_buff_1[%c0_113] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_114 = arith.constant 0 : index
      %96 = memref.load %out_buff_1[%c0_114] : memref<2xbf16>
      %c0_115 = arith.constant 0 : index
      %97 = memref.load %of_meanG_buff_2[%c0_115] : memref<2xbf16>
      %98 = arith.addf %96, %97 : bf16
      %c0_116 = arith.constant 0 : index
      memref.store %98, %out_buff_1[%c0_116] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_117 = arith.constant 0 : index
      %99 = memref.load %out_buff_1[%c0_117] : memref<2xbf16>
      %c0_118 = arith.constant 0 : index
      %100 = memref.load %of_meanG_buff_3[%c0_118] : memref<2xbf16>
      %101 = arith.addf %99, %100 : bf16
      %c0_119 = arith.constant 0 : index
      memref.store %101, %out_buff_1[%c0_119] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_120 = arith.constant 0 : index
      %102 = memref.load %out_buff_1[%c0_120] : memref<2xbf16>
      %c0_121 = arith.constant 0 : index
      %103 = memref.load %of_meanG_buff_4[%c0_121] : memref<2xbf16>
      %104 = arith.addf %102, %103 : bf16
      %c0_122 = arith.constant 0 : index
      memref.store %104, %out_buff_1[%c0_122] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_123 = arith.constant 0 : index
      %105 = memref.load %out_buff_1[%c0_123] : memref<2xbf16>
      %c0_124 = arith.constant 0 : index
      %106 = memref.load %of_meanG_buff_5[%c0_124] : memref<2xbf16>
      %107 = arith.addf %105, %106 : bf16
      %c0_125 = arith.constant 0 : index
      memref.store %107, %out_buff_1[%c0_125] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c0_126 = arith.constant 0 : index
      %108 = memref.load %out_buff_1[%c0_126] : memref<2xbf16>
      %cst_127 = arith.constant 9.000000e+00 : bf16
      %109 = arith.divf %108, %cst_127 : bf16
      %c1_128 = arith.constant 1 : index
      memref.store %109, %out_buff_1[%c1_128] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_129 = arith.constant 0 : index
      %110 = memref.load %of_meanG_buff_6[%c0_129] : memref<2xbf16>
      %c0_130 = arith.constant 0 : index
      memref.store %110, %out_buff_0[%c0_130] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c1_131 = arith.constant 1 : index
      %c9_132 = arith.constant 9 : index
      %c1_133 = arith.constant 1 : index
      %c8_134 = arith.constant 8 : index
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_135 = arith.constant 0 : index
      %111 = memref.load %out_buff_0[%c0_135] : memref<2xbf16>
      %c0_136 = arith.constant 0 : index
      %112 = memref.load %of_meanG_buff_7[%c0_136] : memref<2xbf16>
      %113 = arith.addf %111, %112 : bf16
      %c0_137 = arith.constant 0 : index
      memref.store %113, %out_buff_0[%c0_137] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_138 = arith.constant 0 : index
      %114 = memref.load %out_buff_0[%c0_138] : memref<2xbf16>
      %c0_139 = arith.constant 0 : index
      %115 = memref.load %of_meanG_buff_8[%c0_139] : memref<2xbf16>
      %116 = arith.addf %114, %115 : bf16
      %c0_140 = arith.constant 0 : index
      memref.store %116, %out_buff_0[%c0_140] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_141 = arith.constant 0 : index
      %117 = memref.load %out_buff_0[%c0_141] : memref<2xbf16>
      %c0_142 = arith.constant 0 : index
      %118 = memref.load %of_meanG_buff_9[%c0_142] : memref<2xbf16>
      %119 = arith.addf %117, %118 : bf16
      %c0_143 = arith.constant 0 : index
      memref.store %119, %out_buff_0[%c0_143] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_144 = arith.constant 0 : index
      %120 = memref.load %out_buff_0[%c0_144] : memref<2xbf16>
      %c0_145 = arith.constant 0 : index
      %121 = memref.load %of_meanG_buff_0[%c0_145] : memref<2xbf16>
      %122 = arith.addf %120, %121 : bf16
      %c0_146 = arith.constant 0 : index
      memref.store %122, %out_buff_0[%c0_146] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_147 = arith.constant 0 : index
      %123 = memref.load %out_buff_0[%c0_147] : memref<2xbf16>
      %c0_148 = arith.constant 0 : index
      %124 = memref.load %of_meanG_buff_1[%c0_148] : memref<2xbf16>
      %125 = arith.addf %123, %124 : bf16
      %c0_149 = arith.constant 0 : index
      memref.store %125, %out_buff_0[%c0_149] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_150 = arith.constant 0 : index
      %126 = memref.load %out_buff_0[%c0_150] : memref<2xbf16>
      %c0_151 = arith.constant 0 : index
      %127 = memref.load %of_meanG_buff_2[%c0_151] : memref<2xbf16>
      %128 = arith.addf %126, %127 : bf16
      %c0_152 = arith.constant 0 : index
      memref.store %128, %out_buff_0[%c0_152] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_153 = arith.constant 0 : index
      %129 = memref.load %out_buff_0[%c0_153] : memref<2xbf16>
      %c0_154 = arith.constant 0 : index
      %130 = memref.load %of_meanG_buff_3[%c0_154] : memref<2xbf16>
      %131 = arith.addf %129, %130 : bf16
      %c0_155 = arith.constant 0 : index
      memref.store %131, %out_buff_0[%c0_155] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_156 = arith.constant 0 : index
      %132 = memref.load %out_buff_0[%c0_156] : memref<2xbf16>
      %c0_157 = arith.constant 0 : index
      %133 = memref.load %of_meanG_buff_4[%c0_157] : memref<2xbf16>
      %134 = arith.addf %132, %133 : bf16
      %c0_158 = arith.constant 0 : index
      memref.store %134, %out_buff_0[%c0_158] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c0_159 = arith.constant 0 : index
      %135 = memref.load %out_buff_0[%c0_159] : memref<2xbf16>
      %cst_160 = arith.constant 9.000000e+00 : bf16
      %136 = arith.divf %135, %cst_160 : bf16
      %c1_161 = arith.constant 1 : index
      memref.store %136, %out_buff_0[%c1_161] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_162 = arith.constant 0 : index
      %137 = memref.load %of_meanG_buff_5[%c0_162] : memref<2xbf16>
      %c0_163 = arith.constant 0 : index
      memref.store %137, %out_buff_1[%c0_163] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c1_164 = arith.constant 1 : index
      %c9_165 = arith.constant 9 : index
      %c1_166 = arith.constant 1 : index
      %c8_167 = arith.constant 8 : index
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_168 = arith.constant 0 : index
      %138 = memref.load %out_buff_1[%c0_168] : memref<2xbf16>
      %c0_169 = arith.constant 0 : index
      %139 = memref.load %of_meanG_buff_6[%c0_169] : memref<2xbf16>
      %140 = arith.addf %138, %139 : bf16
      %c0_170 = arith.constant 0 : index
      memref.store %140, %out_buff_1[%c0_170] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_171 = arith.constant 0 : index
      %141 = memref.load %out_buff_1[%c0_171] : memref<2xbf16>
      %c0_172 = arith.constant 0 : index
      %142 = memref.load %of_meanG_buff_7[%c0_172] : memref<2xbf16>
      %143 = arith.addf %141, %142 : bf16
      %c0_173 = arith.constant 0 : index
      memref.store %143, %out_buff_1[%c0_173] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_174 = arith.constant 0 : index
      %144 = memref.load %out_buff_1[%c0_174] : memref<2xbf16>
      %c0_175 = arith.constant 0 : index
      %145 = memref.load %of_meanG_buff_8[%c0_175] : memref<2xbf16>
      %146 = arith.addf %144, %145 : bf16
      %c0_176 = arith.constant 0 : index
      memref.store %146, %out_buff_1[%c0_176] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_177 = arith.constant 0 : index
      %147 = memref.load %out_buff_1[%c0_177] : memref<2xbf16>
      %c0_178 = arith.constant 0 : index
      %148 = memref.load %of_meanG_buff_9[%c0_178] : memref<2xbf16>
      %149 = arith.addf %147, %148 : bf16
      %c0_179 = arith.constant 0 : index
      memref.store %149, %out_buff_1[%c0_179] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_180 = arith.constant 0 : index
      %150 = memref.load %out_buff_1[%c0_180] : memref<2xbf16>
      %c0_181 = arith.constant 0 : index
      %151 = memref.load %of_meanG_buff_0[%c0_181] : memref<2xbf16>
      %152 = arith.addf %150, %151 : bf16
      %c0_182 = arith.constant 0 : index
      memref.store %152, %out_buff_1[%c0_182] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_183 = arith.constant 0 : index
      %153 = memref.load %out_buff_1[%c0_183] : memref<2xbf16>
      %c0_184 = arith.constant 0 : index
      %154 = memref.load %of_meanG_buff_1[%c0_184] : memref<2xbf16>
      %155 = arith.addf %153, %154 : bf16
      %c0_185 = arith.constant 0 : index
      memref.store %155, %out_buff_1[%c0_185] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_186 = arith.constant 0 : index
      %156 = memref.load %out_buff_1[%c0_186] : memref<2xbf16>
      %c0_187 = arith.constant 0 : index
      %157 = memref.load %of_meanG_buff_2[%c0_187] : memref<2xbf16>
      %158 = arith.addf %156, %157 : bf16
      %c0_188 = arith.constant 0 : index
      memref.store %158, %out_buff_1[%c0_188] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_189 = arith.constant 0 : index
      %159 = memref.load %out_buff_1[%c0_189] : memref<2xbf16>
      %c0_190 = arith.constant 0 : index
      %160 = memref.load %of_meanG_buff_3[%c0_190] : memref<2xbf16>
      %161 = arith.addf %159, %160 : bf16
      %c0_191 = arith.constant 0 : index
      memref.store %161, %out_buff_1[%c0_191] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c0_192 = arith.constant 0 : index
      %162 = memref.load %out_buff_1[%c0_192] : memref<2xbf16>
      %cst_193 = arith.constant 9.000000e+00 : bf16
      %163 = arith.divf %162, %cst_193 : bf16
      %c1_194 = arith.constant 1 : index
      memref.store %163, %out_buff_1[%c1_194] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_195 = arith.constant 0 : index
      %164 = memref.load %of_meanG_buff_4[%c0_195] : memref<2xbf16>
      %c0_196 = arith.constant 0 : index
      memref.store %164, %out_buff_0[%c0_196] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c1_197 = arith.constant 1 : index
      %c9_198 = arith.constant 9 : index
      %c1_199 = arith.constant 1 : index
      %c8_200 = arith.constant 8 : index
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_201 = arith.constant 0 : index
      %165 = memref.load %out_buff_0[%c0_201] : memref<2xbf16>
      %c0_202 = arith.constant 0 : index
      %166 = memref.load %of_meanG_buff_5[%c0_202] : memref<2xbf16>
      %167 = arith.addf %165, %166 : bf16
      %c0_203 = arith.constant 0 : index
      memref.store %167, %out_buff_0[%c0_203] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_204 = arith.constant 0 : index
      %168 = memref.load %out_buff_0[%c0_204] : memref<2xbf16>
      %c0_205 = arith.constant 0 : index
      %169 = memref.load %of_meanG_buff_6[%c0_205] : memref<2xbf16>
      %170 = arith.addf %168, %169 : bf16
      %c0_206 = arith.constant 0 : index
      memref.store %170, %out_buff_0[%c0_206] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_207 = arith.constant 0 : index
      %171 = memref.load %out_buff_0[%c0_207] : memref<2xbf16>
      %c0_208 = arith.constant 0 : index
      %172 = memref.load %of_meanG_buff_7[%c0_208] : memref<2xbf16>
      %173 = arith.addf %171, %172 : bf16
      %c0_209 = arith.constant 0 : index
      memref.store %173, %out_buff_0[%c0_209] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_210 = arith.constant 0 : index
      %174 = memref.load %out_buff_0[%c0_210] : memref<2xbf16>
      %c0_211 = arith.constant 0 : index
      %175 = memref.load %of_meanG_buff_8[%c0_211] : memref<2xbf16>
      %176 = arith.addf %174, %175 : bf16
      %c0_212 = arith.constant 0 : index
      memref.store %176, %out_buff_0[%c0_212] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_213 = arith.constant 0 : index
      %177 = memref.load %out_buff_0[%c0_213] : memref<2xbf16>
      %c0_214 = arith.constant 0 : index
      %178 = memref.load %of_meanG_buff_9[%c0_214] : memref<2xbf16>
      %179 = arith.addf %177, %178 : bf16
      %c0_215 = arith.constant 0 : index
      memref.store %179, %out_buff_0[%c0_215] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_216 = arith.constant 0 : index
      %180 = memref.load %out_buff_0[%c0_216] : memref<2xbf16>
      %c0_217 = arith.constant 0 : index
      %181 = memref.load %of_meanG_buff_0[%c0_217] : memref<2xbf16>
      %182 = arith.addf %180, %181 : bf16
      %c0_218 = arith.constant 0 : index
      memref.store %182, %out_buff_0[%c0_218] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_219 = arith.constant 0 : index
      %183 = memref.load %out_buff_0[%c0_219] : memref<2xbf16>
      %c0_220 = arith.constant 0 : index
      %184 = memref.load %of_meanG_buff_1[%c0_220] : memref<2xbf16>
      %185 = arith.addf %183, %184 : bf16
      %c0_221 = arith.constant 0 : index
      memref.store %185, %out_buff_0[%c0_221] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_222 = arith.constant 0 : index
      %186 = memref.load %out_buff_0[%c0_222] : memref<2xbf16>
      %c0_223 = arith.constant 0 : index
      %187 = memref.load %of_meanG_buff_2[%c0_223] : memref<2xbf16>
      %188 = arith.addf %186, %187 : bf16
      %c0_224 = arith.constant 0 : index
      memref.store %188, %out_buff_0[%c0_224] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c0_225 = arith.constant 0 : index
      %189 = memref.load %out_buff_0[%c0_225] : memref<2xbf16>
      %cst_226 = arith.constant 9.000000e+00 : bf16
      %190 = arith.divf %189, %cst_226 : bf16
      %c1_227 = arith.constant 1 : index
      memref.store %190, %out_buff_0[%c1_227] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_228 = arith.constant 0 : index
      %191 = memref.load %of_meanG_buff_3[%c0_228] : memref<2xbf16>
      %c0_229 = arith.constant 0 : index
      memref.store %191, %out_buff_1[%c0_229] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c1_230 = arith.constant 1 : index
      %c9_231 = arith.constant 9 : index
      %c1_232 = arith.constant 1 : index
      %c8_233 = arith.constant 8 : index
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_234 = arith.constant 0 : index
      %192 = memref.load %out_buff_1[%c0_234] : memref<2xbf16>
      %c0_235 = arith.constant 0 : index
      %193 = memref.load %of_meanG_buff_4[%c0_235] : memref<2xbf16>
      %194 = arith.addf %192, %193 : bf16
      %c0_236 = arith.constant 0 : index
      memref.store %194, %out_buff_1[%c0_236] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_237 = arith.constant 0 : index
      %195 = memref.load %out_buff_1[%c0_237] : memref<2xbf16>
      %c0_238 = arith.constant 0 : index
      %196 = memref.load %of_meanG_buff_5[%c0_238] : memref<2xbf16>
      %197 = arith.addf %195, %196 : bf16
      %c0_239 = arith.constant 0 : index
      memref.store %197, %out_buff_1[%c0_239] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_240 = arith.constant 0 : index
      %198 = memref.load %out_buff_1[%c0_240] : memref<2xbf16>
      %c0_241 = arith.constant 0 : index
      %199 = memref.load %of_meanG_buff_6[%c0_241] : memref<2xbf16>
      %200 = arith.addf %198, %199 : bf16
      %c0_242 = arith.constant 0 : index
      memref.store %200, %out_buff_1[%c0_242] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_243 = arith.constant 0 : index
      %201 = memref.load %out_buff_1[%c0_243] : memref<2xbf16>
      %c0_244 = arith.constant 0 : index
      %202 = memref.load %of_meanG_buff_7[%c0_244] : memref<2xbf16>
      %203 = arith.addf %201, %202 : bf16
      %c0_245 = arith.constant 0 : index
      memref.store %203, %out_buff_1[%c0_245] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_246 = arith.constant 0 : index
      %204 = memref.load %out_buff_1[%c0_246] : memref<2xbf16>
      %c0_247 = arith.constant 0 : index
      %205 = memref.load %of_meanG_buff_8[%c0_247] : memref<2xbf16>
      %206 = arith.addf %204, %205 : bf16
      %c0_248 = arith.constant 0 : index
      memref.store %206, %out_buff_1[%c0_248] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_249 = arith.constant 0 : index
      %207 = memref.load %out_buff_1[%c0_249] : memref<2xbf16>
      %c0_250 = arith.constant 0 : index
      %208 = memref.load %of_meanG_buff_9[%c0_250] : memref<2xbf16>
      %209 = arith.addf %207, %208 : bf16
      %c0_251 = arith.constant 0 : index
      memref.store %209, %out_buff_1[%c0_251] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_252 = arith.constant 0 : index
      %210 = memref.load %out_buff_1[%c0_252] : memref<2xbf16>
      %c0_253 = arith.constant 0 : index
      %211 = memref.load %of_meanG_buff_0[%c0_253] : memref<2xbf16>
      %212 = arith.addf %210, %211 : bf16
      %c0_254 = arith.constant 0 : index
      memref.store %212, %out_buff_1[%c0_254] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_255 = arith.constant 0 : index
      %213 = memref.load %out_buff_1[%c0_255] : memref<2xbf16>
      %c0_256 = arith.constant 0 : index
      %214 = memref.load %of_meanG_buff_1[%c0_256] : memref<2xbf16>
      %215 = arith.addf %213, %214 : bf16
      %c0_257 = arith.constant 0 : index
      memref.store %215, %out_buff_1[%c0_257] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c0_258 = arith.constant 0 : index
      %216 = memref.load %out_buff_1[%c0_258] : memref<2xbf16>
      %cst_259 = arith.constant 9.000000e+00 : bf16
      %217 = arith.divf %216, %cst_259 : bf16
      %c1_260 = arith.constant 1 : index
      memref.store %217, %out_buff_1[%c1_260] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_261 = arith.constant 0 : index
      %218 = memref.load %of_meanG_buff_2[%c0_261] : memref<2xbf16>
      %c0_262 = arith.constant 0 : index
      memref.store %218, %out_buff_0[%c0_262] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c1_263 = arith.constant 1 : index
      %c9_264 = arith.constant 9 : index
      %c1_265 = arith.constant 1 : index
      %c8_266 = arith.constant 8 : index
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_267 = arith.constant 0 : index
      %219 = memref.load %out_buff_0[%c0_267] : memref<2xbf16>
      %c0_268 = arith.constant 0 : index
      %220 = memref.load %of_meanG_buff_3[%c0_268] : memref<2xbf16>
      %221 = arith.addf %219, %220 : bf16
      %c0_269 = arith.constant 0 : index
      memref.store %221, %out_buff_0[%c0_269] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_270 = arith.constant 0 : index
      %222 = memref.load %out_buff_0[%c0_270] : memref<2xbf16>
      %c0_271 = arith.constant 0 : index
      %223 = memref.load %of_meanG_buff_4[%c0_271] : memref<2xbf16>
      %224 = arith.addf %222, %223 : bf16
      %c0_272 = arith.constant 0 : index
      memref.store %224, %out_buff_0[%c0_272] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_273 = arith.constant 0 : index
      %225 = memref.load %out_buff_0[%c0_273] : memref<2xbf16>
      %c0_274 = arith.constant 0 : index
      %226 = memref.load %of_meanG_buff_5[%c0_274] : memref<2xbf16>
      %227 = arith.addf %225, %226 : bf16
      %c0_275 = arith.constant 0 : index
      memref.store %227, %out_buff_0[%c0_275] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_276 = arith.constant 0 : index
      %228 = memref.load %out_buff_0[%c0_276] : memref<2xbf16>
      %c0_277 = arith.constant 0 : index
      %229 = memref.load %of_meanG_buff_6[%c0_277] : memref<2xbf16>
      %230 = arith.addf %228, %229 : bf16
      %c0_278 = arith.constant 0 : index
      memref.store %230, %out_buff_0[%c0_278] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_279 = arith.constant 0 : index
      %231 = memref.load %out_buff_0[%c0_279] : memref<2xbf16>
      %c0_280 = arith.constant 0 : index
      %232 = memref.load %of_meanG_buff_7[%c0_280] : memref<2xbf16>
      %233 = arith.addf %231, %232 : bf16
      %c0_281 = arith.constant 0 : index
      memref.store %233, %out_buff_0[%c0_281] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_282 = arith.constant 0 : index
      %234 = memref.load %out_buff_0[%c0_282] : memref<2xbf16>
      %c0_283 = arith.constant 0 : index
      %235 = memref.load %of_meanG_buff_8[%c0_283] : memref<2xbf16>
      %236 = arith.addf %234, %235 : bf16
      %c0_284 = arith.constant 0 : index
      memref.store %236, %out_buff_0[%c0_284] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_285 = arith.constant 0 : index
      %237 = memref.load %out_buff_0[%c0_285] : memref<2xbf16>
      %c0_286 = arith.constant 0 : index
      %238 = memref.load %of_meanG_buff_9[%c0_286] : memref<2xbf16>
      %239 = arith.addf %237, %238 : bf16
      %c0_287 = arith.constant 0 : index
      memref.store %239, %out_buff_0[%c0_287] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_288 = arith.constant 0 : index
      %240 = memref.load %out_buff_0[%c0_288] : memref<2xbf16>
      %c0_289 = arith.constant 0 : index
      %241 = memref.load %of_meanG_buff_0[%c0_289] : memref<2xbf16>
      %242 = arith.addf %240, %241 : bf16
      %c0_290 = arith.constant 0 : index
      memref.store %242, %out_buff_0[%c0_290] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c0_291 = arith.constant 0 : index
      %243 = memref.load %out_buff_0[%c0_291] : memref<2xbf16>
      %cst_292 = arith.constant 9.000000e+00 : bf16
      %244 = arith.divf %243, %cst_292 : bf16
      %c1_293 = arith.constant 1 : index
      memref.store %244, %out_buff_0[%c1_293] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_294 = arith.constant 0 : index
      %245 = memref.load %of_meanG_buff_1[%c0_294] : memref<2xbf16>
      %c0_295 = arith.constant 0 : index
      memref.store %245, %out_buff_1[%c0_295] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c1_296 = arith.constant 1 : index
      %c9_297 = arith.constant 9 : index
      %c1_298 = arith.constant 1 : index
      %c8_299 = arith.constant 8 : index
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_300 = arith.constant 0 : index
      %246 = memref.load %out_buff_1[%c0_300] : memref<2xbf16>
      %c0_301 = arith.constant 0 : index
      %247 = memref.load %of_meanG_buff_2[%c0_301] : memref<2xbf16>
      %248 = arith.addf %246, %247 : bf16
      %c0_302 = arith.constant 0 : index
      memref.store %248, %out_buff_1[%c0_302] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_303 = arith.constant 0 : index
      %249 = memref.load %out_buff_1[%c0_303] : memref<2xbf16>
      %c0_304 = arith.constant 0 : index
      %250 = memref.load %of_meanG_buff_3[%c0_304] : memref<2xbf16>
      %251 = arith.addf %249, %250 : bf16
      %c0_305 = arith.constant 0 : index
      memref.store %251, %out_buff_1[%c0_305] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_306 = arith.constant 0 : index
      %252 = memref.load %out_buff_1[%c0_306] : memref<2xbf16>
      %c0_307 = arith.constant 0 : index
      %253 = memref.load %of_meanG_buff_4[%c0_307] : memref<2xbf16>
      %254 = arith.addf %252, %253 : bf16
      %c0_308 = arith.constant 0 : index
      memref.store %254, %out_buff_1[%c0_308] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_309 = arith.constant 0 : index
      %255 = memref.load %out_buff_1[%c0_309] : memref<2xbf16>
      %c0_310 = arith.constant 0 : index
      %256 = memref.load %of_meanG_buff_5[%c0_310] : memref<2xbf16>
      %257 = arith.addf %255, %256 : bf16
      %c0_311 = arith.constant 0 : index
      memref.store %257, %out_buff_1[%c0_311] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_312 = arith.constant 0 : index
      %258 = memref.load %out_buff_1[%c0_312] : memref<2xbf16>
      %c0_313 = arith.constant 0 : index
      %259 = memref.load %of_meanG_buff_6[%c0_313] : memref<2xbf16>
      %260 = arith.addf %258, %259 : bf16
      %c0_314 = arith.constant 0 : index
      memref.store %260, %out_buff_1[%c0_314] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_315 = arith.constant 0 : index
      %261 = memref.load %out_buff_1[%c0_315] : memref<2xbf16>
      %c0_316 = arith.constant 0 : index
      %262 = memref.load %of_meanG_buff_7[%c0_316] : memref<2xbf16>
      %263 = arith.addf %261, %262 : bf16
      %c0_317 = arith.constant 0 : index
      memref.store %263, %out_buff_1[%c0_317] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_318 = arith.constant 0 : index
      %264 = memref.load %out_buff_1[%c0_318] : memref<2xbf16>
      %c0_319 = arith.constant 0 : index
      %265 = memref.load %of_meanG_buff_8[%c0_319] : memref<2xbf16>
      %266 = arith.addf %264, %265 : bf16
      %c0_320 = arith.constant 0 : index
      memref.store %266, %out_buff_1[%c0_320] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_321 = arith.constant 0 : index
      %267 = memref.load %out_buff_1[%c0_321] : memref<2xbf16>
      %c0_322 = arith.constant 0 : index
      %268 = memref.load %of_meanG_buff_9[%c0_322] : memref<2xbf16>
      %269 = arith.addf %267, %268 : bf16
      %c0_323 = arith.constant 0 : index
      memref.store %269, %out_buff_1[%c0_323] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c0_324 = arith.constant 0 : index
      %270 = memref.load %out_buff_1[%c0_324] : memref<2xbf16>
      %cst_325 = arith.constant 9.000000e+00 : bf16
      %271 = arith.divf %270, %cst_325 : bf16
      %c1_326 = arith.constant 1 : index
      memref.store %271, %out_buff_1[%c1_326] : memref<2xbf16>
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
      %c0_327 = arith.constant 0 : index
      %275 = memref.load %of_meanG_buff_0[%c0_327] : memref<2xbf16>
      %c0_328 = arith.constant 0 : index
      memref.store %275, %out_buff_0[%c0_328] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c1_329 = arith.constant 1 : index
      %c9_330 = arith.constant 9 : index
      %c1_331 = arith.constant 1 : index
      %c8_332 = arith.constant 8 : index
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_333 = arith.constant 0 : index
      %276 = memref.load %out_buff_0[%c0_333] : memref<2xbf16>
      %c0_334 = arith.constant 0 : index
      %277 = memref.load %of_meanG_buff_1[%c0_334] : memref<2xbf16>
      %278 = arith.addf %276, %277 : bf16
      %c0_335 = arith.constant 0 : index
      memref.store %278, %out_buff_0[%c0_335] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_336 = arith.constant 0 : index
      %279 = memref.load %out_buff_0[%c0_336] : memref<2xbf16>
      %c0_337 = arith.constant 0 : index
      %280 = memref.load %of_meanG_buff_2[%c0_337] : memref<2xbf16>
      %281 = arith.addf %279, %280 : bf16
      %c0_338 = arith.constant 0 : index
      memref.store %281, %out_buff_0[%c0_338] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_339 = arith.constant 0 : index
      %282 = memref.load %out_buff_0[%c0_339] : memref<2xbf16>
      %c0_340 = arith.constant 0 : index
      %283 = memref.load %of_meanG_buff_3[%c0_340] : memref<2xbf16>
      %284 = arith.addf %282, %283 : bf16
      %c0_341 = arith.constant 0 : index
      memref.store %284, %out_buff_0[%c0_341] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_342 = arith.constant 0 : index
      %285 = memref.load %out_buff_0[%c0_342] : memref<2xbf16>
      %c0_343 = arith.constant 0 : index
      %286 = memref.load %of_meanG_buff_4[%c0_343] : memref<2xbf16>
      %287 = arith.addf %285, %286 : bf16
      %c0_344 = arith.constant 0 : index
      memref.store %287, %out_buff_0[%c0_344] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_345 = arith.constant 0 : index
      %288 = memref.load %out_buff_0[%c0_345] : memref<2xbf16>
      %c0_346 = arith.constant 0 : index
      %289 = memref.load %of_meanG_buff_5[%c0_346] : memref<2xbf16>
      %290 = arith.addf %288, %289 : bf16
      %c0_347 = arith.constant 0 : index
      memref.store %290, %out_buff_0[%c0_347] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_348 = arith.constant 0 : index
      %291 = memref.load %out_buff_0[%c0_348] : memref<2xbf16>
      %c0_349 = arith.constant 0 : index
      %292 = memref.load %of_meanG_buff_6[%c0_349] : memref<2xbf16>
      %293 = arith.addf %291, %292 : bf16
      %c0_350 = arith.constant 0 : index
      memref.store %293, %out_buff_0[%c0_350] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_351 = arith.constant 0 : index
      %294 = memref.load %out_buff_0[%c0_351] : memref<2xbf16>
      %c0_352 = arith.constant 0 : index
      %295 = memref.load %of_meanG_buff_7[%c0_352] : memref<2xbf16>
      %296 = arith.addf %294, %295 : bf16
      %c0_353 = arith.constant 0 : index
      memref.store %296, %out_buff_0[%c0_353] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 1)
      %c0_354 = arith.constant 0 : index
      %297 = memref.load %out_buff_0[%c0_354] : memref<2xbf16>
      %c0_355 = arith.constant 0 : index
      %298 = memref.load %of_meanG_buff_8[%c0_355] : memref<2xbf16>
      %299 = arith.addf %297, %298 : bf16
      %c0_356 = arith.constant 0 : index
      memref.store %299, %out_buff_0[%c0_356] : memref<2xbf16>
      aie.use_lock(%of_meanG_prod_lock, Release, 1)
      %c0_357 = arith.constant 0 : index
      %300 = memref.load %out_buff_0[%c0_357] : memref<2xbf16>
      %cst_358 = arith.constant 9.000000e+00 : bf16
      %301 = arith.divf %300, %cst_358 : bf16
      %c1_359 = arith.constant 1 : index
      memref.store %301, %out_buff_0[%c1_359] : memref<2xbf16>
      aie.use_lock(%out_cons_lock, Release, 1)
      %302 = arith.addi %273, %c1 : index
      cf.br ^bb4(%302 : index)
    ^bb6:  // pred: ^bb4
      aie.end
    } {link_with = "passthrough.o"}
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
    aie.wire(%shim_mux_0_0 : North, %switchbox_0_0 : South)
    aie.wire(%tile_0_0 : DMA, %shim_mux_0_0 : DMA)
    aie.wire(%tile_0_1 : Core, %switchbox_0_1 : Core)
    aie.wire(%tile_0_1 : DMA, %switchbox_0_1 : DMA)
    aie.wire(%switchbox_0_0 : North, %switchbox_0_1 : South)
    aie.wire(%tile_0_2 : Core, %switchbox_0_2 : Core)
    aie.wire(%tile_0_2 : DMA, %switchbox_0_2 : DMA)
    aie.wire(%switchbox_0_1 : North, %switchbox_0_2 : South)
    aie.wire(%tile_0_3 : Core, %switchbox_0_3 : Core)
    aie.wire(%tile_0_3 : DMA, %switchbox_0_3 : DMA)
    aie.wire(%switchbox_0_2 : North, %switchbox_0_3 : South)
    aie.wire(%tile_0_4 : Core, %switchbox_0_4 : Core)
    aie.wire(%tile_0_4 : DMA, %switchbox_0_4 : DMA)
    aie.wire(%switchbox_0_3 : North, %switchbox_0_4 : South)
    aie.wire(%tile_0_5 : Core, %switchbox_0_5 : Core)
    aie.wire(%tile_0_5 : DMA, %switchbox_0_5 : DMA)
    aie.wire(%switchbox_0_4 : North, %switchbox_0_5 : South)
    aie.wire(%switchbox_0_0 : East, %switchbox_1_0 : West)
    aie.wire(%shim_mux_1_0 : North, %switchbox_1_0 : South)
    aie.wire(%tile_1_0 : DMA, %shim_mux_1_0 : DMA)
    aie.wire(%switchbox_0_1 : East, %switchbox_1_1 : West)
    aie.wire(%tile_1_1 : Core, %switchbox_1_1 : Core)
    aie.wire(%tile_1_1 : DMA, %switchbox_1_1 : DMA)
    aie.wire(%switchbox_1_0 : North, %switchbox_1_1 : South)
    aie.wire(%switchbox_0_2 : East, %switchbox_1_2 : West)
    aie.wire(%tile_1_2 : Core, %switchbox_1_2 : Core)
    aie.wire(%tile_1_2 : DMA, %switchbox_1_2 : DMA)
    aie.wire(%switchbox_1_1 : North, %switchbox_1_2 : South)
    aie.wire(%switchbox_0_3 : East, %switchbox_1_3 : West)
    aie.wire(%tile_1_3 : Core, %switchbox_1_3 : Core)
    aie.wire(%tile_1_3 : DMA, %switchbox_1_3 : DMA)
    aie.wire(%switchbox_1_2 : North, %switchbox_1_3 : South)
    aie.wire(%switchbox_0_4 : East, %switchbox_1_4 : West)
    aie.wire(%tile_1_4 : Core, %switchbox_1_4 : Core)
    aie.wire(%tile_1_4 : DMA, %switchbox_1_4 : DMA)
    aie.wire(%switchbox_1_3 : North, %switchbox_1_4 : South)
    aie.wire(%switchbox_0_5 : East, %switchbox_1_5 : West)
    aie.wire(%tile_1_5 : Core, %switchbox_1_5 : Core)
    aie.wire(%tile_1_5 : DMA, %switchbox_1_5 : DMA)
    aie.wire(%switchbox_1_4 : North, %switchbox_1_5 : South)
    aie.wire(%switchbox_1_0 : East, %switchbox_2_0 : West)
    aie.wire(%switchbox_1_1 : East, %switchbox_2_1 : West)
    aie.wire(%tile_2_1 : Core, %switchbox_2_1 : Core)
    aie.wire(%tile_2_1 : DMA, %switchbox_2_1 : DMA)
    aie.wire(%switchbox_2_0 : North, %switchbox_2_1 : South)
    aie.wire(%switchbox_1_2 : East, %switchbox_2_2 : West)
    aie.wire(%tile_2_2 : Core, %switchbox_2_2 : Core)
    aie.wire(%tile_2_2 : DMA, %switchbox_2_2 : DMA)
    aie.wire(%switchbox_2_1 : North, %switchbox_2_2 : South)
    aie.wire(%switchbox_1_3 : East, %switchbox_2_3 : West)
    aie.wire(%tile_2_3 : Core, %switchbox_2_3 : Core)
    aie.wire(%tile_2_3 : DMA, %switchbox_2_3 : DMA)
    aie.wire(%switchbox_2_2 : North, %switchbox_2_3 : South)
    aie.wire(%switchbox_1_4 : East, %switchbox_2_4 : West)
    aie.wire(%tile_2_4 : Core, %switchbox_2_4 : Core)
    aie.wire(%tile_2_4 : DMA, %switchbox_2_4 : DMA)
    aie.wire(%switchbox_2_3 : North, %switchbox_2_4 : South)
    aie.wire(%switchbox_1_5 : East, %switchbox_2_5 : West)
    aie.wire(%tile_2_5 : Core, %switchbox_2_5 : Core)
    aie.wire(%tile_2_5 : DMA, %switchbox_2_5 : DMA)
    aie.wire(%switchbox_2_4 : North, %switchbox_2_5 : South)
    aie.wire(%switchbox_2_0 : East, %switchbox_3_0 : West)
    aie.wire(%shim_mux_3_0 : North, %switchbox_3_0 : South)
    aie.wire(%tile_3_0 : DMA, %shim_mux_3_0 : DMA)
    aie.wire(%switchbox_2_1 : East, %switchbox_3_1 : West)
    aie.wire(%tile_3_1 : Core, %switchbox_3_1 : Core)
    aie.wire(%tile_3_1 : DMA, %switchbox_3_1 : DMA)
    aie.wire(%switchbox_3_0 : North, %switchbox_3_1 : South)
    aie.wire(%switchbox_2_2 : East, %switchbox_3_2 : West)
    aie.wire(%tile_3_2 : Core, %switchbox_3_2 : Core)
    aie.wire(%tile_3_2 : DMA, %switchbox_3_2 : DMA)
    aie.wire(%switchbox_3_1 : North, %switchbox_3_2 : South)
    aie.wire(%switchbox_2_3 : East, %switchbox_3_3 : West)
    aie.wire(%tile_3_3 : Core, %switchbox_3_3 : Core)
    aie.wire(%tile_3_3 : DMA, %switchbox_3_3 : DMA)
    aie.wire(%switchbox_3_2 : North, %switchbox_3_3 : South)
    aie.wire(%switchbox_2_4 : East, %switchbox_3_4 : West)
    aie.wire(%tile_3_4 : Core, %switchbox_3_4 : Core)
    aie.wire(%tile_3_4 : DMA, %switchbox_3_4 : DMA)
    aie.wire(%switchbox_3_3 : North, %switchbox_3_4 : South)
    aie.wire(%switchbox_2_5 : East, %switchbox_3_5 : West)
    aie.wire(%tile_3_5 : Core, %switchbox_3_5 : Core)
    aie.wire(%tile_3_5 : DMA, %switchbox_3_5 : DMA)
    aie.wire(%switchbox_3_4 : North, %switchbox_3_5 : South)
  }
}

