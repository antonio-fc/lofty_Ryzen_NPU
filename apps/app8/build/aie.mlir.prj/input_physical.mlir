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
    %in3_prod_lock = aie.lock(%tile_1_0, 2) {init = 1 : i32, sym_name = "in3_prod_lock"}
    %in3_cons_lock = aie.lock(%tile_1_0, 3) {init = 0 : i32, sym_name = "in3_cons_lock"}
    %in2_cons_buff_0 = aie.buffer(%tile_1_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in2_cons_buff_0"} : memref<3072xf32> 
    %in2_cons_prod_lock = aie.lock(%tile_1_1, 0) {init = 3 : i32, sym_name = "in2_cons_prod_lock"}
    %in2_cons_cons_lock = aie.lock(%tile_1_1, 1) {init = 0 : i32, sym_name = "in2_cons_cons_lock"}
    %in2_prod_lock = aie.lock(%tile_1_0, 0) {init = 1 : i32, sym_name = "in2_prod_lock"}
    %in2_cons_lock = aie.lock(%tile_1_0, 1) {init = 0 : i32, sym_name = "in2_cons_lock"}
    %in1_cons_buff_0 = aie.buffer(%tile_1_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in1_cons_buff_0"} : memref<1024xf32> 
    %in1_cons_buff_1 = aie.buffer(%tile_1_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in1_cons_buff_1"} : memref<1024xf32> 
    %in1_cons_prod_lock = aie.lock(%tile_1_4, 0) {init = 2 : i32, sym_name = "in1_cons_prod_lock"}
    %in1_cons_cons_lock = aie.lock(%tile_1_4, 1) {init = 0 : i32, sym_name = "in1_cons_cons_lock"}
    %in1_prod_lock = aie.lock(%tile_0_0, 2) {init = 1 : i32, sym_name = "in1_prod_lock"}
    %in1_cons_lock = aie.lock(%tile_0_0, 3) {init = 0 : i32, sym_name = "in1_cons_lock"}
    %in0_cons_buff_0 = aie.buffer(%tile_0_3) {address = 5120 : i32, mem_bank = 0 : i32, sym_name = "in0_cons_buff_0"} : memref<1xf32> 
    %in0_cons_buff_1 = aie.buffer(%tile_0_3) {address = 20480 : i32, mem_bank = 1 : i32, sym_name = "in0_cons_buff_1"} : memref<1xf32> 
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
      %c1024_i32 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_0, %c1024_i32_3) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i32_4) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
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
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_1, %c1024_i32_10) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_1, %c1024_i32_11) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_1, %c1024_i32_12) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
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
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i32_18) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_1, %addB0_buff_1, %l_cons_buff_0, %c1024_i32_19) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addB0_cons_lock, Release, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%u_cons_buff_0, %addB0_buff_0, %l_cons_buff_0, %c1024_i32_20) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
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
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_0, %c1024_i32_3) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i32_4) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
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
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_1, %c1024_i32_10) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_1, %c1024_i32_11) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_1, %c1024_i32_12) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
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
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i32_18) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_1, %addA0_buff_1, %m_cons_buff_0, %c1024_i32_19) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA0_cons_lock, Release, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA0_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%v_cons_buff_0, %addA0_buff_0, %m_cons_buff_0, %c1024_i32_20) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
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
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_0, %c1024_i32_3) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i32_4) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
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
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_1, %c1024_i32_10) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_1, %c1024_i32_11) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_1, %c1024_i32_12) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
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
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i32_18) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_1, %addA1_buff_1, %n_cons_buff_0, %c1024_i32_19) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%addA1_cons_lock, Release, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%w_cons_buff_0, %addA1_buff_0, %n_cons_buff_0, %c1024_i32_20) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
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
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i32_3) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i32_4) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i32_10) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i32_11) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i32_12) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i32_18) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%addB1_cons_lock, Release, 1)
      aie.use_lock(%addA0_prod_lock, Release, 1)
      aie.use_lock(%addA1_cons_prod_lock, Release, 1)
      aie.use_lock(%addA0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addA1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addA0_buff_1, %addA1_cons_buff_1, %addB1_buff_1, %c1024_i32_19) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @vector_add_aie_scalar(%addA0_buff_0, %addA1_cons_buff_0, %addB1_buff_0, %c1024_i32_20) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i32_3) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i32_4) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i32_10) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i32_11) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i32_12) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i32_18) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_scaleC_cons_lock, Release, 1)
      aie.use_lock(%addB0_prod_lock, Release, 1)
      aie.use_lock(%addB1_prod_lock, Release, 1)
      aie.use_lock(%addB0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%addB1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleC_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @vector_add_aie_scalar(%addB0_buff_1, %addB1_buff_1, %of_scaleC_buff_1, %c1024_i32_19) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @vector_add_aie_scalar(%addB0_buff_0, %addB1_buff_0, %of_scaleC_buff_0, %c1024_i32_20) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_0, %c1024_i32_3) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i32_4) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
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
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_1, %c1024_i32_10) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_1, %c1024_i32_11) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_1, %c1024_i32_12) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
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
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i32_18) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_1, %of_cosD_buff_1, %in0_cons_buff_0, %c1024_i32_19) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_cosD_cons_lock, Release, 1)
      aie.use_lock(%of_scaleC_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_scaleC_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_cosD_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @vector_scalar_mul_aie_scalar(%of_scaleC_buff_0, %of_cosD_buff_0, %in0_cons_buff_0, %c1024_i32_20) : (memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32) -> ()
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
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i32_3) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i32_4) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i32_10) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i32_11) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_12 = arith.constant 1024 : i32
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i32_12) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i32_18) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @passthrough(%of_cosD_buff_1, %of_multE_buff_1, %c1024_i32_19) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_multE_cons_lock, Release, 1)
      aie.use_lock(%of_cosD_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_cosD_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multE_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @passthrough(%of_cosD_buff_0, %of_multE_buff_0, %c1024_i32_20) : (memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i32_3) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i32_4) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i32_10) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_11 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i32_11) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i32_12) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i32_18) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
      aie.use_lock(%of_meanF_cons_lock, Release, 1)
      aie.use_lock(%of_multE_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_multE_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanF_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @vector_mult_aie_scalar(%of_multE_buff_1, %in1_cons_buff_1, %of_meanF_buff_1, %c1024_i32_19) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      func.call @vector_mult_aie_scalar(%of_multE_buff_0, %in1_cons_buff_0, %of_meanF_buff_0, %c1024_i32_20) : (memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32) -> ()
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
      %c1024_i32 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_3 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32_3) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_4 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32_4) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_5 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32_5) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_6 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32_6) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_7 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32_7) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_8 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32_8) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_9 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32_9) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_10 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32_10) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c0_11 = arith.constant 0 : index
      %c9_12 = arith.constant 9 : index
      %c1_13 = arith.constant 1 : index
      %c9_14 = arith.constant 9 : index
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_15 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i32_15) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_16 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32_16) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_17 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32_17) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_18 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32_18) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_19 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32_19) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_20 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32_20) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_21 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32_21) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_22 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32_22) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_23 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32_23) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c0_24 = arith.constant 0 : index
      %c9_25 = arith.constant 9 : index
      %c1_26 = arith.constant 1 : index
      %c9_27 = arith.constant 9 : index
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_28 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32_28) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_29 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i32_29) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_30 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32_30) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_31 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32_31) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_32 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32_32) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_33 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32_33) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_34 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32_34) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_35 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32_35) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_36 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32_36) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c0_37 = arith.constant 0 : index
      %c9_38 = arith.constant 9 : index
      %c1_39 = arith.constant 1 : index
      %c9_40 = arith.constant 9 : index
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_41 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32_41) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_42 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32_42) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_43 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i32_43) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_44 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32_44) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_45 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32_45) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_46 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32_46) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_47 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32_47) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_48 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32_48) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_49 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32_49) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c0_50 = arith.constant 0 : index
      %c9_51 = arith.constant 9 : index
      %c1_52 = arith.constant 1 : index
      %c9_53 = arith.constant 9 : index
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_54 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32_54) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_55 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32_55) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_56 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32_56) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_57 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i32_57) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_58 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32_58) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_59 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32_59) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_60 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32_60) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_61 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32_61) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_62 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32_62) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c0_63 = arith.constant 0 : index
      %c9_64 = arith.constant 9 : index
      %c1_65 = arith.constant 1 : index
      %c9_66 = arith.constant 9 : index
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_67 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32_67) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_68 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32_68) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_69 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32_69) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_70 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32_70) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_71 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i32_71) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_72 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32_72) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_73 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32_73) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_74 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32_74) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_75 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32_75) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c0_76 = arith.constant 0 : index
      %c9_77 = arith.constant 9 : index
      %c1_78 = arith.constant 1 : index
      %c9_79 = arith.constant 9 : index
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_80 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32_80) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_81 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32_81) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_82 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32_82) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_83 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32_83) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_84 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32_84) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_85 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i32_85) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_86 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32_86) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_87 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32_87) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_88 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32_88) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c0_89 = arith.constant 0 : index
      %c9_90 = arith.constant 9 : index
      %c1_91 = arith.constant 1 : index
      %c9_92 = arith.constant 9 : index
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_93 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32_93) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_94 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32_94) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_95 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32_95) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_96 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32_96) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_97 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32_97) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_98 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32_98) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_99 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i32_99) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_100 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32_100) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_101 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32_101) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c0_102 = arith.constant 0 : index
      %c9_103 = arith.constant 9 : index
      %c1_104 = arith.constant 1 : index
      %c9_105 = arith.constant 9 : index
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_106 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32_106) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_107 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32_107) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_108 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32_108) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_109 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32_109) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_110 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32_110) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_111 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32_111) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_112 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32_112) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_113 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i32_113) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_114 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32_114) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      %c0_115 = arith.constant 0 : index
      %c9_116 = arith.constant 9 : index
      %c1_117 = arith.constant 1 : index
      %c9_118 = arith.constant 9 : index
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_119 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32_119) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_120 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32_120) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_121 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32_121) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_122 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32_122) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_123 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32_123) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_124 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32_124) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_125 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32_125) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_126 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32_126) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_127 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_9, %c1024_i32_127) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
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
      %c1024_i32_132 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_0, %c1024_i32_132) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_133 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_1, %c1024_i32_133) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_134 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_2, %c1024_i32_134) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_135 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_3, %c1024_i32_135) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_136 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_4, %c1024_i32_136) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_137 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_5, %c1024_i32_137) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_138 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_6, %c1024_i32_138) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_139 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_1, %of_meanG_buff_7, %c1024_i32_139) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
      aie.use_lock(%of_meanG_cons_lock, Release, 1)
      aie.use_lock(%of_meanF_prod_lock, Release, 1)
      aie.use_lock(%of_meanF_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_meanG_prod_lock, AcquireGreaterEqual, 1)
      %c1024_i32_140 = arith.constant 1024 : i32
      func.call @mean(%of_meanF_buff_0, %of_meanG_buff_8, %c1024_i32_140) : (memref<1024xf32>, memref<1xf32>, i32) -> ()
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
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %2 = memref.load %of_meanG_buff_0[%c0_0] : memref<1xf32>
      %c0_1 = arith.constant 0 : index
      %3 = memref.load %of_meanG_buff_1[%c0_1] : memref<1xf32>
      %4 = arith.addf %2, %3 : f32
      %c0_2 = arith.constant 0 : index
      %5 = memref.load %of_meanG_buff_2[%c0_2] : memref<1xf32>
      %6 = arith.addf %4, %5 : f32
      %c0_3 = arith.constant 0 : index
      %7 = memref.load %of_meanG_buff_3[%c0_3] : memref<1xf32>
      %8 = arith.addf %6, %7 : f32
      %c0_4 = arith.constant 0 : index
      %9 = memref.load %of_meanG_buff_4[%c0_4] : memref<1xf32>
      %10 = arith.addf %8, %9 : f32
      %c0_5 = arith.constant 0 : index
      %11 = memref.load %of_meanG_buff_5[%c0_5] : memref<1xf32>
      %12 = arith.addf %10, %11 : f32
      %c0_6 = arith.constant 0 : index
      %13 = memref.load %of_meanG_buff_6[%c0_6] : memref<1xf32>
      %14 = arith.addf %12, %13 : f32
      %c0_7 = arith.constant 0 : index
      %15 = memref.load %of_meanG_buff_7[%c0_7] : memref<1xf32>
      %16 = arith.addf %14, %15 : f32
      %c0_8 = arith.constant 0 : index
      %17 = memref.load %of_meanG_buff_8[%c0_8] : memref<1xf32>
      %18 = arith.addf %16, %17 : f32
      %cst = arith.constant 9.000000e+00 : f32
      %19 = arith.divf %18, %cst : f32
      %c0_9 = arith.constant 0 : index
      memref.store %19, %out_buff_0[%c0_9] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %c0_10 = arith.constant 0 : index
      %20 = memref.load %of_meanG_buff_9[%c0_10] : memref<1xf32>
      %c0_11 = arith.constant 0 : index
      %21 = memref.load %of_meanG_buff_0[%c0_11] : memref<1xf32>
      %22 = arith.addf %20, %21 : f32
      %c0_12 = arith.constant 0 : index
      %23 = memref.load %of_meanG_buff_1[%c0_12] : memref<1xf32>
      %24 = arith.addf %22, %23 : f32
      %c0_13 = arith.constant 0 : index
      %25 = memref.load %of_meanG_buff_2[%c0_13] : memref<1xf32>
      %26 = arith.addf %24, %25 : f32
      %c0_14 = arith.constant 0 : index
      %27 = memref.load %of_meanG_buff_3[%c0_14] : memref<1xf32>
      %28 = arith.addf %26, %27 : f32
      %c0_15 = arith.constant 0 : index
      %29 = memref.load %of_meanG_buff_4[%c0_15] : memref<1xf32>
      %30 = arith.addf %28, %29 : f32
      %c0_16 = arith.constant 0 : index
      %31 = memref.load %of_meanG_buff_5[%c0_16] : memref<1xf32>
      %32 = arith.addf %30, %31 : f32
      %c0_17 = arith.constant 0 : index
      %33 = memref.load %of_meanG_buff_6[%c0_17] : memref<1xf32>
      %34 = arith.addf %32, %33 : f32
      %c0_18 = arith.constant 0 : index
      %35 = memref.load %of_meanG_buff_7[%c0_18] : memref<1xf32>
      %36 = arith.addf %34, %35 : f32
      %cst_19 = arith.constant 9.000000e+00 : f32
      %37 = arith.divf %36, %cst_19 : f32
      %c0_20 = arith.constant 0 : index
      memref.store %37, %out_buff_1[%c0_20] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %c0_21 = arith.constant 0 : index
      %38 = memref.load %of_meanG_buff_8[%c0_21] : memref<1xf32>
      %c0_22 = arith.constant 0 : index
      %39 = memref.load %of_meanG_buff_9[%c0_22] : memref<1xf32>
      %40 = arith.addf %38, %39 : f32
      %c0_23 = arith.constant 0 : index
      %41 = memref.load %of_meanG_buff_0[%c0_23] : memref<1xf32>
      %42 = arith.addf %40, %41 : f32
      %c0_24 = arith.constant 0 : index
      %43 = memref.load %of_meanG_buff_1[%c0_24] : memref<1xf32>
      %44 = arith.addf %42, %43 : f32
      %c0_25 = arith.constant 0 : index
      %45 = memref.load %of_meanG_buff_2[%c0_25] : memref<1xf32>
      %46 = arith.addf %44, %45 : f32
      %c0_26 = arith.constant 0 : index
      %47 = memref.load %of_meanG_buff_3[%c0_26] : memref<1xf32>
      %48 = arith.addf %46, %47 : f32
      %c0_27 = arith.constant 0 : index
      %49 = memref.load %of_meanG_buff_4[%c0_27] : memref<1xf32>
      %50 = arith.addf %48, %49 : f32
      %c0_28 = arith.constant 0 : index
      %51 = memref.load %of_meanG_buff_5[%c0_28] : memref<1xf32>
      %52 = arith.addf %50, %51 : f32
      %c0_29 = arith.constant 0 : index
      %53 = memref.load %of_meanG_buff_6[%c0_29] : memref<1xf32>
      %54 = arith.addf %52, %53 : f32
      %cst_30 = arith.constant 9.000000e+00 : f32
      %55 = arith.divf %54, %cst_30 : f32
      %c0_31 = arith.constant 0 : index
      memref.store %55, %out_buff_0[%c0_31] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %c0_32 = arith.constant 0 : index
      %56 = memref.load %of_meanG_buff_7[%c0_32] : memref<1xf32>
      %c0_33 = arith.constant 0 : index
      %57 = memref.load %of_meanG_buff_8[%c0_33] : memref<1xf32>
      %58 = arith.addf %56, %57 : f32
      %c0_34 = arith.constant 0 : index
      %59 = memref.load %of_meanG_buff_9[%c0_34] : memref<1xf32>
      %60 = arith.addf %58, %59 : f32
      %c0_35 = arith.constant 0 : index
      %61 = memref.load %of_meanG_buff_0[%c0_35] : memref<1xf32>
      %62 = arith.addf %60, %61 : f32
      %c0_36 = arith.constant 0 : index
      %63 = memref.load %of_meanG_buff_1[%c0_36] : memref<1xf32>
      %64 = arith.addf %62, %63 : f32
      %c0_37 = arith.constant 0 : index
      %65 = memref.load %of_meanG_buff_2[%c0_37] : memref<1xf32>
      %66 = arith.addf %64, %65 : f32
      %c0_38 = arith.constant 0 : index
      %67 = memref.load %of_meanG_buff_3[%c0_38] : memref<1xf32>
      %68 = arith.addf %66, %67 : f32
      %c0_39 = arith.constant 0 : index
      %69 = memref.load %of_meanG_buff_4[%c0_39] : memref<1xf32>
      %70 = arith.addf %68, %69 : f32
      %c0_40 = arith.constant 0 : index
      %71 = memref.load %of_meanG_buff_5[%c0_40] : memref<1xf32>
      %72 = arith.addf %70, %71 : f32
      %cst_41 = arith.constant 9.000000e+00 : f32
      %73 = arith.divf %72, %cst_41 : f32
      %c0_42 = arith.constant 0 : index
      memref.store %73, %out_buff_1[%c0_42] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %c0_43 = arith.constant 0 : index
      %74 = memref.load %of_meanG_buff_6[%c0_43] : memref<1xf32>
      %c0_44 = arith.constant 0 : index
      %75 = memref.load %of_meanG_buff_7[%c0_44] : memref<1xf32>
      %76 = arith.addf %74, %75 : f32
      %c0_45 = arith.constant 0 : index
      %77 = memref.load %of_meanG_buff_8[%c0_45] : memref<1xf32>
      %78 = arith.addf %76, %77 : f32
      %c0_46 = arith.constant 0 : index
      %79 = memref.load %of_meanG_buff_9[%c0_46] : memref<1xf32>
      %80 = arith.addf %78, %79 : f32
      %c0_47 = arith.constant 0 : index
      %81 = memref.load %of_meanG_buff_0[%c0_47] : memref<1xf32>
      %82 = arith.addf %80, %81 : f32
      %c0_48 = arith.constant 0 : index
      %83 = memref.load %of_meanG_buff_1[%c0_48] : memref<1xf32>
      %84 = arith.addf %82, %83 : f32
      %c0_49 = arith.constant 0 : index
      %85 = memref.load %of_meanG_buff_2[%c0_49] : memref<1xf32>
      %86 = arith.addf %84, %85 : f32
      %c0_50 = arith.constant 0 : index
      %87 = memref.load %of_meanG_buff_3[%c0_50] : memref<1xf32>
      %88 = arith.addf %86, %87 : f32
      %c0_51 = arith.constant 0 : index
      %89 = memref.load %of_meanG_buff_4[%c0_51] : memref<1xf32>
      %90 = arith.addf %88, %89 : f32
      %cst_52 = arith.constant 9.000000e+00 : f32
      %91 = arith.divf %90, %cst_52 : f32
      %c0_53 = arith.constant 0 : index
      memref.store %91, %out_buff_0[%c0_53] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %c0_54 = arith.constant 0 : index
      %92 = memref.load %of_meanG_buff_5[%c0_54] : memref<1xf32>
      %c0_55 = arith.constant 0 : index
      %93 = memref.load %of_meanG_buff_6[%c0_55] : memref<1xf32>
      %94 = arith.addf %92, %93 : f32
      %c0_56 = arith.constant 0 : index
      %95 = memref.load %of_meanG_buff_7[%c0_56] : memref<1xf32>
      %96 = arith.addf %94, %95 : f32
      %c0_57 = arith.constant 0 : index
      %97 = memref.load %of_meanG_buff_8[%c0_57] : memref<1xf32>
      %98 = arith.addf %96, %97 : f32
      %c0_58 = arith.constant 0 : index
      %99 = memref.load %of_meanG_buff_9[%c0_58] : memref<1xf32>
      %100 = arith.addf %98, %99 : f32
      %c0_59 = arith.constant 0 : index
      %101 = memref.load %of_meanG_buff_0[%c0_59] : memref<1xf32>
      %102 = arith.addf %100, %101 : f32
      %c0_60 = arith.constant 0 : index
      %103 = memref.load %of_meanG_buff_1[%c0_60] : memref<1xf32>
      %104 = arith.addf %102, %103 : f32
      %c0_61 = arith.constant 0 : index
      %105 = memref.load %of_meanG_buff_2[%c0_61] : memref<1xf32>
      %106 = arith.addf %104, %105 : f32
      %c0_62 = arith.constant 0 : index
      %107 = memref.load %of_meanG_buff_3[%c0_62] : memref<1xf32>
      %108 = arith.addf %106, %107 : f32
      %cst_63 = arith.constant 9.000000e+00 : f32
      %109 = arith.divf %108, %cst_63 : f32
      %c0_64 = arith.constant 0 : index
      memref.store %109, %out_buff_1[%c0_64] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %c0_65 = arith.constant 0 : index
      %110 = memref.load %of_meanG_buff_4[%c0_65] : memref<1xf32>
      %c0_66 = arith.constant 0 : index
      %111 = memref.load %of_meanG_buff_5[%c0_66] : memref<1xf32>
      %112 = arith.addf %110, %111 : f32
      %c0_67 = arith.constant 0 : index
      %113 = memref.load %of_meanG_buff_6[%c0_67] : memref<1xf32>
      %114 = arith.addf %112, %113 : f32
      %c0_68 = arith.constant 0 : index
      %115 = memref.load %of_meanG_buff_7[%c0_68] : memref<1xf32>
      %116 = arith.addf %114, %115 : f32
      %c0_69 = arith.constant 0 : index
      %117 = memref.load %of_meanG_buff_8[%c0_69] : memref<1xf32>
      %118 = arith.addf %116, %117 : f32
      %c0_70 = arith.constant 0 : index
      %119 = memref.load %of_meanG_buff_9[%c0_70] : memref<1xf32>
      %120 = arith.addf %118, %119 : f32
      %c0_71 = arith.constant 0 : index
      %121 = memref.load %of_meanG_buff_0[%c0_71] : memref<1xf32>
      %122 = arith.addf %120, %121 : f32
      %c0_72 = arith.constant 0 : index
      %123 = memref.load %of_meanG_buff_1[%c0_72] : memref<1xf32>
      %124 = arith.addf %122, %123 : f32
      %c0_73 = arith.constant 0 : index
      %125 = memref.load %of_meanG_buff_2[%c0_73] : memref<1xf32>
      %126 = arith.addf %124, %125 : f32
      %cst_74 = arith.constant 9.000000e+00 : f32
      %127 = arith.divf %126, %cst_74 : f32
      %c0_75 = arith.constant 0 : index
      memref.store %127, %out_buff_0[%c0_75] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %c0_76 = arith.constant 0 : index
      %128 = memref.load %of_meanG_buff_3[%c0_76] : memref<1xf32>
      %c0_77 = arith.constant 0 : index
      %129 = memref.load %of_meanG_buff_4[%c0_77] : memref<1xf32>
      %130 = arith.addf %128, %129 : f32
      %c0_78 = arith.constant 0 : index
      %131 = memref.load %of_meanG_buff_5[%c0_78] : memref<1xf32>
      %132 = arith.addf %130, %131 : f32
      %c0_79 = arith.constant 0 : index
      %133 = memref.load %of_meanG_buff_6[%c0_79] : memref<1xf32>
      %134 = arith.addf %132, %133 : f32
      %c0_80 = arith.constant 0 : index
      %135 = memref.load %of_meanG_buff_7[%c0_80] : memref<1xf32>
      %136 = arith.addf %134, %135 : f32
      %c0_81 = arith.constant 0 : index
      %137 = memref.load %of_meanG_buff_8[%c0_81] : memref<1xf32>
      %138 = arith.addf %136, %137 : f32
      %c0_82 = arith.constant 0 : index
      %139 = memref.load %of_meanG_buff_9[%c0_82] : memref<1xf32>
      %140 = arith.addf %138, %139 : f32
      %c0_83 = arith.constant 0 : index
      %141 = memref.load %of_meanG_buff_0[%c0_83] : memref<1xf32>
      %142 = arith.addf %140, %141 : f32
      %c0_84 = arith.constant 0 : index
      %143 = memref.load %of_meanG_buff_1[%c0_84] : memref<1xf32>
      %144 = arith.addf %142, %143 : f32
      %cst_85 = arith.constant 9.000000e+00 : f32
      %145 = arith.divf %144, %cst_85 : f32
      %c0_86 = arith.constant 0 : index
      memref.store %145, %out_buff_1[%c0_86] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %c0_87 = arith.constant 0 : index
      %146 = memref.load %of_meanG_buff_2[%c0_87] : memref<1xf32>
      %c0_88 = arith.constant 0 : index
      %147 = memref.load %of_meanG_buff_3[%c0_88] : memref<1xf32>
      %148 = arith.addf %146, %147 : f32
      %c0_89 = arith.constant 0 : index
      %149 = memref.load %of_meanG_buff_4[%c0_89] : memref<1xf32>
      %150 = arith.addf %148, %149 : f32
      %c0_90 = arith.constant 0 : index
      %151 = memref.load %of_meanG_buff_5[%c0_90] : memref<1xf32>
      %152 = arith.addf %150, %151 : f32
      %c0_91 = arith.constant 0 : index
      %153 = memref.load %of_meanG_buff_6[%c0_91] : memref<1xf32>
      %154 = arith.addf %152, %153 : f32
      %c0_92 = arith.constant 0 : index
      %155 = memref.load %of_meanG_buff_7[%c0_92] : memref<1xf32>
      %156 = arith.addf %154, %155 : f32
      %c0_93 = arith.constant 0 : index
      %157 = memref.load %of_meanG_buff_8[%c0_93] : memref<1xf32>
      %158 = arith.addf %156, %157 : f32
      %c0_94 = arith.constant 0 : index
      %159 = memref.load %of_meanG_buff_9[%c0_94] : memref<1xf32>
      %160 = arith.addf %158, %159 : f32
      %c0_95 = arith.constant 0 : index
      %161 = memref.load %of_meanG_buff_0[%c0_95] : memref<1xf32>
      %162 = arith.addf %160, %161 : f32
      %cst_96 = arith.constant 9.000000e+00 : f32
      %163 = arith.divf %162, %cst_96 : f32
      %c0_97 = arith.constant 0 : index
      memref.store %163, %out_buff_0[%c0_97] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %c0_98 = arith.constant 0 : index
      %164 = memref.load %of_meanG_buff_1[%c0_98] : memref<1xf32>
      %c0_99 = arith.constant 0 : index
      %165 = memref.load %of_meanG_buff_2[%c0_99] : memref<1xf32>
      %166 = arith.addf %164, %165 : f32
      %c0_100 = arith.constant 0 : index
      %167 = memref.load %of_meanG_buff_3[%c0_100] : memref<1xf32>
      %168 = arith.addf %166, %167 : f32
      %c0_101 = arith.constant 0 : index
      %169 = memref.load %of_meanG_buff_4[%c0_101] : memref<1xf32>
      %170 = arith.addf %168, %169 : f32
      %c0_102 = arith.constant 0 : index
      %171 = memref.load %of_meanG_buff_5[%c0_102] : memref<1xf32>
      %172 = arith.addf %170, %171 : f32
      %c0_103 = arith.constant 0 : index
      %173 = memref.load %of_meanG_buff_6[%c0_103] : memref<1xf32>
      %174 = arith.addf %172, %173 : f32
      %c0_104 = arith.constant 0 : index
      %175 = memref.load %of_meanG_buff_7[%c0_104] : memref<1xf32>
      %176 = arith.addf %174, %175 : f32
      %c0_105 = arith.constant 0 : index
      %177 = memref.load %of_meanG_buff_8[%c0_105] : memref<1xf32>
      %178 = arith.addf %176, %177 : f32
      %c0_106 = arith.constant 0 : index
      %179 = memref.load %of_meanG_buff_9[%c0_106] : memref<1xf32>
      %180 = arith.addf %178, %179 : f32
      %cst_107 = arith.constant 9.000000e+00 : f32
      %181 = arith.divf %180, %cst_107 : f32
      %c0_108 = arith.constant 0 : index
      memref.store %181, %out_buff_1[%c0_108] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      %182 = arith.addi %0, %c10 : index
      cf.br ^bb1(%182 : index)
    ^bb3:  // pred: ^bb1
      %c7 = arith.constant 7 : index
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %c0_109 = arith.constant 0 : index
      %183 = memref.load %of_meanG_buff_0[%c0_109] : memref<1xf32>
      %c0_110 = arith.constant 0 : index
      %184 = memref.load %of_meanG_buff_1[%c0_110] : memref<1xf32>
      %185 = arith.addf %183, %184 : f32
      %c0_111 = arith.constant 0 : index
      %186 = memref.load %of_meanG_buff_2[%c0_111] : memref<1xf32>
      %187 = arith.addf %185, %186 : f32
      %c0_112 = arith.constant 0 : index
      %188 = memref.load %of_meanG_buff_3[%c0_112] : memref<1xf32>
      %189 = arith.addf %187, %188 : f32
      %c0_113 = arith.constant 0 : index
      %190 = memref.load %of_meanG_buff_4[%c0_113] : memref<1xf32>
      %191 = arith.addf %189, %190 : f32
      %c0_114 = arith.constant 0 : index
      %192 = memref.load %of_meanG_buff_5[%c0_114] : memref<1xf32>
      %193 = arith.addf %191, %192 : f32
      %c0_115 = arith.constant 0 : index
      %194 = memref.load %of_meanG_buff_6[%c0_115] : memref<1xf32>
      %195 = arith.addf %193, %194 : f32
      %c0_116 = arith.constant 0 : index
      %196 = memref.load %of_meanG_buff_7[%c0_116] : memref<1xf32>
      %197 = arith.addf %195, %196 : f32
      %c0_117 = arith.constant 0 : index
      %198 = memref.load %of_meanG_buff_8[%c0_117] : memref<1xf32>
      %199 = arith.addf %197, %198 : f32
      %cst_118 = arith.constant 9.000000e+00 : f32
      %200 = arith.divf %199, %cst_118 : f32
      %c0_119 = arith.constant 0 : index
      memref.store %200, %out_buff_0[%c0_119] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %c0_120 = arith.constant 0 : index
      %201 = memref.load %of_meanG_buff_9[%c0_120] : memref<1xf32>
      %c0_121 = arith.constant 0 : index
      %202 = memref.load %of_meanG_buff_0[%c0_121] : memref<1xf32>
      %203 = arith.addf %201, %202 : f32
      %c0_122 = arith.constant 0 : index
      %204 = memref.load %of_meanG_buff_1[%c0_122] : memref<1xf32>
      %205 = arith.addf %203, %204 : f32
      %c0_123 = arith.constant 0 : index
      %206 = memref.load %of_meanG_buff_2[%c0_123] : memref<1xf32>
      %207 = arith.addf %205, %206 : f32
      %c0_124 = arith.constant 0 : index
      %208 = memref.load %of_meanG_buff_3[%c0_124] : memref<1xf32>
      %209 = arith.addf %207, %208 : f32
      %c0_125 = arith.constant 0 : index
      %210 = memref.load %of_meanG_buff_4[%c0_125] : memref<1xf32>
      %211 = arith.addf %209, %210 : f32
      %c0_126 = arith.constant 0 : index
      %212 = memref.load %of_meanG_buff_5[%c0_126] : memref<1xf32>
      %213 = arith.addf %211, %212 : f32
      %c0_127 = arith.constant 0 : index
      %214 = memref.load %of_meanG_buff_6[%c0_127] : memref<1xf32>
      %215 = arith.addf %213, %214 : f32
      %c0_128 = arith.constant 0 : index
      %216 = memref.load %of_meanG_buff_7[%c0_128] : memref<1xf32>
      %217 = arith.addf %215, %216 : f32
      %cst_129 = arith.constant 9.000000e+00 : f32
      %218 = arith.divf %217, %cst_129 : f32
      %c0_130 = arith.constant 0 : index
      memref.store %218, %out_buff_1[%c0_130] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %c0_131 = arith.constant 0 : index
      %219 = memref.load %of_meanG_buff_8[%c0_131] : memref<1xf32>
      %c0_132 = arith.constant 0 : index
      %220 = memref.load %of_meanG_buff_9[%c0_132] : memref<1xf32>
      %221 = arith.addf %219, %220 : f32
      %c0_133 = arith.constant 0 : index
      %222 = memref.load %of_meanG_buff_0[%c0_133] : memref<1xf32>
      %223 = arith.addf %221, %222 : f32
      %c0_134 = arith.constant 0 : index
      %224 = memref.load %of_meanG_buff_1[%c0_134] : memref<1xf32>
      %225 = arith.addf %223, %224 : f32
      %c0_135 = arith.constant 0 : index
      %226 = memref.load %of_meanG_buff_2[%c0_135] : memref<1xf32>
      %227 = arith.addf %225, %226 : f32
      %c0_136 = arith.constant 0 : index
      %228 = memref.load %of_meanG_buff_3[%c0_136] : memref<1xf32>
      %229 = arith.addf %227, %228 : f32
      %c0_137 = arith.constant 0 : index
      %230 = memref.load %of_meanG_buff_4[%c0_137] : memref<1xf32>
      %231 = arith.addf %229, %230 : f32
      %c0_138 = arith.constant 0 : index
      %232 = memref.load %of_meanG_buff_5[%c0_138] : memref<1xf32>
      %233 = arith.addf %231, %232 : f32
      %c0_139 = arith.constant 0 : index
      %234 = memref.load %of_meanG_buff_6[%c0_139] : memref<1xf32>
      %235 = arith.addf %233, %234 : f32
      %cst_140 = arith.constant 9.000000e+00 : f32
      %236 = arith.divf %235, %cst_140 : f32
      %c0_141 = arith.constant 0 : index
      memref.store %236, %out_buff_0[%c0_141] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %c0_142 = arith.constant 0 : index
      %237 = memref.load %of_meanG_buff_7[%c0_142] : memref<1xf32>
      %c0_143 = arith.constant 0 : index
      %238 = memref.load %of_meanG_buff_8[%c0_143] : memref<1xf32>
      %239 = arith.addf %237, %238 : f32
      %c0_144 = arith.constant 0 : index
      %240 = memref.load %of_meanG_buff_9[%c0_144] : memref<1xf32>
      %241 = arith.addf %239, %240 : f32
      %c0_145 = arith.constant 0 : index
      %242 = memref.load %of_meanG_buff_0[%c0_145] : memref<1xf32>
      %243 = arith.addf %241, %242 : f32
      %c0_146 = arith.constant 0 : index
      %244 = memref.load %of_meanG_buff_1[%c0_146] : memref<1xf32>
      %245 = arith.addf %243, %244 : f32
      %c0_147 = arith.constant 0 : index
      %246 = memref.load %of_meanG_buff_2[%c0_147] : memref<1xf32>
      %247 = arith.addf %245, %246 : f32
      %c0_148 = arith.constant 0 : index
      %248 = memref.load %of_meanG_buff_3[%c0_148] : memref<1xf32>
      %249 = arith.addf %247, %248 : f32
      %c0_149 = arith.constant 0 : index
      %250 = memref.load %of_meanG_buff_4[%c0_149] : memref<1xf32>
      %251 = arith.addf %249, %250 : f32
      %c0_150 = arith.constant 0 : index
      %252 = memref.load %of_meanG_buff_5[%c0_150] : memref<1xf32>
      %253 = arith.addf %251, %252 : f32
      %cst_151 = arith.constant 9.000000e+00 : f32
      %254 = arith.divf %253, %cst_151 : f32
      %c0_152 = arith.constant 0 : index
      memref.store %254, %out_buff_1[%c0_152] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %c0_153 = arith.constant 0 : index
      %255 = memref.load %of_meanG_buff_6[%c0_153] : memref<1xf32>
      %c0_154 = arith.constant 0 : index
      %256 = memref.load %of_meanG_buff_7[%c0_154] : memref<1xf32>
      %257 = arith.addf %255, %256 : f32
      %c0_155 = arith.constant 0 : index
      %258 = memref.load %of_meanG_buff_8[%c0_155] : memref<1xf32>
      %259 = arith.addf %257, %258 : f32
      %c0_156 = arith.constant 0 : index
      %260 = memref.load %of_meanG_buff_9[%c0_156] : memref<1xf32>
      %261 = arith.addf %259, %260 : f32
      %c0_157 = arith.constant 0 : index
      %262 = memref.load %of_meanG_buff_0[%c0_157] : memref<1xf32>
      %263 = arith.addf %261, %262 : f32
      %c0_158 = arith.constant 0 : index
      %264 = memref.load %of_meanG_buff_1[%c0_158] : memref<1xf32>
      %265 = arith.addf %263, %264 : f32
      %c0_159 = arith.constant 0 : index
      %266 = memref.load %of_meanG_buff_2[%c0_159] : memref<1xf32>
      %267 = arith.addf %265, %266 : f32
      %c0_160 = arith.constant 0 : index
      %268 = memref.load %of_meanG_buff_3[%c0_160] : memref<1xf32>
      %269 = arith.addf %267, %268 : f32
      %c0_161 = arith.constant 0 : index
      %270 = memref.load %of_meanG_buff_4[%c0_161] : memref<1xf32>
      %271 = arith.addf %269, %270 : f32
      %cst_162 = arith.constant 9.000000e+00 : f32
      %272 = arith.divf %271, %cst_162 : f32
      %c0_163 = arith.constant 0 : index
      memref.store %272, %out_buff_0[%c0_163] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %c0_164 = arith.constant 0 : index
      %273 = memref.load %of_meanG_buff_5[%c0_164] : memref<1xf32>
      %c0_165 = arith.constant 0 : index
      %274 = memref.load %of_meanG_buff_6[%c0_165] : memref<1xf32>
      %275 = arith.addf %273, %274 : f32
      %c0_166 = arith.constant 0 : index
      %276 = memref.load %of_meanG_buff_7[%c0_166] : memref<1xf32>
      %277 = arith.addf %275, %276 : f32
      %c0_167 = arith.constant 0 : index
      %278 = memref.load %of_meanG_buff_8[%c0_167] : memref<1xf32>
      %279 = arith.addf %277, %278 : f32
      %c0_168 = arith.constant 0 : index
      %280 = memref.load %of_meanG_buff_9[%c0_168] : memref<1xf32>
      %281 = arith.addf %279, %280 : f32
      %c0_169 = arith.constant 0 : index
      %282 = memref.load %of_meanG_buff_0[%c0_169] : memref<1xf32>
      %283 = arith.addf %281, %282 : f32
      %c0_170 = arith.constant 0 : index
      %284 = memref.load %of_meanG_buff_1[%c0_170] : memref<1xf32>
      %285 = arith.addf %283, %284 : f32
      %c0_171 = arith.constant 0 : index
      %286 = memref.load %of_meanG_buff_2[%c0_171] : memref<1xf32>
      %287 = arith.addf %285, %286 : f32
      %c0_172 = arith.constant 0 : index
      %288 = memref.load %of_meanG_buff_3[%c0_172] : memref<1xf32>
      %289 = arith.addf %287, %288 : f32
      %cst_173 = arith.constant 9.000000e+00 : f32
      %290 = arith.divf %289, %cst_173 : f32
      %c0_174 = arith.constant 0 : index
      memref.store %290, %out_buff_1[%c0_174] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.use_lock(%of_meanG_cons_lock, AcquireGreaterEqual, 9)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %c0_175 = arith.constant 0 : index
      %291 = memref.load %of_meanG_buff_4[%c0_175] : memref<1xf32>
      %c0_176 = arith.constant 0 : index
      %292 = memref.load %of_meanG_buff_5[%c0_176] : memref<1xf32>
      %293 = arith.addf %291, %292 : f32
      %c0_177 = arith.constant 0 : index
      %294 = memref.load %of_meanG_buff_6[%c0_177] : memref<1xf32>
      %295 = arith.addf %293, %294 : f32
      %c0_178 = arith.constant 0 : index
      %296 = memref.load %of_meanG_buff_7[%c0_178] : memref<1xf32>
      %297 = arith.addf %295, %296 : f32
      %c0_179 = arith.constant 0 : index
      %298 = memref.load %of_meanG_buff_8[%c0_179] : memref<1xf32>
      %299 = arith.addf %297, %298 : f32
      %c0_180 = arith.constant 0 : index
      %300 = memref.load %of_meanG_buff_9[%c0_180] : memref<1xf32>
      %301 = arith.addf %299, %300 : f32
      %c0_181 = arith.constant 0 : index
      %302 = memref.load %of_meanG_buff_0[%c0_181] : memref<1xf32>
      %303 = arith.addf %301, %302 : f32
      %c0_182 = arith.constant 0 : index
      %304 = memref.load %of_meanG_buff_1[%c0_182] : memref<1xf32>
      %305 = arith.addf %303, %304 : f32
      %c0_183 = arith.constant 0 : index
      %306 = memref.load %of_meanG_buff_2[%c0_183] : memref<1xf32>
      %307 = arith.addf %305, %306 : f32
      %cst_184 = arith.constant 9.000000e+00 : f32
      %308 = arith.divf %307, %cst_184 : f32
      %c0_185 = arith.constant 0 : index
      memref.store %308, %out_buff_0[%c0_185] : memref<1xf32>
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%of_meanG_prod_lock, Release, 9)
      aie.end
    } {link_with = "passthrough.o"}
    aiex.runtime_sequence(%arg0: memref<1xf32>, %arg1: memref<9216xf32>, %arg2: memref<27648xf32>, %arg3: memref<1xf32>, %arg4: memref<9216xf32>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 1][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<1xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 9216][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<9216xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 27648][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<27648xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg3[0, 0, 0, 0][1, 1, 1, 196608][0, 0, 0, 1]) {id = 4 : i64, metadata = @in3} : memref<1xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg4[0, 0, 0, 0][1, 1, 1, 1][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<9216xf32>
      aiex.npu.dma_wait {symbol = @out}
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

