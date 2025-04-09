module {
  aie.device(npu1_4col) {
    memref.global "public" @out_cons : memref<32xbf16>
    memref.global "public" @out : memref<32xbf16>
    memref.global "public" @of_sub2mean : memref<4608xbf16>
    memref.global "public" @of_reduc2SubC : memref<4608xbf16>
    memref.global "public" @of_reduc2SubR_cons : memref<4608xbf16>
    memref.global "public" @of_reduc2SubR : memref<4608xbf16>
    memref.global "public" @of_reduceC : memref<4608xbf16>
    memref.global "public" @of_reduceR : memref<4608xbf16>
    memref.global "public" @of_multTrigC : memref<4608xbf16>
    memref.global "public" @of_multTrigR : memref<4608xbf16>
    memref.global "public" @of_trigFifo_0_cons : memref<4608xbf16>
    memref.global "public" @of_trigFifo_1_cons : memref<4608xbf16>
    memref.global "public" @of_trigFifo : memref<4608xbf16>
    memref.global "public" @of_scaleAddBL : memref<4608xbf16>
    memref.global "public" @of_addUV : memref<4608xbf16>
    memref.global "public" @of_addW_cons : memref<4608xbf16>
    memref.global "public" @of_addW : memref<4608xbf16>
    memref.global "public" @of_addV_cons : memref<4608xbf16>
    memref.global "public" @of_addV : memref<4608xbf16>
    memref.global "public" @of_addU : memref<4608xbf16>
    memref.global "public" @of_in_visC_cons : memref<4608xbf16>
    memref.global "public" @of_in_visC : memref<4608xbf16>
    memref.global "public" @of_in_visR_cons : memref<4608xbf16>
    memref.global "public" @of_in_visR : memref<4608xbf16>
    memref.global "public" @of_in_n_cons : memref<32xbf16>
    memref.global "public" @of_in_n : memref<32xbf16>
    memref.global "public" @of_in_m_cons : memref<32xbf16>
    memref.global "public" @of_in_m : memref<32xbf16>
    memref.global "public" @of_in_l_cons : memref<32xbf16>
    memref.global "public" @of_in_l : memref<32xbf16>
    memref.global "public" @of_in_w_cons : memref<4608xbf16>
    memref.global "public" @of_in_w : memref<4608xbf16>
    memref.global "public" @of_in_v_cons : memref<4608xbf16>
    memref.global "public" @of_in_v : memref<4608xbf16>
    memref.global "public" @of_in_u_cons : memref<4608xbf16>
    memref.global "public" @of_in_u : memref<4608xbf16>
    memref.global "public" @in3_cons : memref<2xbf16>
    memref.global "public" @in3 : memref<2xbf16>
    memref.global "public" @in2_cons : memref<9216xbf16>
    memref.global "public" @in2 : memref<9216xbf16>
    memref.global "public" @in1_cons : memref<13824xbf16>
    memref.global "public" @in1 : memref<13824xbf16>
    memref.global "public" @in0_cons : memref<96xbf16>
    memref.global "public" @in0 : memref<96xbf16>
    func.func private @passthrough(memref<4608xbf16>, memref<4608xbf16>, i32)
    func.func private @scale(memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32)
    func.func private @add_kernel(memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32)
    func.func private @scale_single(memref<4608xbf16>, memref<2xbf16>, memref<4608xbf16>, i32)
    func.func private @cosine(memref<4608xbf16>, memref<4608xbf16>, i32)
    func.func private @sine(memref<4608xbf16>, memref<4608xbf16>, i32)
    func.func private @mul_kernel(memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32)
    func.func private @sub_kernel(memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32)
    func.func private @mean(memref<4608xbf16>, memref<32xbf16>, i32, i32)
    %shim_noc_tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_0_1 = aie.tile(0, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_0_2 = aie.tile(0, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_0_3 = aie.tile(0, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_0_4 = aie.tile(0, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_0_5 = aie.tile(0, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %shim_noc_tile_1_0 = aie.tile(1, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_1_1 = aie.tile(1, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_1_2 = aie.tile(1, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_1_3 = aie.tile(1, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_1_4 = aie.tile(1, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_1_5 = aie.tile(1, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %shim_noc_tile_2_0 = aie.tile(2, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_2_1 = aie.tile(2, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_2_2 = aie.tile(2, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_2_3 = aie.tile(2, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_2_4 = aie.tile(2, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_2_5 = aie.tile(2, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %shim_noc_tile_3_0 = aie.tile(3, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_3_1 = aie.tile(3, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_3_2 = aie.tile(3, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_3_3 = aie.tile(3, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_3_4 = aie.tile(3, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_3_5 = aie.tile(3, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %out_cons_prod_lock_0 = aie.lock(%shim_noc_tile_2_0, 2) {init = 1 : i32, sym_name = "out_cons_prod_lock_0"}
    %out_cons_cons_lock_0 = aie.lock(%shim_noc_tile_2_0, 3) {init = 0 : i32, sym_name = "out_cons_cons_lock_0"}
    %out_buff_0 = aie.buffer(%tile_2_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out_buff_0"} : memref<32xbf16> 
    %out_buff_1 = aie.buffer(%tile_2_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "out_buff_1"} : memref<32xbf16> 
    %out_prod_lock_0 = aie.lock(%tile_2_2, 2) {init = 2 : i32, sym_name = "out_prod_lock_0"}
    %out_cons_lock_0 = aie.lock(%tile_2_2, 3) {init = 0 : i32, sym_name = "out_cons_lock_0"}
    %of_sub2mean_buff_0 = aie.buffer(%tile_2_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_sub2mean_buff_0"} : memref<4608xbf16> 
    %of_sub2mean_prod_lock_0 = aie.lock(%tile_2_2, 0) {init = 1 : i32, sym_name = "of_sub2mean_prod_lock_0"}
    %of_sub2mean_cons_lock_0 = aie.lock(%tile_2_2, 1) {init = 0 : i32, sym_name = "of_sub2mean_cons_lock_0"}
    %of_reduc2SubC_buff_0 = aie.buffer(%tile_3_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_reduc2SubC_buff_0"} : memref<4608xbf16> 
    %of_reduc2SubC_prod_lock_0 = aie.lock(%tile_3_3, 0) {init = 1 : i32, sym_name = "of_reduc2SubC_prod_lock_0"}
    %of_reduc2SubC_cons_lock_0 = aie.lock(%tile_3_3, 1) {init = 0 : i32, sym_name = "of_reduc2SubC_cons_lock_0"}
    %of_reduc2SubR_cons_buff_0 = aie.buffer(%tile_3_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_reduc2SubR_cons_buff_0"} : memref<4608xbf16> 
    %of_reduc2SubR_cons_prod_lock_0 = aie.lock(%tile_3_2, 0) {init = 1 : i32, sym_name = "of_reduc2SubR_cons_prod_lock_0"}
    %of_reduc2SubR_cons_cons_lock_0 = aie.lock(%tile_3_2, 1) {init = 0 : i32, sym_name = "of_reduc2SubR_cons_cons_lock_0"}
    %of_reduc2SubR_buff_0 = aie.buffer(%tile_2_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_reduc2SubR_buff_0"} : memref<4608xbf16> 
    %of_reduc2SubR_prod_lock_0 = aie.lock(%tile_2_3, 0) {init = 1 : i32, sym_name = "of_reduc2SubR_prod_lock_0"}
    %of_reduc2SubR_cons_lock_0 = aie.lock(%tile_2_3, 1) {init = 0 : i32, sym_name = "of_reduc2SubR_cons_lock_0"}
    %of_reduceC_buff_0 = aie.buffer(%tile_3_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_reduceC_buff_0"} : memref<4608xbf16> 
    %of_reduceC_buff_1 = aie.buffer(%tile_3_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_reduceC_buff_1"} : memref<4608xbf16> 
    %of_reduceC_prod_lock_0 = aie.lock(%tile_3_4, 2) {init = 2 : i32, sym_name = "of_reduceC_prod_lock_0"}
    %of_reduceC_cons_lock_0 = aie.lock(%tile_3_4, 3) {init = 0 : i32, sym_name = "of_reduceC_cons_lock_0"}
    %of_reduceR_buff_0 = aie.buffer(%tile_2_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_reduceR_buff_0"} : memref<4608xbf16> 
    %of_reduceR_buff_1 = aie.buffer(%tile_2_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_reduceR_buff_1"} : memref<4608xbf16> 
    %of_reduceR_prod_lock_0 = aie.lock(%tile_2_4, 2) {init = 2 : i32, sym_name = "of_reduceR_prod_lock_0"}
    %of_reduceR_cons_lock_0 = aie.lock(%tile_2_4, 3) {init = 0 : i32, sym_name = "of_reduceR_cons_lock_0"}
    %of_multTrigC_buff_0 = aie.buffer(%tile_3_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_multTrigC_buff_0"} : memref<4608xbf16> 
    %of_multTrigC_prod_lock_0 = aie.lock(%tile_3_5, 2) {init = 1 : i32, sym_name = "of_multTrigC_prod_lock_0"}
    %of_multTrigC_cons_lock_0 = aie.lock(%tile_3_5, 3) {init = 0 : i32, sym_name = "of_multTrigC_cons_lock_0"}
    %of_multTrigR_buff_0 = aie.buffer(%tile_2_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_multTrigR_buff_0"} : memref<4608xbf16> 
    %of_multTrigR_prod_lock_0 = aie.lock(%tile_2_5, 2) {init = 1 : i32, sym_name = "of_multTrigR_prod_lock_0"}
    %of_multTrigR_cons_lock_0 = aie.lock(%tile_2_5, 3) {init = 0 : i32, sym_name = "of_multTrigR_cons_lock_0"}
    %of_trigFifo_0_cons_buff_0 = aie.buffer(%tile_2_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_trigFifo_0_cons_buff_0"} : memref<4608xbf16> 
    %of_trigFifo_0_cons_prod_lock_0 = aie.lock(%tile_2_5, 0) {init = 1 : i32, sym_name = "of_trigFifo_0_cons_prod_lock_0"}
    %of_trigFifo_0_cons_cons_lock_0 = aie.lock(%tile_2_5, 1) {init = 0 : i32, sym_name = "of_trigFifo_0_cons_cons_lock_0"}
    %of_trigFifo_1_cons_buff_0 = aie.buffer(%tile_3_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_trigFifo_1_cons_buff_0"} : memref<4608xbf16> 
    %of_trigFifo_1_cons_prod_lock_0 = aie.lock(%tile_3_5, 0) {init = 1 : i32, sym_name = "of_trigFifo_1_cons_prod_lock_0"}
    %of_trigFifo_1_cons_cons_lock_0 = aie.lock(%tile_3_5, 1) {init = 0 : i32, sym_name = "of_trigFifo_1_cons_cons_lock_0"}
    %of_trigFifo_buff_0 = aie.buffer(%tile_1_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_trigFifo_buff_0"} : memref<4608xbf16> 
    %of_trigFifo_prod_lock_0 = aie.lock(%tile_1_3, 2) {init = 1 : i32, sym_name = "of_trigFifo_prod_lock_0"}
    %of_trigFifo_cons_lock_0 = aie.lock(%tile_1_3, 3) {init = 0 : i32, sym_name = "of_trigFifo_cons_lock_0"}
    %of_scaleAddBL_buff_0 = aie.buffer(%tile_1_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_scaleAddBL_buff_0"} : memref<4608xbf16> 
    %of_scaleAddBL_prod_lock_0 = aie.lock(%tile_1_4, 2) {init = 1 : i32, sym_name = "of_scaleAddBL_prod_lock_0"}
    %of_scaleAddBL_cons_lock_0 = aie.lock(%tile_1_4, 3) {init = 0 : i32, sym_name = "of_scaleAddBL_cons_lock_0"}
    %of_addUV_buff_0 = aie.buffer(%tile_1_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_addUV_buff_0"} : memref<4608xbf16> 
    %of_addUV_prod_lock_0 = aie.lock(%tile_1_5, 2) {init = 1 : i32, sym_name = "of_addUV_prod_lock_0"}
    %of_addUV_cons_lock_0 = aie.lock(%tile_1_5, 3) {init = 0 : i32, sym_name = "of_addUV_cons_lock_0"}
    %of_addW_cons_buff_0 = aie.buffer(%tile_1_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_addW_cons_buff_0"} : memref<4608xbf16> 
    %of_addW_cons_buff_1 = aie.buffer(%tile_1_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_addW_cons_buff_1"} : memref<4608xbf16> 
    %of_addW_cons_prod_lock_0 = aie.lock(%tile_1_4, 0) {init = 2 : i32, sym_name = "of_addW_cons_prod_lock_0"}
    %of_addW_cons_cons_lock_0 = aie.lock(%tile_1_4, 1) {init = 0 : i32, sym_name = "of_addW_cons_cons_lock_0"}
    %of_addW_buff_0 = aie.buffer(%tile_0_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_addW_buff_0"} : memref<4608xbf16> 
    %of_addW_prod_lock_0 = aie.lock(%tile_0_3, 4) {init = 1 : i32, sym_name = "of_addW_prod_lock_0"}
    %of_addW_cons_lock_0 = aie.lock(%tile_0_3, 5) {init = 0 : i32, sym_name = "of_addW_cons_lock_0"}
    %of_addV_cons_buff_0 = aie.buffer(%tile_1_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_addV_cons_buff_0"} : memref<4608xbf16> 
    %of_addV_cons_prod_lock_0 = aie.lock(%tile_1_5, 0) {init = 1 : i32, sym_name = "of_addV_cons_prod_lock_0"}
    %of_addV_cons_cons_lock_0 = aie.lock(%tile_1_5, 1) {init = 0 : i32, sym_name = "of_addV_cons_cons_lock_0"}
    %of_addV_buff_0 = aie.buffer(%tile_0_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_addV_buff_0"} : memref<4608xbf16> 
    %of_addV_prod_lock_0 = aie.lock(%tile_0_4, 4) {init = 1 : i32, sym_name = "of_addV_prod_lock_0"}
    %of_addV_cons_lock_0 = aie.lock(%tile_0_4, 5) {init = 0 : i32, sym_name = "of_addV_cons_lock_0"}
    %of_addU_buff_0 = aie.buffer(%tile_0_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_addU_buff_0"} : memref<4608xbf16> 
    %of_addU_prod_lock_0 = aie.lock(%tile_0_5, 4) {init = 1 : i32, sym_name = "of_addU_prod_lock_0"}
    %of_addU_cons_lock_0 = aie.lock(%tile_0_5, 5) {init = 0 : i32, sym_name = "of_addU_cons_lock_0"}
    %of_in_visC_cons_buff_0 = aie.buffer(%tile_3_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_visC_cons_buff_0"} : memref<4608xbf16> 
    %of_in_visC_cons_buff_1 = aie.buffer(%tile_3_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_visC_cons_buff_1"} : memref<4608xbf16> 
    %of_in_visC_cons_prod_lock_0 = aie.lock(%tile_3_4, 0) {init = 2 : i32, sym_name = "of_in_visC_cons_prod_lock_0"}
    %of_in_visC_cons_cons_lock_0 = aie.lock(%tile_3_4, 1) {init = 0 : i32, sym_name = "of_in_visC_cons_cons_lock_0"}
    %of_in_visR_cons_buff_0 = aie.buffer(%tile_2_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_visR_cons_buff_0"} : memref<4608xbf16> 
    %of_in_visR_cons_buff_1 = aie.buffer(%tile_2_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_visR_cons_buff_1"} : memref<4608xbf16> 
    %of_in_visR_cons_prod_lock_0 = aie.lock(%tile_2_4, 0) {init = 2 : i32, sym_name = "of_in_visR_cons_prod_lock_0"}
    %of_in_visR_cons_cons_lock_0 = aie.lock(%tile_2_4, 1) {init = 0 : i32, sym_name = "of_in_visR_cons_cons_lock_0"}
    %of_in_n_cons_buff_0 = aie.buffer(%tile_0_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_n_cons_buff_0"} : memref<32xbf16> 
    %of_in_n_cons_prod_lock_0 = aie.lock(%tile_0_3, 2) {init = 1 : i32, sym_name = "of_in_n_cons_prod_lock_0"}
    %of_in_n_cons_cons_lock_0 = aie.lock(%tile_0_3, 3) {init = 0 : i32, sym_name = "of_in_n_cons_cons_lock_0"}
    %of_in_m_cons_buff_0 = aie.buffer(%tile_0_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_m_cons_buff_0"} : memref<32xbf16> 
    %of_in_m_cons_prod_lock_0 = aie.lock(%tile_0_4, 2) {init = 1 : i32, sym_name = "of_in_m_cons_prod_lock_0"}
    %of_in_m_cons_cons_lock_0 = aie.lock(%tile_0_4, 3) {init = 0 : i32, sym_name = "of_in_m_cons_cons_lock_0"}
    %of_in_l_cons_buff_0 = aie.buffer(%tile_0_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_l_cons_buff_0"} : memref<32xbf16> 
    %of_in_l_cons_prod_lock_0 = aie.lock(%tile_0_5, 2) {init = 1 : i32, sym_name = "of_in_l_cons_prod_lock_0"}
    %of_in_l_cons_cons_lock_0 = aie.lock(%tile_0_5, 3) {init = 0 : i32, sym_name = "of_in_l_cons_cons_lock_0"}
    %of_in_w_cons_buff_0 = aie.buffer(%tile_0_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_w_cons_buff_0"} : memref<4608xbf16> 
    %of_in_w_cons_buff_1 = aie.buffer(%tile_0_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_w_cons_buff_1"} : memref<4608xbf16> 
    %of_in_w_cons_prod_lock_0 = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "of_in_w_cons_prod_lock_0"}
    %of_in_w_cons_cons_lock_0 = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "of_in_w_cons_cons_lock_0"}
    %of_in_v_cons_buff_0 = aie.buffer(%tile_0_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_v_cons_buff_0"} : memref<4608xbf16> 
    %of_in_v_cons_buff_1 = aie.buffer(%tile_0_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_v_cons_buff_1"} : memref<4608xbf16> 
    %of_in_v_cons_prod_lock_0 = aie.lock(%tile_0_4, 0) {init = 2 : i32, sym_name = "of_in_v_cons_prod_lock_0"}
    %of_in_v_cons_cons_lock_0 = aie.lock(%tile_0_4, 1) {init = 0 : i32, sym_name = "of_in_v_cons_cons_lock_0"}
    %of_in_u_cons_buff_0 = aie.buffer(%tile_0_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_u_cons_buff_0"} : memref<4608xbf16> 
    %of_in_u_cons_buff_1 = aie.buffer(%tile_0_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_u_cons_buff_1"} : memref<4608xbf16> 
    %of_in_u_cons_prod_lock_0 = aie.lock(%tile_0_5, 0) {init = 2 : i32, sym_name = "of_in_u_cons_prod_lock_0"}
    %of_in_u_cons_cons_lock_0 = aie.lock(%tile_0_5, 1) {init = 0 : i32, sym_name = "of_in_u_cons_cons_lock_0"}
    %in3_cons_buff_0 = aie.buffer(%tile_1_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "in3_cons_buff_0"} : memref<2xbf16> 
    %in3_cons_buff_1 = aie.buffer(%tile_1_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in3_cons_buff_1"} : memref<2xbf16> 
    %in3_cons_prod_lock_0 = aie.lock(%tile_1_3, 0) {init = 2 : i32, sym_name = "in3_cons_prod_lock_0"}
    %in3_cons_cons_lock_0 = aie.lock(%tile_1_3, 1) {init = 0 : i32, sym_name = "in3_cons_cons_lock_0"}
    %in3_prod_lock_0 = aie.lock(%shim_noc_tile_3_0, 0) {init = 1 : i32, sym_name = "in3_prod_lock_0"}
    %in3_cons_lock_0 = aie.lock(%shim_noc_tile_3_0, 1) {init = 0 : i32, sym_name = "in3_cons_lock_0"}
    %in2_cons_buff_0 = aie.buffer(%mem_tile_2_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in2_cons_buff_0"} : memref<9216xbf16> 
    %in2_cons_buff_1 = aie.buffer(%mem_tile_2_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "in2_cons_buff_1"} : memref<9216xbf16> 
    %in2_cons_prod_lock_0 = aie.lock(%mem_tile_2_1, 0) {init = 2 : i32, sym_name = "in2_cons_prod_lock_0"}
    %in2_cons_cons_lock_0 = aie.lock(%mem_tile_2_1, 1) {init = 0 : i32, sym_name = "in2_cons_cons_lock_0"}
    %in2_cons_prod_lock_1 = aie.lock(%mem_tile_2_1, 2) {init = 2 : i32, sym_name = "in2_cons_prod_lock_1"}
    %in2_cons_cons_lock_1 = aie.lock(%mem_tile_2_1, 3) {init = 0 : i32, sym_name = "in2_cons_cons_lock_1"}
    %in2_prod_lock_0 = aie.lock(%shim_noc_tile_2_0, 0) {init = 1 : i32, sym_name = "in2_prod_lock_0"}
    %in2_cons_lock_0 = aie.lock(%shim_noc_tile_2_0, 1) {init = 0 : i32, sym_name = "in2_cons_lock_0"}
    %in1_cons_buff_0 = aie.buffer(%mem_tile_1_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in1_cons_buff_0"} : memref<13824xbf16> 
    %in1_cons_buff_1 = aie.buffer(%mem_tile_1_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "in1_cons_buff_1"} : memref<13824xbf16> 
    %in1_cons_prod_lock_0 = aie.lock(%mem_tile_1_1, 0) {init = 2 : i32, sym_name = "in1_cons_prod_lock_0"}
    %in1_cons_cons_lock_0 = aie.lock(%mem_tile_1_1, 1) {init = 0 : i32, sym_name = "in1_cons_cons_lock_0"}
    %in1_cons_prod_lock_1 = aie.lock(%mem_tile_1_1, 2) {init = 2 : i32, sym_name = "in1_cons_prod_lock_1"}
    %in1_cons_cons_lock_1 = aie.lock(%mem_tile_1_1, 3) {init = 0 : i32, sym_name = "in1_cons_cons_lock_1"}
    %in1_cons_prod_lock_2 = aie.lock(%mem_tile_1_1, 4) {init = 2 : i32, sym_name = "in1_cons_prod_lock_2"}
    %in1_cons_cons_lock_2 = aie.lock(%mem_tile_1_1, 5) {init = 0 : i32, sym_name = "in1_cons_cons_lock_2"}
    %in1_prod_lock_0 = aie.lock(%shim_noc_tile_1_0, 0) {init = 1 : i32, sym_name = "in1_prod_lock_0"}
    %in1_cons_lock_0 = aie.lock(%shim_noc_tile_1_0, 1) {init = 0 : i32, sym_name = "in1_cons_lock_0"}
    %in0_cons_buff_0 = aie.buffer(%mem_tile_3_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in0_cons_buff_0"} : memref<96xbf16> 
    %in0_cons_buff_1 = aie.buffer(%mem_tile_3_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "in0_cons_buff_1"} : memref<96xbf16> 
    %in0_cons_prod_lock_0 = aie.lock(%mem_tile_3_1, 0) {init = 2 : i32, sym_name = "in0_cons_prod_lock_0"}
    %in0_cons_cons_lock_0 = aie.lock(%mem_tile_3_1, 1) {init = 0 : i32, sym_name = "in0_cons_cons_lock_0"}
    %in0_cons_prod_lock_1 = aie.lock(%mem_tile_3_1, 2) {init = 2 : i32, sym_name = "in0_cons_prod_lock_1"}
    %in0_cons_cons_lock_1 = aie.lock(%mem_tile_3_1, 3) {init = 0 : i32, sym_name = "in0_cons_cons_lock_1"}
    %in0_cons_prod_lock_2 = aie.lock(%mem_tile_3_1, 4) {init = 2 : i32, sym_name = "in0_cons_prod_lock_2"}
    %in0_cons_cons_lock_2 = aie.lock(%mem_tile_3_1, 5) {init = 0 : i32, sym_name = "in0_cons_cons_lock_2"}
    %in0_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 0) {init = 1 : i32, sym_name = "in0_prod_lock_0"}
    %in0_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 1) {init = 0 : i32, sym_name = "in0_cons_lock_0"}
    aie.flow(%shim_noc_tile_0_0, DMA : 0, %mem_tile_3_1, DMA : 0)
    aie.flow(%shim_noc_tile_1_0, DMA : 0, %mem_tile_1_1, DMA : 0)
    aie.flow(%shim_noc_tile_2_0, DMA : 0, %mem_tile_2_1, DMA : 0)
    aie.flow(%shim_noc_tile_3_0, DMA : 0, %tile_1_3, DMA : 0)
    aie.flow(%mem_tile_1_1, DMA : 0, %tile_0_5, DMA : 0)
    aie.flow(%mem_tile_1_1, DMA : 1, %tile_0_4, DMA : 0)
    aie.flow(%mem_tile_1_1, DMA : 2, %tile_0_3, DMA : 0)
    aie.flow(%mem_tile_3_1, DMA : 0, %tile_0_5, DMA : 1)
    aie.flow(%mem_tile_3_1, DMA : 1, %tile_0_4, DMA : 1)
    aie.flow(%mem_tile_3_1, DMA : 2, %tile_0_3, DMA : 1)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_2_4, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 1, %tile_3_4, DMA : 0)
    aie.flow(%tile_0_4, DMA : 0, %tile_1_5, DMA : 0)
    aie.flow(%tile_0_3, DMA : 0, %tile_1_4, DMA : 0)
    aie.flow(%tile_1_3, DMA : 0, %tile_3_5, DMA : 0)
    aie.flow(%tile_1_3, DMA : 0, %tile_2_5, DMA : 0)
    aie.flow(%tile_2_3, DMA : 0, %tile_3_2, DMA : 0)
    aie.flow(%tile_2_2, DMA : 0, %shim_noc_tile_2_0, DMA : 0)
    %core_0_5 = aie.core(%tile_0_5) {
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
      aie.use_lock(%of_in_u_cons_cons_lock_0, AcquireGreaterEqual, 2)
      %c0_0 = arith.constant 0 : index
      %c512 = arith.constant 512 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c512 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_in_l_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      %c0_i32 = arith.constant 0 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32, %c0_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_2 = arith.constant 4608 : i32
      %c0_i32_3 = arith.constant 0 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_2, %c0_i32_3) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_4 = arith.constant 4608 : i32
      %c1_i32 = arith.constant 1 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_4, %c1_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_5 = arith.constant 4608 : i32
      %c1_i32_6 = arith.constant 1 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_5, %c1_i32_6) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_7 = arith.constant 4608 : i32
      %c2_i32 = arith.constant 2 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_7, %c2_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_8 = arith.constant 4608 : i32
      %c2_i32_9 = arith.constant 2 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_8, %c2_i32_9) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_10 = arith.constant 4608 : i32
      %c3_i32 = arith.constant 3 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_10, %c3_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_11 = arith.constant 4608 : i32
      %c3_i32_12 = arith.constant 3 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_11, %c3_i32_12) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_13 = arith.constant 4608 : i32
      %c4_i32 = arith.constant 4 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_13, %c4_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_14 = arith.constant 4608 : i32
      %c4_i32_15 = arith.constant 4 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_14, %c4_i32_15) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_16 = arith.constant 4608 : i32
      %c5_i32 = arith.constant 5 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_16, %c5_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_17 = arith.constant 4608 : i32
      %c5_i32_18 = arith.constant 5 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_17, %c5_i32_18) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_19 = arith.constant 4608 : i32
      %c6_i32 = arith.constant 6 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_19, %c6_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_20 = arith.constant 4608 : i32
      %c6_i32_21 = arith.constant 6 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_20, %c6_i32_21) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_22 = arith.constant 4608 : i32
      %c7_i32 = arith.constant 7 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_22, %c7_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_23 = arith.constant 4608 : i32
      %c7_i32_24 = arith.constant 7 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_23, %c7_i32_24) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_25 = arith.constant 4608 : i32
      %c8_i32 = arith.constant 8 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_25, %c8_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_26 = arith.constant 4608 : i32
      %c8_i32_27 = arith.constant 8 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_26, %c8_i32_27) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_28 = arith.constant 4608 : i32
      %c9_i32 = arith.constant 9 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_28, %c9_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_29 = arith.constant 4608 : i32
      %c9_i32_30 = arith.constant 9 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_29, %c9_i32_30) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_31 = arith.constant 4608 : i32
      %c10_i32 = arith.constant 10 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_31, %c10_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_32 = arith.constant 4608 : i32
      %c10_i32_33 = arith.constant 10 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_32, %c10_i32_33) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_34 = arith.constant 4608 : i32
      %c11_i32 = arith.constant 11 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_34, %c11_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_35 = arith.constant 4608 : i32
      %c11_i32_36 = arith.constant 11 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_35, %c11_i32_36) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_37 = arith.constant 4608 : i32
      %c12_i32 = arith.constant 12 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_37, %c12_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_38 = arith.constant 4608 : i32
      %c12_i32_39 = arith.constant 12 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_38, %c12_i32_39) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_40 = arith.constant 4608 : i32
      %c13_i32 = arith.constant 13 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_40, %c13_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_41 = arith.constant 4608 : i32
      %c13_i32_42 = arith.constant 13 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_41, %c13_i32_42) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_43 = arith.constant 4608 : i32
      %c14_i32 = arith.constant 14 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_43, %c14_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_44 = arith.constant 4608 : i32
      %c14_i32_45 = arith.constant 14 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_44, %c14_i32_45) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_46 = arith.constant 4608 : i32
      %c15_i32 = arith.constant 15 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_46, %c15_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_47 = arith.constant 4608 : i32
      %c15_i32_48 = arith.constant 15 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_47, %c15_i32_48) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_49 = arith.constant 4608 : i32
      %c16_i32 = arith.constant 16 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_49, %c16_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_50 = arith.constant 4608 : i32
      %c16_i32_51 = arith.constant 16 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_50, %c16_i32_51) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_52 = arith.constant 4608 : i32
      %c17_i32 = arith.constant 17 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_52, %c17_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_53 = arith.constant 4608 : i32
      %c17_i32_54 = arith.constant 17 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_53, %c17_i32_54) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_55 = arith.constant 4608 : i32
      %c18_i32 = arith.constant 18 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_55, %c18_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_56 = arith.constant 4608 : i32
      %c18_i32_57 = arith.constant 18 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_56, %c18_i32_57) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_58 = arith.constant 4608 : i32
      %c19_i32 = arith.constant 19 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_58, %c19_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_59 = arith.constant 4608 : i32
      %c19_i32_60 = arith.constant 19 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_59, %c19_i32_60) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_61 = arith.constant 4608 : i32
      %c20_i32 = arith.constant 20 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_61, %c20_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_62 = arith.constant 4608 : i32
      %c20_i32_63 = arith.constant 20 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_62, %c20_i32_63) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_64 = arith.constant 4608 : i32
      %c21_i32 = arith.constant 21 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_64, %c21_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_65 = arith.constant 4608 : i32
      %c21_i32_66 = arith.constant 21 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_65, %c21_i32_66) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_67 = arith.constant 4608 : i32
      %c22_i32 = arith.constant 22 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_67, %c22_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_68 = arith.constant 4608 : i32
      %c22_i32_69 = arith.constant 22 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_68, %c22_i32_69) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_70 = arith.constant 4608 : i32
      %c23_i32 = arith.constant 23 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_70, %c23_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_71 = arith.constant 4608 : i32
      %c23_i32_72 = arith.constant 23 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_71, %c23_i32_72) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_73 = arith.constant 4608 : i32
      %c24_i32 = arith.constant 24 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_73, %c24_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_74 = arith.constant 4608 : i32
      %c24_i32_75 = arith.constant 24 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_74, %c24_i32_75) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_76 = arith.constant 4608 : i32
      %c25_i32 = arith.constant 25 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_76, %c25_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_77 = arith.constant 4608 : i32
      %c25_i32_78 = arith.constant 25 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_77, %c25_i32_78) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_79 = arith.constant 4608 : i32
      %c26_i32 = arith.constant 26 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_79, %c26_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_80 = arith.constant 4608 : i32
      %c26_i32_81 = arith.constant 26 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_80, %c26_i32_81) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_82 = arith.constant 4608 : i32
      %c27_i32 = arith.constant 27 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_82, %c27_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_83 = arith.constant 4608 : i32
      %c27_i32_84 = arith.constant 27 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_83, %c27_i32_84) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_85 = arith.constant 4608 : i32
      %c28_i32 = arith.constant 28 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_85, %c28_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_86 = arith.constant 4608 : i32
      %c28_i32_87 = arith.constant 28 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_86, %c28_i32_87) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_88 = arith.constant 4608 : i32
      %c29_i32 = arith.constant 29 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_88, %c29_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_89 = arith.constant 4608 : i32
      %c29_i32_90 = arith.constant 29 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_89, %c29_i32_90) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_91 = arith.constant 4608 : i32
      %c30_i32 = arith.constant 30 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_91, %c30_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_92 = arith.constant 4608 : i32
      %c30_i32_93 = arith.constant 30 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_92, %c30_i32_93) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_94 = arith.constant 4608 : i32
      %c31_i32 = arith.constant 31 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_94, %c31_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_95 = arith.constant 4608 : i32
      %c31_i32_96 = arith.constant 31 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_95, %c31_i32_96) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_in_l_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_u_cons_prod_lock_0, Release, 2)
      aie.use_lock(%of_in_u_cons_cons_lock_0, AcquireGreaterEqual, 2)
      %c0_97 = arith.constant 0 : index
      %c512_98 = arith.constant 512 : index
      %c1_99 = arith.constant 1 : index
      cf.br ^bb6(%c0_97 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c512_98 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_in_l_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_100 = arith.constant 4608 : i32
      %c0_i32_101 = arith.constant 0 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_100, %c0_i32_101) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_102 = arith.constant 4608 : i32
      %c0_i32_103 = arith.constant 0 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_102, %c0_i32_103) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_104 = arith.constant 4608 : i32
      %c1_i32_105 = arith.constant 1 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_104, %c1_i32_105) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_106 = arith.constant 4608 : i32
      %c1_i32_107 = arith.constant 1 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_106, %c1_i32_107) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_108 = arith.constant 4608 : i32
      %c2_i32_109 = arith.constant 2 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_108, %c2_i32_109) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_110 = arith.constant 4608 : i32
      %c2_i32_111 = arith.constant 2 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_110, %c2_i32_111) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_112 = arith.constant 4608 : i32
      %c3_i32_113 = arith.constant 3 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_112, %c3_i32_113) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_114 = arith.constant 4608 : i32
      %c3_i32_115 = arith.constant 3 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_114, %c3_i32_115) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_116 = arith.constant 4608 : i32
      %c4_i32_117 = arith.constant 4 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_116, %c4_i32_117) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_118 = arith.constant 4608 : i32
      %c4_i32_119 = arith.constant 4 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_118, %c4_i32_119) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_120 = arith.constant 4608 : i32
      %c5_i32_121 = arith.constant 5 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_120, %c5_i32_121) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_122 = arith.constant 4608 : i32
      %c5_i32_123 = arith.constant 5 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_122, %c5_i32_123) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_124 = arith.constant 4608 : i32
      %c6_i32_125 = arith.constant 6 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_124, %c6_i32_125) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_126 = arith.constant 4608 : i32
      %c6_i32_127 = arith.constant 6 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_126, %c6_i32_127) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_128 = arith.constant 4608 : i32
      %c7_i32_129 = arith.constant 7 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_128, %c7_i32_129) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_130 = arith.constant 4608 : i32
      %c7_i32_131 = arith.constant 7 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_130, %c7_i32_131) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_132 = arith.constant 4608 : i32
      %c8_i32_133 = arith.constant 8 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_132, %c8_i32_133) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_134 = arith.constant 4608 : i32
      %c8_i32_135 = arith.constant 8 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_134, %c8_i32_135) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_136 = arith.constant 4608 : i32
      %c9_i32_137 = arith.constant 9 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_136, %c9_i32_137) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_138 = arith.constant 4608 : i32
      %c9_i32_139 = arith.constant 9 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_138, %c9_i32_139) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_140 = arith.constant 4608 : i32
      %c10_i32_141 = arith.constant 10 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_140, %c10_i32_141) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_142 = arith.constant 4608 : i32
      %c10_i32_143 = arith.constant 10 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_142, %c10_i32_143) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_144 = arith.constant 4608 : i32
      %c11_i32_145 = arith.constant 11 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_144, %c11_i32_145) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_146 = arith.constant 4608 : i32
      %c11_i32_147 = arith.constant 11 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_146, %c11_i32_147) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_148 = arith.constant 4608 : i32
      %c12_i32_149 = arith.constant 12 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_148, %c12_i32_149) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_150 = arith.constant 4608 : i32
      %c12_i32_151 = arith.constant 12 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_150, %c12_i32_151) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_152 = arith.constant 4608 : i32
      %c13_i32_153 = arith.constant 13 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_152, %c13_i32_153) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_154 = arith.constant 4608 : i32
      %c13_i32_155 = arith.constant 13 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_154, %c13_i32_155) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_156 = arith.constant 4608 : i32
      %c14_i32_157 = arith.constant 14 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_156, %c14_i32_157) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_158 = arith.constant 4608 : i32
      %c14_i32_159 = arith.constant 14 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_158, %c14_i32_159) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_160 = arith.constant 4608 : i32
      %c15_i32_161 = arith.constant 15 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_160, %c15_i32_161) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_162 = arith.constant 4608 : i32
      %c15_i32_163 = arith.constant 15 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_162, %c15_i32_163) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_164 = arith.constant 4608 : i32
      %c16_i32_165 = arith.constant 16 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_164, %c16_i32_165) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_166 = arith.constant 4608 : i32
      %c16_i32_167 = arith.constant 16 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_166, %c16_i32_167) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_168 = arith.constant 4608 : i32
      %c17_i32_169 = arith.constant 17 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_168, %c17_i32_169) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_170 = arith.constant 4608 : i32
      %c17_i32_171 = arith.constant 17 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_170, %c17_i32_171) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_172 = arith.constant 4608 : i32
      %c18_i32_173 = arith.constant 18 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_172, %c18_i32_173) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_174 = arith.constant 4608 : i32
      %c18_i32_175 = arith.constant 18 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_174, %c18_i32_175) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_176 = arith.constant 4608 : i32
      %c19_i32_177 = arith.constant 19 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_176, %c19_i32_177) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_178 = arith.constant 4608 : i32
      %c19_i32_179 = arith.constant 19 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_178, %c19_i32_179) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_180 = arith.constant 4608 : i32
      %c20_i32_181 = arith.constant 20 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_180, %c20_i32_181) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_182 = arith.constant 4608 : i32
      %c20_i32_183 = arith.constant 20 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_182, %c20_i32_183) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_184 = arith.constant 4608 : i32
      %c21_i32_185 = arith.constant 21 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_184, %c21_i32_185) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_186 = arith.constant 4608 : i32
      %c21_i32_187 = arith.constant 21 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_186, %c21_i32_187) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_188 = arith.constant 4608 : i32
      %c22_i32_189 = arith.constant 22 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_188, %c22_i32_189) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_190 = arith.constant 4608 : i32
      %c22_i32_191 = arith.constant 22 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_190, %c22_i32_191) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_192 = arith.constant 4608 : i32
      %c23_i32_193 = arith.constant 23 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_192, %c23_i32_193) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_194 = arith.constant 4608 : i32
      %c23_i32_195 = arith.constant 23 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_194, %c23_i32_195) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_196 = arith.constant 4608 : i32
      %c24_i32_197 = arith.constant 24 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_196, %c24_i32_197) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_198 = arith.constant 4608 : i32
      %c24_i32_199 = arith.constant 24 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_198, %c24_i32_199) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_200 = arith.constant 4608 : i32
      %c25_i32_201 = arith.constant 25 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_200, %c25_i32_201) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_202 = arith.constant 4608 : i32
      %c25_i32_203 = arith.constant 25 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_202, %c25_i32_203) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_204 = arith.constant 4608 : i32
      %c26_i32_205 = arith.constant 26 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_204, %c26_i32_205) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_206 = arith.constant 4608 : i32
      %c26_i32_207 = arith.constant 26 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_206, %c26_i32_207) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_208 = arith.constant 4608 : i32
      %c27_i32_209 = arith.constant 27 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_208, %c27_i32_209) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_210 = arith.constant 4608 : i32
      %c27_i32_211 = arith.constant 27 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_210, %c27_i32_211) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_212 = arith.constant 4608 : i32
      %c28_i32_213 = arith.constant 28 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_212, %c28_i32_213) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_214 = arith.constant 4608 : i32
      %c28_i32_215 = arith.constant 28 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_214, %c28_i32_215) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_216 = arith.constant 4608 : i32
      %c29_i32_217 = arith.constant 29 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_216, %c29_i32_217) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_218 = arith.constant 4608 : i32
      %c29_i32_219 = arith.constant 29 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_218, %c29_i32_219) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_220 = arith.constant 4608 : i32
      %c30_i32_221 = arith.constant 30 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_220, %c30_i32_221) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_222 = arith.constant 4608 : i32
      %c30_i32_223 = arith.constant 30 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_222, %c30_i32_223) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_224 = arith.constant 4608 : i32
      %c31_i32_225 = arith.constant 31 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_224, %c31_i32_225) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_226 = arith.constant 4608 : i32
      %c31_i32_227 = arith.constant 31 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_226, %c31_i32_227) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_in_l_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c1_99 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_u_cons_prod_lock_0, Release, 2)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%of_in_u_cons_cons_lock_0, AcquireGreaterEqual, 2)
      %c0_228 = arith.constant 0 : index
      %c512_229 = arith.constant 512 : index
      %c1_230 = arith.constant 1 : index
      cf.br ^bb10(%c0_228 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c512_229 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%of_in_l_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_231 = arith.constant 4608 : i32
      %c0_i32_232 = arith.constant 0 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_231, %c0_i32_232) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_233 = arith.constant 4608 : i32
      %c0_i32_234 = arith.constant 0 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_233, %c0_i32_234) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_235 = arith.constant 4608 : i32
      %c1_i32_236 = arith.constant 1 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_235, %c1_i32_236) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_237 = arith.constant 4608 : i32
      %c1_i32_238 = arith.constant 1 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_237, %c1_i32_238) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_239 = arith.constant 4608 : i32
      %c2_i32_240 = arith.constant 2 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_239, %c2_i32_240) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_241 = arith.constant 4608 : i32
      %c2_i32_242 = arith.constant 2 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_241, %c2_i32_242) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_243 = arith.constant 4608 : i32
      %c3_i32_244 = arith.constant 3 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_243, %c3_i32_244) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_245 = arith.constant 4608 : i32
      %c3_i32_246 = arith.constant 3 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_245, %c3_i32_246) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_247 = arith.constant 4608 : i32
      %c4_i32_248 = arith.constant 4 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_247, %c4_i32_248) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_249 = arith.constant 4608 : i32
      %c4_i32_250 = arith.constant 4 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_249, %c4_i32_250) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_251 = arith.constant 4608 : i32
      %c5_i32_252 = arith.constant 5 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_251, %c5_i32_252) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_253 = arith.constant 4608 : i32
      %c5_i32_254 = arith.constant 5 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_253, %c5_i32_254) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_255 = arith.constant 4608 : i32
      %c6_i32_256 = arith.constant 6 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_255, %c6_i32_256) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_257 = arith.constant 4608 : i32
      %c6_i32_258 = arith.constant 6 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_257, %c6_i32_258) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_259 = arith.constant 4608 : i32
      %c7_i32_260 = arith.constant 7 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_259, %c7_i32_260) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_261 = arith.constant 4608 : i32
      %c7_i32_262 = arith.constant 7 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_261, %c7_i32_262) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_263 = arith.constant 4608 : i32
      %c8_i32_264 = arith.constant 8 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_263, %c8_i32_264) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_265 = arith.constant 4608 : i32
      %c8_i32_266 = arith.constant 8 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_265, %c8_i32_266) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_267 = arith.constant 4608 : i32
      %c9_i32_268 = arith.constant 9 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_267, %c9_i32_268) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_269 = arith.constant 4608 : i32
      %c9_i32_270 = arith.constant 9 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_269, %c9_i32_270) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_271 = arith.constant 4608 : i32
      %c10_i32_272 = arith.constant 10 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_271, %c10_i32_272) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_273 = arith.constant 4608 : i32
      %c10_i32_274 = arith.constant 10 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_273, %c10_i32_274) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_275 = arith.constant 4608 : i32
      %c11_i32_276 = arith.constant 11 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_275, %c11_i32_276) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_277 = arith.constant 4608 : i32
      %c11_i32_278 = arith.constant 11 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_277, %c11_i32_278) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_279 = arith.constant 4608 : i32
      %c12_i32_280 = arith.constant 12 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_279, %c12_i32_280) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_281 = arith.constant 4608 : i32
      %c12_i32_282 = arith.constant 12 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_281, %c12_i32_282) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_283 = arith.constant 4608 : i32
      %c13_i32_284 = arith.constant 13 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_283, %c13_i32_284) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_285 = arith.constant 4608 : i32
      %c13_i32_286 = arith.constant 13 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_285, %c13_i32_286) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_287 = arith.constant 4608 : i32
      %c14_i32_288 = arith.constant 14 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_287, %c14_i32_288) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_289 = arith.constant 4608 : i32
      %c14_i32_290 = arith.constant 14 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_289, %c14_i32_290) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_291 = arith.constant 4608 : i32
      %c15_i32_292 = arith.constant 15 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_291, %c15_i32_292) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_293 = arith.constant 4608 : i32
      %c15_i32_294 = arith.constant 15 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_293, %c15_i32_294) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_295 = arith.constant 4608 : i32
      %c16_i32_296 = arith.constant 16 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_295, %c16_i32_296) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_297 = arith.constant 4608 : i32
      %c16_i32_298 = arith.constant 16 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_297, %c16_i32_298) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_299 = arith.constant 4608 : i32
      %c17_i32_300 = arith.constant 17 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_299, %c17_i32_300) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_301 = arith.constant 4608 : i32
      %c17_i32_302 = arith.constant 17 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_301, %c17_i32_302) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_303 = arith.constant 4608 : i32
      %c18_i32_304 = arith.constant 18 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_303, %c18_i32_304) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_305 = arith.constant 4608 : i32
      %c18_i32_306 = arith.constant 18 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_305, %c18_i32_306) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_307 = arith.constant 4608 : i32
      %c19_i32_308 = arith.constant 19 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_307, %c19_i32_308) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_309 = arith.constant 4608 : i32
      %c19_i32_310 = arith.constant 19 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_309, %c19_i32_310) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_311 = arith.constant 4608 : i32
      %c20_i32_312 = arith.constant 20 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_311, %c20_i32_312) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_313 = arith.constant 4608 : i32
      %c20_i32_314 = arith.constant 20 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_313, %c20_i32_314) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_315 = arith.constant 4608 : i32
      %c21_i32_316 = arith.constant 21 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_315, %c21_i32_316) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_317 = arith.constant 4608 : i32
      %c21_i32_318 = arith.constant 21 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_317, %c21_i32_318) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_319 = arith.constant 4608 : i32
      %c22_i32_320 = arith.constant 22 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_319, %c22_i32_320) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_321 = arith.constant 4608 : i32
      %c22_i32_322 = arith.constant 22 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_321, %c22_i32_322) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_323 = arith.constant 4608 : i32
      %c23_i32_324 = arith.constant 23 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_323, %c23_i32_324) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_325 = arith.constant 4608 : i32
      %c23_i32_326 = arith.constant 23 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_325, %c23_i32_326) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_327 = arith.constant 4608 : i32
      %c24_i32_328 = arith.constant 24 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_327, %c24_i32_328) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_329 = arith.constant 4608 : i32
      %c24_i32_330 = arith.constant 24 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_329, %c24_i32_330) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_331 = arith.constant 4608 : i32
      %c25_i32_332 = arith.constant 25 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_331, %c25_i32_332) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_333 = arith.constant 4608 : i32
      %c25_i32_334 = arith.constant 25 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_333, %c25_i32_334) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_335 = arith.constant 4608 : i32
      %c26_i32_336 = arith.constant 26 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_335, %c26_i32_336) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_337 = arith.constant 4608 : i32
      %c26_i32_338 = arith.constant 26 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_337, %c26_i32_338) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_339 = arith.constant 4608 : i32
      %c27_i32_340 = arith.constant 27 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_339, %c27_i32_340) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_341 = arith.constant 4608 : i32
      %c27_i32_342 = arith.constant 27 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_341, %c27_i32_342) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_343 = arith.constant 4608 : i32
      %c28_i32_344 = arith.constant 28 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_343, %c28_i32_344) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_345 = arith.constant 4608 : i32
      %c28_i32_346 = arith.constant 28 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_345, %c28_i32_346) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_347 = arith.constant 4608 : i32
      %c29_i32_348 = arith.constant 29 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_347, %c29_i32_348) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_349 = arith.constant 4608 : i32
      %c29_i32_350 = arith.constant 29 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_349, %c29_i32_350) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_351 = arith.constant 4608 : i32
      %c30_i32_352 = arith.constant 30 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_351, %c30_i32_352) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_353 = arith.constant 4608 : i32
      %c30_i32_354 = arith.constant 30 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_353, %c30_i32_354) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_355 = arith.constant 4608 : i32
      %c31_i32_356 = arith.constant 31 : i32
      func.call @scale(%of_in_u_cons_buff_0, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_355, %c31_i32_356) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_357 = arith.constant 4608 : i32
      %c31_i32_358 = arith.constant 31 : i32
      func.call @scale(%of_in_u_cons_buff_1, %of_in_l_cons_buff_0, %of_addU_buff_0, %c4608_i32_357, %c31_i32_358) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addU_cons_lock_0, Release, 1)
      aie.use_lock(%of_in_l_cons_prod_lock_0, Release, 1)
      %11 = arith.addi %9, %c1_230 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_in_u_cons_prod_lock_0, Release, 2)
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
      aie.use_lock(%of_in_v_cons_cons_lock_0, AcquireGreaterEqual, 2)
      %c0_0 = arith.constant 0 : index
      %c512 = arith.constant 512 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c512 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_in_m_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      %c0_i32 = arith.constant 0 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32, %c0_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_2 = arith.constant 4608 : i32
      %c0_i32_3 = arith.constant 0 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_2, %c0_i32_3) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_4 = arith.constant 4608 : i32
      %c1_i32 = arith.constant 1 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_4, %c1_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_5 = arith.constant 4608 : i32
      %c1_i32_6 = arith.constant 1 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_5, %c1_i32_6) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_7 = arith.constant 4608 : i32
      %c2_i32 = arith.constant 2 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_7, %c2_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_8 = arith.constant 4608 : i32
      %c2_i32_9 = arith.constant 2 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_8, %c2_i32_9) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_10 = arith.constant 4608 : i32
      %c3_i32 = arith.constant 3 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_10, %c3_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_11 = arith.constant 4608 : i32
      %c3_i32_12 = arith.constant 3 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_11, %c3_i32_12) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_13 = arith.constant 4608 : i32
      %c4_i32 = arith.constant 4 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_13, %c4_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_14 = arith.constant 4608 : i32
      %c4_i32_15 = arith.constant 4 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_14, %c4_i32_15) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_16 = arith.constant 4608 : i32
      %c5_i32 = arith.constant 5 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_16, %c5_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_17 = arith.constant 4608 : i32
      %c5_i32_18 = arith.constant 5 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_17, %c5_i32_18) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_19 = arith.constant 4608 : i32
      %c6_i32 = arith.constant 6 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_19, %c6_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_20 = arith.constant 4608 : i32
      %c6_i32_21 = arith.constant 6 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_20, %c6_i32_21) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_22 = arith.constant 4608 : i32
      %c7_i32 = arith.constant 7 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_22, %c7_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_23 = arith.constant 4608 : i32
      %c7_i32_24 = arith.constant 7 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_23, %c7_i32_24) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_25 = arith.constant 4608 : i32
      %c8_i32 = arith.constant 8 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_25, %c8_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_26 = arith.constant 4608 : i32
      %c8_i32_27 = arith.constant 8 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_26, %c8_i32_27) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_28 = arith.constant 4608 : i32
      %c9_i32 = arith.constant 9 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_28, %c9_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_29 = arith.constant 4608 : i32
      %c9_i32_30 = arith.constant 9 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_29, %c9_i32_30) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_31 = arith.constant 4608 : i32
      %c10_i32 = arith.constant 10 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_31, %c10_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_32 = arith.constant 4608 : i32
      %c10_i32_33 = arith.constant 10 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_32, %c10_i32_33) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_34 = arith.constant 4608 : i32
      %c11_i32 = arith.constant 11 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_34, %c11_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_35 = arith.constant 4608 : i32
      %c11_i32_36 = arith.constant 11 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_35, %c11_i32_36) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_37 = arith.constant 4608 : i32
      %c12_i32 = arith.constant 12 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_37, %c12_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_38 = arith.constant 4608 : i32
      %c12_i32_39 = arith.constant 12 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_38, %c12_i32_39) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_40 = arith.constant 4608 : i32
      %c13_i32 = arith.constant 13 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_40, %c13_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_41 = arith.constant 4608 : i32
      %c13_i32_42 = arith.constant 13 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_41, %c13_i32_42) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_43 = arith.constant 4608 : i32
      %c14_i32 = arith.constant 14 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_43, %c14_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_44 = arith.constant 4608 : i32
      %c14_i32_45 = arith.constant 14 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_44, %c14_i32_45) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_46 = arith.constant 4608 : i32
      %c15_i32 = arith.constant 15 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_46, %c15_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_47 = arith.constant 4608 : i32
      %c15_i32_48 = arith.constant 15 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_47, %c15_i32_48) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_49 = arith.constant 4608 : i32
      %c16_i32 = arith.constant 16 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_49, %c16_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_50 = arith.constant 4608 : i32
      %c16_i32_51 = arith.constant 16 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_50, %c16_i32_51) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_52 = arith.constant 4608 : i32
      %c17_i32 = arith.constant 17 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_52, %c17_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_53 = arith.constant 4608 : i32
      %c17_i32_54 = arith.constant 17 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_53, %c17_i32_54) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_55 = arith.constant 4608 : i32
      %c18_i32 = arith.constant 18 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_55, %c18_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_56 = arith.constant 4608 : i32
      %c18_i32_57 = arith.constant 18 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_56, %c18_i32_57) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_58 = arith.constant 4608 : i32
      %c19_i32 = arith.constant 19 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_58, %c19_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_59 = arith.constant 4608 : i32
      %c19_i32_60 = arith.constant 19 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_59, %c19_i32_60) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_61 = arith.constant 4608 : i32
      %c20_i32 = arith.constant 20 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_61, %c20_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_62 = arith.constant 4608 : i32
      %c20_i32_63 = arith.constant 20 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_62, %c20_i32_63) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_64 = arith.constant 4608 : i32
      %c21_i32 = arith.constant 21 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_64, %c21_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_65 = arith.constant 4608 : i32
      %c21_i32_66 = arith.constant 21 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_65, %c21_i32_66) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_67 = arith.constant 4608 : i32
      %c22_i32 = arith.constant 22 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_67, %c22_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_68 = arith.constant 4608 : i32
      %c22_i32_69 = arith.constant 22 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_68, %c22_i32_69) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_70 = arith.constant 4608 : i32
      %c23_i32 = arith.constant 23 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_70, %c23_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_71 = arith.constant 4608 : i32
      %c23_i32_72 = arith.constant 23 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_71, %c23_i32_72) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_73 = arith.constant 4608 : i32
      %c24_i32 = arith.constant 24 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_73, %c24_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_74 = arith.constant 4608 : i32
      %c24_i32_75 = arith.constant 24 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_74, %c24_i32_75) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_76 = arith.constant 4608 : i32
      %c25_i32 = arith.constant 25 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_76, %c25_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_77 = arith.constant 4608 : i32
      %c25_i32_78 = arith.constant 25 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_77, %c25_i32_78) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_79 = arith.constant 4608 : i32
      %c26_i32 = arith.constant 26 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_79, %c26_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_80 = arith.constant 4608 : i32
      %c26_i32_81 = arith.constant 26 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_80, %c26_i32_81) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_82 = arith.constant 4608 : i32
      %c27_i32 = arith.constant 27 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_82, %c27_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_83 = arith.constant 4608 : i32
      %c27_i32_84 = arith.constant 27 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_83, %c27_i32_84) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_85 = arith.constant 4608 : i32
      %c28_i32 = arith.constant 28 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_85, %c28_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_86 = arith.constant 4608 : i32
      %c28_i32_87 = arith.constant 28 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_86, %c28_i32_87) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_88 = arith.constant 4608 : i32
      %c29_i32 = arith.constant 29 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_88, %c29_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_89 = arith.constant 4608 : i32
      %c29_i32_90 = arith.constant 29 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_89, %c29_i32_90) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_91 = arith.constant 4608 : i32
      %c30_i32 = arith.constant 30 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_91, %c30_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_92 = arith.constant 4608 : i32
      %c30_i32_93 = arith.constant 30 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_92, %c30_i32_93) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_94 = arith.constant 4608 : i32
      %c31_i32 = arith.constant 31 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_94, %c31_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_95 = arith.constant 4608 : i32
      %c31_i32_96 = arith.constant 31 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_95, %c31_i32_96) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_in_m_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_v_cons_prod_lock_0, Release, 2)
      aie.use_lock(%of_in_v_cons_cons_lock_0, AcquireGreaterEqual, 2)
      %c0_97 = arith.constant 0 : index
      %c512_98 = arith.constant 512 : index
      %c1_99 = arith.constant 1 : index
      cf.br ^bb6(%c0_97 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c512_98 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_in_m_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_100 = arith.constant 4608 : i32
      %c0_i32_101 = arith.constant 0 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_100, %c0_i32_101) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_102 = arith.constant 4608 : i32
      %c0_i32_103 = arith.constant 0 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_102, %c0_i32_103) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_104 = arith.constant 4608 : i32
      %c1_i32_105 = arith.constant 1 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_104, %c1_i32_105) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_106 = arith.constant 4608 : i32
      %c1_i32_107 = arith.constant 1 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_106, %c1_i32_107) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_108 = arith.constant 4608 : i32
      %c2_i32_109 = arith.constant 2 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_108, %c2_i32_109) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_110 = arith.constant 4608 : i32
      %c2_i32_111 = arith.constant 2 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_110, %c2_i32_111) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_112 = arith.constant 4608 : i32
      %c3_i32_113 = arith.constant 3 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_112, %c3_i32_113) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_114 = arith.constant 4608 : i32
      %c3_i32_115 = arith.constant 3 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_114, %c3_i32_115) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_116 = arith.constant 4608 : i32
      %c4_i32_117 = arith.constant 4 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_116, %c4_i32_117) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_118 = arith.constant 4608 : i32
      %c4_i32_119 = arith.constant 4 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_118, %c4_i32_119) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_120 = arith.constant 4608 : i32
      %c5_i32_121 = arith.constant 5 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_120, %c5_i32_121) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_122 = arith.constant 4608 : i32
      %c5_i32_123 = arith.constant 5 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_122, %c5_i32_123) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_124 = arith.constant 4608 : i32
      %c6_i32_125 = arith.constant 6 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_124, %c6_i32_125) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_126 = arith.constant 4608 : i32
      %c6_i32_127 = arith.constant 6 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_126, %c6_i32_127) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_128 = arith.constant 4608 : i32
      %c7_i32_129 = arith.constant 7 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_128, %c7_i32_129) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_130 = arith.constant 4608 : i32
      %c7_i32_131 = arith.constant 7 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_130, %c7_i32_131) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_132 = arith.constant 4608 : i32
      %c8_i32_133 = arith.constant 8 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_132, %c8_i32_133) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_134 = arith.constant 4608 : i32
      %c8_i32_135 = arith.constant 8 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_134, %c8_i32_135) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_136 = arith.constant 4608 : i32
      %c9_i32_137 = arith.constant 9 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_136, %c9_i32_137) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_138 = arith.constant 4608 : i32
      %c9_i32_139 = arith.constant 9 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_138, %c9_i32_139) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_140 = arith.constant 4608 : i32
      %c10_i32_141 = arith.constant 10 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_140, %c10_i32_141) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_142 = arith.constant 4608 : i32
      %c10_i32_143 = arith.constant 10 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_142, %c10_i32_143) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_144 = arith.constant 4608 : i32
      %c11_i32_145 = arith.constant 11 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_144, %c11_i32_145) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_146 = arith.constant 4608 : i32
      %c11_i32_147 = arith.constant 11 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_146, %c11_i32_147) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_148 = arith.constant 4608 : i32
      %c12_i32_149 = arith.constant 12 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_148, %c12_i32_149) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_150 = arith.constant 4608 : i32
      %c12_i32_151 = arith.constant 12 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_150, %c12_i32_151) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_152 = arith.constant 4608 : i32
      %c13_i32_153 = arith.constant 13 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_152, %c13_i32_153) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_154 = arith.constant 4608 : i32
      %c13_i32_155 = arith.constant 13 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_154, %c13_i32_155) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_156 = arith.constant 4608 : i32
      %c14_i32_157 = arith.constant 14 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_156, %c14_i32_157) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_158 = arith.constant 4608 : i32
      %c14_i32_159 = arith.constant 14 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_158, %c14_i32_159) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_160 = arith.constant 4608 : i32
      %c15_i32_161 = arith.constant 15 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_160, %c15_i32_161) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_162 = arith.constant 4608 : i32
      %c15_i32_163 = arith.constant 15 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_162, %c15_i32_163) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_164 = arith.constant 4608 : i32
      %c16_i32_165 = arith.constant 16 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_164, %c16_i32_165) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_166 = arith.constant 4608 : i32
      %c16_i32_167 = arith.constant 16 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_166, %c16_i32_167) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_168 = arith.constant 4608 : i32
      %c17_i32_169 = arith.constant 17 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_168, %c17_i32_169) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_170 = arith.constant 4608 : i32
      %c17_i32_171 = arith.constant 17 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_170, %c17_i32_171) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_172 = arith.constant 4608 : i32
      %c18_i32_173 = arith.constant 18 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_172, %c18_i32_173) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_174 = arith.constant 4608 : i32
      %c18_i32_175 = arith.constant 18 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_174, %c18_i32_175) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_176 = arith.constant 4608 : i32
      %c19_i32_177 = arith.constant 19 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_176, %c19_i32_177) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_178 = arith.constant 4608 : i32
      %c19_i32_179 = arith.constant 19 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_178, %c19_i32_179) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_180 = arith.constant 4608 : i32
      %c20_i32_181 = arith.constant 20 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_180, %c20_i32_181) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_182 = arith.constant 4608 : i32
      %c20_i32_183 = arith.constant 20 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_182, %c20_i32_183) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_184 = arith.constant 4608 : i32
      %c21_i32_185 = arith.constant 21 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_184, %c21_i32_185) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_186 = arith.constant 4608 : i32
      %c21_i32_187 = arith.constant 21 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_186, %c21_i32_187) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_188 = arith.constant 4608 : i32
      %c22_i32_189 = arith.constant 22 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_188, %c22_i32_189) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_190 = arith.constant 4608 : i32
      %c22_i32_191 = arith.constant 22 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_190, %c22_i32_191) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_192 = arith.constant 4608 : i32
      %c23_i32_193 = arith.constant 23 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_192, %c23_i32_193) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_194 = arith.constant 4608 : i32
      %c23_i32_195 = arith.constant 23 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_194, %c23_i32_195) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_196 = arith.constant 4608 : i32
      %c24_i32_197 = arith.constant 24 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_196, %c24_i32_197) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_198 = arith.constant 4608 : i32
      %c24_i32_199 = arith.constant 24 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_198, %c24_i32_199) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_200 = arith.constant 4608 : i32
      %c25_i32_201 = arith.constant 25 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_200, %c25_i32_201) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_202 = arith.constant 4608 : i32
      %c25_i32_203 = arith.constant 25 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_202, %c25_i32_203) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_204 = arith.constant 4608 : i32
      %c26_i32_205 = arith.constant 26 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_204, %c26_i32_205) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_206 = arith.constant 4608 : i32
      %c26_i32_207 = arith.constant 26 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_206, %c26_i32_207) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_208 = arith.constant 4608 : i32
      %c27_i32_209 = arith.constant 27 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_208, %c27_i32_209) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_210 = arith.constant 4608 : i32
      %c27_i32_211 = arith.constant 27 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_210, %c27_i32_211) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_212 = arith.constant 4608 : i32
      %c28_i32_213 = arith.constant 28 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_212, %c28_i32_213) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_214 = arith.constant 4608 : i32
      %c28_i32_215 = arith.constant 28 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_214, %c28_i32_215) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_216 = arith.constant 4608 : i32
      %c29_i32_217 = arith.constant 29 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_216, %c29_i32_217) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_218 = arith.constant 4608 : i32
      %c29_i32_219 = arith.constant 29 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_218, %c29_i32_219) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_220 = arith.constant 4608 : i32
      %c30_i32_221 = arith.constant 30 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_220, %c30_i32_221) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_222 = arith.constant 4608 : i32
      %c30_i32_223 = arith.constant 30 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_222, %c30_i32_223) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_224 = arith.constant 4608 : i32
      %c31_i32_225 = arith.constant 31 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_224, %c31_i32_225) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_226 = arith.constant 4608 : i32
      %c31_i32_227 = arith.constant 31 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_226, %c31_i32_227) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_in_m_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c1_99 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_v_cons_prod_lock_0, Release, 2)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%of_in_v_cons_cons_lock_0, AcquireGreaterEqual, 2)
      %c0_228 = arith.constant 0 : index
      %c512_229 = arith.constant 512 : index
      %c1_230 = arith.constant 1 : index
      cf.br ^bb10(%c0_228 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c512_229 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%of_in_m_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_231 = arith.constant 4608 : i32
      %c0_i32_232 = arith.constant 0 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_231, %c0_i32_232) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_233 = arith.constant 4608 : i32
      %c0_i32_234 = arith.constant 0 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_233, %c0_i32_234) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_235 = arith.constant 4608 : i32
      %c1_i32_236 = arith.constant 1 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_235, %c1_i32_236) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_237 = arith.constant 4608 : i32
      %c1_i32_238 = arith.constant 1 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_237, %c1_i32_238) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_239 = arith.constant 4608 : i32
      %c2_i32_240 = arith.constant 2 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_239, %c2_i32_240) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_241 = arith.constant 4608 : i32
      %c2_i32_242 = arith.constant 2 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_241, %c2_i32_242) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_243 = arith.constant 4608 : i32
      %c3_i32_244 = arith.constant 3 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_243, %c3_i32_244) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_245 = arith.constant 4608 : i32
      %c3_i32_246 = arith.constant 3 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_245, %c3_i32_246) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_247 = arith.constant 4608 : i32
      %c4_i32_248 = arith.constant 4 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_247, %c4_i32_248) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_249 = arith.constant 4608 : i32
      %c4_i32_250 = arith.constant 4 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_249, %c4_i32_250) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_251 = arith.constant 4608 : i32
      %c5_i32_252 = arith.constant 5 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_251, %c5_i32_252) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_253 = arith.constant 4608 : i32
      %c5_i32_254 = arith.constant 5 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_253, %c5_i32_254) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_255 = arith.constant 4608 : i32
      %c6_i32_256 = arith.constant 6 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_255, %c6_i32_256) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_257 = arith.constant 4608 : i32
      %c6_i32_258 = arith.constant 6 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_257, %c6_i32_258) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_259 = arith.constant 4608 : i32
      %c7_i32_260 = arith.constant 7 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_259, %c7_i32_260) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_261 = arith.constant 4608 : i32
      %c7_i32_262 = arith.constant 7 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_261, %c7_i32_262) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_263 = arith.constant 4608 : i32
      %c8_i32_264 = arith.constant 8 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_263, %c8_i32_264) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_265 = arith.constant 4608 : i32
      %c8_i32_266 = arith.constant 8 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_265, %c8_i32_266) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_267 = arith.constant 4608 : i32
      %c9_i32_268 = arith.constant 9 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_267, %c9_i32_268) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_269 = arith.constant 4608 : i32
      %c9_i32_270 = arith.constant 9 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_269, %c9_i32_270) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_271 = arith.constant 4608 : i32
      %c10_i32_272 = arith.constant 10 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_271, %c10_i32_272) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_273 = arith.constant 4608 : i32
      %c10_i32_274 = arith.constant 10 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_273, %c10_i32_274) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_275 = arith.constant 4608 : i32
      %c11_i32_276 = arith.constant 11 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_275, %c11_i32_276) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_277 = arith.constant 4608 : i32
      %c11_i32_278 = arith.constant 11 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_277, %c11_i32_278) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_279 = arith.constant 4608 : i32
      %c12_i32_280 = arith.constant 12 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_279, %c12_i32_280) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_281 = arith.constant 4608 : i32
      %c12_i32_282 = arith.constant 12 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_281, %c12_i32_282) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_283 = arith.constant 4608 : i32
      %c13_i32_284 = arith.constant 13 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_283, %c13_i32_284) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_285 = arith.constant 4608 : i32
      %c13_i32_286 = arith.constant 13 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_285, %c13_i32_286) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_287 = arith.constant 4608 : i32
      %c14_i32_288 = arith.constant 14 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_287, %c14_i32_288) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_289 = arith.constant 4608 : i32
      %c14_i32_290 = arith.constant 14 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_289, %c14_i32_290) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_291 = arith.constant 4608 : i32
      %c15_i32_292 = arith.constant 15 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_291, %c15_i32_292) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_293 = arith.constant 4608 : i32
      %c15_i32_294 = arith.constant 15 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_293, %c15_i32_294) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_295 = arith.constant 4608 : i32
      %c16_i32_296 = arith.constant 16 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_295, %c16_i32_296) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_297 = arith.constant 4608 : i32
      %c16_i32_298 = arith.constant 16 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_297, %c16_i32_298) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_299 = arith.constant 4608 : i32
      %c17_i32_300 = arith.constant 17 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_299, %c17_i32_300) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_301 = arith.constant 4608 : i32
      %c17_i32_302 = arith.constant 17 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_301, %c17_i32_302) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_303 = arith.constant 4608 : i32
      %c18_i32_304 = arith.constant 18 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_303, %c18_i32_304) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_305 = arith.constant 4608 : i32
      %c18_i32_306 = arith.constant 18 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_305, %c18_i32_306) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_307 = arith.constant 4608 : i32
      %c19_i32_308 = arith.constant 19 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_307, %c19_i32_308) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_309 = arith.constant 4608 : i32
      %c19_i32_310 = arith.constant 19 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_309, %c19_i32_310) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_311 = arith.constant 4608 : i32
      %c20_i32_312 = arith.constant 20 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_311, %c20_i32_312) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_313 = arith.constant 4608 : i32
      %c20_i32_314 = arith.constant 20 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_313, %c20_i32_314) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_315 = arith.constant 4608 : i32
      %c21_i32_316 = arith.constant 21 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_315, %c21_i32_316) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_317 = arith.constant 4608 : i32
      %c21_i32_318 = arith.constant 21 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_317, %c21_i32_318) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_319 = arith.constant 4608 : i32
      %c22_i32_320 = arith.constant 22 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_319, %c22_i32_320) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_321 = arith.constant 4608 : i32
      %c22_i32_322 = arith.constant 22 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_321, %c22_i32_322) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_323 = arith.constant 4608 : i32
      %c23_i32_324 = arith.constant 23 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_323, %c23_i32_324) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_325 = arith.constant 4608 : i32
      %c23_i32_326 = arith.constant 23 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_325, %c23_i32_326) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_327 = arith.constant 4608 : i32
      %c24_i32_328 = arith.constant 24 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_327, %c24_i32_328) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_329 = arith.constant 4608 : i32
      %c24_i32_330 = arith.constant 24 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_329, %c24_i32_330) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_331 = arith.constant 4608 : i32
      %c25_i32_332 = arith.constant 25 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_331, %c25_i32_332) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_333 = arith.constant 4608 : i32
      %c25_i32_334 = arith.constant 25 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_333, %c25_i32_334) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_335 = arith.constant 4608 : i32
      %c26_i32_336 = arith.constant 26 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_335, %c26_i32_336) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_337 = arith.constant 4608 : i32
      %c26_i32_338 = arith.constant 26 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_337, %c26_i32_338) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_339 = arith.constant 4608 : i32
      %c27_i32_340 = arith.constant 27 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_339, %c27_i32_340) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_341 = arith.constant 4608 : i32
      %c27_i32_342 = arith.constant 27 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_341, %c27_i32_342) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_343 = arith.constant 4608 : i32
      %c28_i32_344 = arith.constant 28 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_343, %c28_i32_344) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_345 = arith.constant 4608 : i32
      %c28_i32_346 = arith.constant 28 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_345, %c28_i32_346) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_347 = arith.constant 4608 : i32
      %c29_i32_348 = arith.constant 29 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_347, %c29_i32_348) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_349 = arith.constant 4608 : i32
      %c29_i32_350 = arith.constant 29 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_349, %c29_i32_350) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_351 = arith.constant 4608 : i32
      %c30_i32_352 = arith.constant 30 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_351, %c30_i32_352) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_353 = arith.constant 4608 : i32
      %c30_i32_354 = arith.constant 30 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_353, %c30_i32_354) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_355 = arith.constant 4608 : i32
      %c31_i32_356 = arith.constant 31 : i32
      func.call @scale(%of_in_v_cons_buff_0, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_355, %c31_i32_356) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_357 = arith.constant 4608 : i32
      %c31_i32_358 = arith.constant 31 : i32
      func.call @scale(%of_in_v_cons_buff_1, %of_in_m_cons_buff_0, %of_addV_buff_0, %c4608_i32_357, %c31_i32_358) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addV_cons_lock_0, Release, 1)
      aie.use_lock(%of_in_m_cons_prod_lock_0, Release, 1)
      %11 = arith.addi %9, %c1_230 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_in_v_cons_prod_lock_0, Release, 2)
      aie.end
    } {link_with = "scale.o"}
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
      aie.use_lock(%of_in_w_cons_cons_lock_0, AcquireGreaterEqual, 2)
      %c0_0 = arith.constant 0 : index
      %c512 = arith.constant 512 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c512 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_in_n_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      %c0_i32 = arith.constant 0 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32, %c0_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_2 = arith.constant 4608 : i32
      %c0_i32_3 = arith.constant 0 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_2, %c0_i32_3) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_4 = arith.constant 4608 : i32
      %c1_i32 = arith.constant 1 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_4, %c1_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_5 = arith.constant 4608 : i32
      %c1_i32_6 = arith.constant 1 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_5, %c1_i32_6) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_7 = arith.constant 4608 : i32
      %c2_i32 = arith.constant 2 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_7, %c2_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_8 = arith.constant 4608 : i32
      %c2_i32_9 = arith.constant 2 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_8, %c2_i32_9) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_10 = arith.constant 4608 : i32
      %c3_i32 = arith.constant 3 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_10, %c3_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_11 = arith.constant 4608 : i32
      %c3_i32_12 = arith.constant 3 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_11, %c3_i32_12) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_13 = arith.constant 4608 : i32
      %c4_i32 = arith.constant 4 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_13, %c4_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_14 = arith.constant 4608 : i32
      %c4_i32_15 = arith.constant 4 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_14, %c4_i32_15) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_16 = arith.constant 4608 : i32
      %c5_i32 = arith.constant 5 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_16, %c5_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_17 = arith.constant 4608 : i32
      %c5_i32_18 = arith.constant 5 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_17, %c5_i32_18) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_19 = arith.constant 4608 : i32
      %c6_i32 = arith.constant 6 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_19, %c6_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_20 = arith.constant 4608 : i32
      %c6_i32_21 = arith.constant 6 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_20, %c6_i32_21) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_22 = arith.constant 4608 : i32
      %c7_i32 = arith.constant 7 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_22, %c7_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_23 = arith.constant 4608 : i32
      %c7_i32_24 = arith.constant 7 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_23, %c7_i32_24) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_25 = arith.constant 4608 : i32
      %c8_i32 = arith.constant 8 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_25, %c8_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_26 = arith.constant 4608 : i32
      %c8_i32_27 = arith.constant 8 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_26, %c8_i32_27) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_28 = arith.constant 4608 : i32
      %c9_i32 = arith.constant 9 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_28, %c9_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_29 = arith.constant 4608 : i32
      %c9_i32_30 = arith.constant 9 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_29, %c9_i32_30) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_31 = arith.constant 4608 : i32
      %c10_i32 = arith.constant 10 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_31, %c10_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_32 = arith.constant 4608 : i32
      %c10_i32_33 = arith.constant 10 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_32, %c10_i32_33) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_34 = arith.constant 4608 : i32
      %c11_i32 = arith.constant 11 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_34, %c11_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_35 = arith.constant 4608 : i32
      %c11_i32_36 = arith.constant 11 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_35, %c11_i32_36) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_37 = arith.constant 4608 : i32
      %c12_i32 = arith.constant 12 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_37, %c12_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_38 = arith.constant 4608 : i32
      %c12_i32_39 = arith.constant 12 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_38, %c12_i32_39) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_40 = arith.constant 4608 : i32
      %c13_i32 = arith.constant 13 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_40, %c13_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_41 = arith.constant 4608 : i32
      %c13_i32_42 = arith.constant 13 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_41, %c13_i32_42) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_43 = arith.constant 4608 : i32
      %c14_i32 = arith.constant 14 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_43, %c14_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_44 = arith.constant 4608 : i32
      %c14_i32_45 = arith.constant 14 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_44, %c14_i32_45) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_46 = arith.constant 4608 : i32
      %c15_i32 = arith.constant 15 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_46, %c15_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_47 = arith.constant 4608 : i32
      %c15_i32_48 = arith.constant 15 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_47, %c15_i32_48) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_49 = arith.constant 4608 : i32
      %c16_i32 = arith.constant 16 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_49, %c16_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_50 = arith.constant 4608 : i32
      %c16_i32_51 = arith.constant 16 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_50, %c16_i32_51) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_52 = arith.constant 4608 : i32
      %c17_i32 = arith.constant 17 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_52, %c17_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_53 = arith.constant 4608 : i32
      %c17_i32_54 = arith.constant 17 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_53, %c17_i32_54) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_55 = arith.constant 4608 : i32
      %c18_i32 = arith.constant 18 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_55, %c18_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_56 = arith.constant 4608 : i32
      %c18_i32_57 = arith.constant 18 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_56, %c18_i32_57) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_58 = arith.constant 4608 : i32
      %c19_i32 = arith.constant 19 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_58, %c19_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_59 = arith.constant 4608 : i32
      %c19_i32_60 = arith.constant 19 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_59, %c19_i32_60) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_61 = arith.constant 4608 : i32
      %c20_i32 = arith.constant 20 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_61, %c20_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_62 = arith.constant 4608 : i32
      %c20_i32_63 = arith.constant 20 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_62, %c20_i32_63) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_64 = arith.constant 4608 : i32
      %c21_i32 = arith.constant 21 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_64, %c21_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_65 = arith.constant 4608 : i32
      %c21_i32_66 = arith.constant 21 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_65, %c21_i32_66) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_67 = arith.constant 4608 : i32
      %c22_i32 = arith.constant 22 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_67, %c22_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_68 = arith.constant 4608 : i32
      %c22_i32_69 = arith.constant 22 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_68, %c22_i32_69) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_70 = arith.constant 4608 : i32
      %c23_i32 = arith.constant 23 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_70, %c23_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_71 = arith.constant 4608 : i32
      %c23_i32_72 = arith.constant 23 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_71, %c23_i32_72) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_73 = arith.constant 4608 : i32
      %c24_i32 = arith.constant 24 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_73, %c24_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_74 = arith.constant 4608 : i32
      %c24_i32_75 = arith.constant 24 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_74, %c24_i32_75) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_76 = arith.constant 4608 : i32
      %c25_i32 = arith.constant 25 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_76, %c25_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_77 = arith.constant 4608 : i32
      %c25_i32_78 = arith.constant 25 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_77, %c25_i32_78) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_79 = arith.constant 4608 : i32
      %c26_i32 = arith.constant 26 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_79, %c26_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_80 = arith.constant 4608 : i32
      %c26_i32_81 = arith.constant 26 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_80, %c26_i32_81) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_82 = arith.constant 4608 : i32
      %c27_i32 = arith.constant 27 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_82, %c27_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_83 = arith.constant 4608 : i32
      %c27_i32_84 = arith.constant 27 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_83, %c27_i32_84) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_85 = arith.constant 4608 : i32
      %c28_i32 = arith.constant 28 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_85, %c28_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_86 = arith.constant 4608 : i32
      %c28_i32_87 = arith.constant 28 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_86, %c28_i32_87) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_88 = arith.constant 4608 : i32
      %c29_i32 = arith.constant 29 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_88, %c29_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_89 = arith.constant 4608 : i32
      %c29_i32_90 = arith.constant 29 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_89, %c29_i32_90) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_91 = arith.constant 4608 : i32
      %c30_i32 = arith.constant 30 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_91, %c30_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_92 = arith.constant 4608 : i32
      %c30_i32_93 = arith.constant 30 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_92, %c30_i32_93) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_94 = arith.constant 4608 : i32
      %c31_i32 = arith.constant 31 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_94, %c31_i32) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_95 = arith.constant 4608 : i32
      %c31_i32_96 = arith.constant 31 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_95, %c31_i32_96) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_in_n_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_w_cons_prod_lock_0, Release, 2)
      aie.use_lock(%of_in_w_cons_cons_lock_0, AcquireGreaterEqual, 2)
      %c0_97 = arith.constant 0 : index
      %c512_98 = arith.constant 512 : index
      %c1_99 = arith.constant 1 : index
      cf.br ^bb6(%c0_97 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c512_98 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_in_n_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_100 = arith.constant 4608 : i32
      %c0_i32_101 = arith.constant 0 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_100, %c0_i32_101) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_102 = arith.constant 4608 : i32
      %c0_i32_103 = arith.constant 0 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_102, %c0_i32_103) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_104 = arith.constant 4608 : i32
      %c1_i32_105 = arith.constant 1 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_104, %c1_i32_105) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_106 = arith.constant 4608 : i32
      %c1_i32_107 = arith.constant 1 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_106, %c1_i32_107) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_108 = arith.constant 4608 : i32
      %c2_i32_109 = arith.constant 2 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_108, %c2_i32_109) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_110 = arith.constant 4608 : i32
      %c2_i32_111 = arith.constant 2 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_110, %c2_i32_111) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_112 = arith.constant 4608 : i32
      %c3_i32_113 = arith.constant 3 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_112, %c3_i32_113) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_114 = arith.constant 4608 : i32
      %c3_i32_115 = arith.constant 3 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_114, %c3_i32_115) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_116 = arith.constant 4608 : i32
      %c4_i32_117 = arith.constant 4 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_116, %c4_i32_117) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_118 = arith.constant 4608 : i32
      %c4_i32_119 = arith.constant 4 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_118, %c4_i32_119) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_120 = arith.constant 4608 : i32
      %c5_i32_121 = arith.constant 5 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_120, %c5_i32_121) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_122 = arith.constant 4608 : i32
      %c5_i32_123 = arith.constant 5 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_122, %c5_i32_123) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_124 = arith.constant 4608 : i32
      %c6_i32_125 = arith.constant 6 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_124, %c6_i32_125) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_126 = arith.constant 4608 : i32
      %c6_i32_127 = arith.constant 6 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_126, %c6_i32_127) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_128 = arith.constant 4608 : i32
      %c7_i32_129 = arith.constant 7 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_128, %c7_i32_129) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_130 = arith.constant 4608 : i32
      %c7_i32_131 = arith.constant 7 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_130, %c7_i32_131) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_132 = arith.constant 4608 : i32
      %c8_i32_133 = arith.constant 8 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_132, %c8_i32_133) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_134 = arith.constant 4608 : i32
      %c8_i32_135 = arith.constant 8 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_134, %c8_i32_135) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_136 = arith.constant 4608 : i32
      %c9_i32_137 = arith.constant 9 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_136, %c9_i32_137) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_138 = arith.constant 4608 : i32
      %c9_i32_139 = arith.constant 9 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_138, %c9_i32_139) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_140 = arith.constant 4608 : i32
      %c10_i32_141 = arith.constant 10 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_140, %c10_i32_141) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_142 = arith.constant 4608 : i32
      %c10_i32_143 = arith.constant 10 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_142, %c10_i32_143) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_144 = arith.constant 4608 : i32
      %c11_i32_145 = arith.constant 11 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_144, %c11_i32_145) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_146 = arith.constant 4608 : i32
      %c11_i32_147 = arith.constant 11 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_146, %c11_i32_147) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_148 = arith.constant 4608 : i32
      %c12_i32_149 = arith.constant 12 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_148, %c12_i32_149) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_150 = arith.constant 4608 : i32
      %c12_i32_151 = arith.constant 12 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_150, %c12_i32_151) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_152 = arith.constant 4608 : i32
      %c13_i32_153 = arith.constant 13 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_152, %c13_i32_153) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_154 = arith.constant 4608 : i32
      %c13_i32_155 = arith.constant 13 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_154, %c13_i32_155) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_156 = arith.constant 4608 : i32
      %c14_i32_157 = arith.constant 14 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_156, %c14_i32_157) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_158 = arith.constant 4608 : i32
      %c14_i32_159 = arith.constant 14 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_158, %c14_i32_159) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_160 = arith.constant 4608 : i32
      %c15_i32_161 = arith.constant 15 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_160, %c15_i32_161) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_162 = arith.constant 4608 : i32
      %c15_i32_163 = arith.constant 15 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_162, %c15_i32_163) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_164 = arith.constant 4608 : i32
      %c16_i32_165 = arith.constant 16 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_164, %c16_i32_165) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_166 = arith.constant 4608 : i32
      %c16_i32_167 = arith.constant 16 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_166, %c16_i32_167) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_168 = arith.constant 4608 : i32
      %c17_i32_169 = arith.constant 17 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_168, %c17_i32_169) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_170 = arith.constant 4608 : i32
      %c17_i32_171 = arith.constant 17 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_170, %c17_i32_171) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_172 = arith.constant 4608 : i32
      %c18_i32_173 = arith.constant 18 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_172, %c18_i32_173) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_174 = arith.constant 4608 : i32
      %c18_i32_175 = arith.constant 18 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_174, %c18_i32_175) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_176 = arith.constant 4608 : i32
      %c19_i32_177 = arith.constant 19 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_176, %c19_i32_177) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_178 = arith.constant 4608 : i32
      %c19_i32_179 = arith.constant 19 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_178, %c19_i32_179) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_180 = arith.constant 4608 : i32
      %c20_i32_181 = arith.constant 20 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_180, %c20_i32_181) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_182 = arith.constant 4608 : i32
      %c20_i32_183 = arith.constant 20 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_182, %c20_i32_183) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_184 = arith.constant 4608 : i32
      %c21_i32_185 = arith.constant 21 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_184, %c21_i32_185) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_186 = arith.constant 4608 : i32
      %c21_i32_187 = arith.constant 21 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_186, %c21_i32_187) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_188 = arith.constant 4608 : i32
      %c22_i32_189 = arith.constant 22 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_188, %c22_i32_189) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_190 = arith.constant 4608 : i32
      %c22_i32_191 = arith.constant 22 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_190, %c22_i32_191) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_192 = arith.constant 4608 : i32
      %c23_i32_193 = arith.constant 23 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_192, %c23_i32_193) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_194 = arith.constant 4608 : i32
      %c23_i32_195 = arith.constant 23 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_194, %c23_i32_195) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_196 = arith.constant 4608 : i32
      %c24_i32_197 = arith.constant 24 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_196, %c24_i32_197) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_198 = arith.constant 4608 : i32
      %c24_i32_199 = arith.constant 24 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_198, %c24_i32_199) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_200 = arith.constant 4608 : i32
      %c25_i32_201 = arith.constant 25 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_200, %c25_i32_201) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_202 = arith.constant 4608 : i32
      %c25_i32_203 = arith.constant 25 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_202, %c25_i32_203) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_204 = arith.constant 4608 : i32
      %c26_i32_205 = arith.constant 26 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_204, %c26_i32_205) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_206 = arith.constant 4608 : i32
      %c26_i32_207 = arith.constant 26 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_206, %c26_i32_207) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_208 = arith.constant 4608 : i32
      %c27_i32_209 = arith.constant 27 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_208, %c27_i32_209) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_210 = arith.constant 4608 : i32
      %c27_i32_211 = arith.constant 27 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_210, %c27_i32_211) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_212 = arith.constant 4608 : i32
      %c28_i32_213 = arith.constant 28 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_212, %c28_i32_213) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_214 = arith.constant 4608 : i32
      %c28_i32_215 = arith.constant 28 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_214, %c28_i32_215) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_216 = arith.constant 4608 : i32
      %c29_i32_217 = arith.constant 29 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_216, %c29_i32_217) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_218 = arith.constant 4608 : i32
      %c29_i32_219 = arith.constant 29 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_218, %c29_i32_219) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_220 = arith.constant 4608 : i32
      %c30_i32_221 = arith.constant 30 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_220, %c30_i32_221) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_222 = arith.constant 4608 : i32
      %c30_i32_223 = arith.constant 30 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_222, %c30_i32_223) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_224 = arith.constant 4608 : i32
      %c31_i32_225 = arith.constant 31 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_224, %c31_i32_225) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_226 = arith.constant 4608 : i32
      %c31_i32_227 = arith.constant 31 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_226, %c31_i32_227) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_in_n_cons_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c1_99 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_w_cons_prod_lock_0, Release, 2)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%of_in_w_cons_cons_lock_0, AcquireGreaterEqual, 2)
      %c0_228 = arith.constant 0 : index
      %c512_229 = arith.constant 512 : index
      %c1_230 = arith.constant 1 : index
      cf.br ^bb10(%c0_228 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c512_229 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%of_in_n_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_231 = arith.constant 4608 : i32
      %c0_i32_232 = arith.constant 0 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_231, %c0_i32_232) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_233 = arith.constant 4608 : i32
      %c0_i32_234 = arith.constant 0 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_233, %c0_i32_234) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_235 = arith.constant 4608 : i32
      %c1_i32_236 = arith.constant 1 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_235, %c1_i32_236) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_237 = arith.constant 4608 : i32
      %c1_i32_238 = arith.constant 1 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_237, %c1_i32_238) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_239 = arith.constant 4608 : i32
      %c2_i32_240 = arith.constant 2 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_239, %c2_i32_240) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_241 = arith.constant 4608 : i32
      %c2_i32_242 = arith.constant 2 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_241, %c2_i32_242) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_243 = arith.constant 4608 : i32
      %c3_i32_244 = arith.constant 3 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_243, %c3_i32_244) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_245 = arith.constant 4608 : i32
      %c3_i32_246 = arith.constant 3 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_245, %c3_i32_246) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_247 = arith.constant 4608 : i32
      %c4_i32_248 = arith.constant 4 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_247, %c4_i32_248) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_249 = arith.constant 4608 : i32
      %c4_i32_250 = arith.constant 4 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_249, %c4_i32_250) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_251 = arith.constant 4608 : i32
      %c5_i32_252 = arith.constant 5 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_251, %c5_i32_252) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_253 = arith.constant 4608 : i32
      %c5_i32_254 = arith.constant 5 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_253, %c5_i32_254) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_255 = arith.constant 4608 : i32
      %c6_i32_256 = arith.constant 6 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_255, %c6_i32_256) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_257 = arith.constant 4608 : i32
      %c6_i32_258 = arith.constant 6 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_257, %c6_i32_258) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_259 = arith.constant 4608 : i32
      %c7_i32_260 = arith.constant 7 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_259, %c7_i32_260) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_261 = arith.constant 4608 : i32
      %c7_i32_262 = arith.constant 7 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_261, %c7_i32_262) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_263 = arith.constant 4608 : i32
      %c8_i32_264 = arith.constant 8 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_263, %c8_i32_264) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_265 = arith.constant 4608 : i32
      %c8_i32_266 = arith.constant 8 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_265, %c8_i32_266) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_267 = arith.constant 4608 : i32
      %c9_i32_268 = arith.constant 9 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_267, %c9_i32_268) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_269 = arith.constant 4608 : i32
      %c9_i32_270 = arith.constant 9 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_269, %c9_i32_270) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_271 = arith.constant 4608 : i32
      %c10_i32_272 = arith.constant 10 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_271, %c10_i32_272) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_273 = arith.constant 4608 : i32
      %c10_i32_274 = arith.constant 10 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_273, %c10_i32_274) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_275 = arith.constant 4608 : i32
      %c11_i32_276 = arith.constant 11 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_275, %c11_i32_276) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_277 = arith.constant 4608 : i32
      %c11_i32_278 = arith.constant 11 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_277, %c11_i32_278) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_279 = arith.constant 4608 : i32
      %c12_i32_280 = arith.constant 12 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_279, %c12_i32_280) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_281 = arith.constant 4608 : i32
      %c12_i32_282 = arith.constant 12 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_281, %c12_i32_282) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_283 = arith.constant 4608 : i32
      %c13_i32_284 = arith.constant 13 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_283, %c13_i32_284) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_285 = arith.constant 4608 : i32
      %c13_i32_286 = arith.constant 13 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_285, %c13_i32_286) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_287 = arith.constant 4608 : i32
      %c14_i32_288 = arith.constant 14 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_287, %c14_i32_288) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_289 = arith.constant 4608 : i32
      %c14_i32_290 = arith.constant 14 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_289, %c14_i32_290) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_291 = arith.constant 4608 : i32
      %c15_i32_292 = arith.constant 15 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_291, %c15_i32_292) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_293 = arith.constant 4608 : i32
      %c15_i32_294 = arith.constant 15 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_293, %c15_i32_294) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_295 = arith.constant 4608 : i32
      %c16_i32_296 = arith.constant 16 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_295, %c16_i32_296) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_297 = arith.constant 4608 : i32
      %c16_i32_298 = arith.constant 16 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_297, %c16_i32_298) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_299 = arith.constant 4608 : i32
      %c17_i32_300 = arith.constant 17 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_299, %c17_i32_300) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_301 = arith.constant 4608 : i32
      %c17_i32_302 = arith.constant 17 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_301, %c17_i32_302) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_303 = arith.constant 4608 : i32
      %c18_i32_304 = arith.constant 18 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_303, %c18_i32_304) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_305 = arith.constant 4608 : i32
      %c18_i32_306 = arith.constant 18 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_305, %c18_i32_306) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_307 = arith.constant 4608 : i32
      %c19_i32_308 = arith.constant 19 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_307, %c19_i32_308) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_309 = arith.constant 4608 : i32
      %c19_i32_310 = arith.constant 19 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_309, %c19_i32_310) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_311 = arith.constant 4608 : i32
      %c20_i32_312 = arith.constant 20 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_311, %c20_i32_312) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_313 = arith.constant 4608 : i32
      %c20_i32_314 = arith.constant 20 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_313, %c20_i32_314) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_315 = arith.constant 4608 : i32
      %c21_i32_316 = arith.constant 21 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_315, %c21_i32_316) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_317 = arith.constant 4608 : i32
      %c21_i32_318 = arith.constant 21 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_317, %c21_i32_318) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_319 = arith.constant 4608 : i32
      %c22_i32_320 = arith.constant 22 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_319, %c22_i32_320) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_321 = arith.constant 4608 : i32
      %c22_i32_322 = arith.constant 22 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_321, %c22_i32_322) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_323 = arith.constant 4608 : i32
      %c23_i32_324 = arith.constant 23 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_323, %c23_i32_324) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_325 = arith.constant 4608 : i32
      %c23_i32_326 = arith.constant 23 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_325, %c23_i32_326) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_327 = arith.constant 4608 : i32
      %c24_i32_328 = arith.constant 24 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_327, %c24_i32_328) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_329 = arith.constant 4608 : i32
      %c24_i32_330 = arith.constant 24 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_329, %c24_i32_330) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_331 = arith.constant 4608 : i32
      %c25_i32_332 = arith.constant 25 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_331, %c25_i32_332) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_333 = arith.constant 4608 : i32
      %c25_i32_334 = arith.constant 25 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_333, %c25_i32_334) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_335 = arith.constant 4608 : i32
      %c26_i32_336 = arith.constant 26 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_335, %c26_i32_336) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_337 = arith.constant 4608 : i32
      %c26_i32_338 = arith.constant 26 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_337, %c26_i32_338) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_339 = arith.constant 4608 : i32
      %c27_i32_340 = arith.constant 27 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_339, %c27_i32_340) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_341 = arith.constant 4608 : i32
      %c27_i32_342 = arith.constant 27 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_341, %c27_i32_342) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_343 = arith.constant 4608 : i32
      %c28_i32_344 = arith.constant 28 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_343, %c28_i32_344) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_345 = arith.constant 4608 : i32
      %c28_i32_346 = arith.constant 28 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_345, %c28_i32_346) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_347 = arith.constant 4608 : i32
      %c29_i32_348 = arith.constant 29 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_347, %c29_i32_348) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_349 = arith.constant 4608 : i32
      %c29_i32_350 = arith.constant 29 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_349, %c29_i32_350) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_351 = arith.constant 4608 : i32
      %c30_i32_352 = arith.constant 30 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_351, %c30_i32_352) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_353 = arith.constant 4608 : i32
      %c30_i32_354 = arith.constant 30 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_353, %c30_i32_354) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_355 = arith.constant 4608 : i32
      %c31_i32_356 = arith.constant 31 : i32
      func.call @scale(%of_in_w_cons_buff_0, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_355, %c31_i32_356) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_addW_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_357 = arith.constant 4608 : i32
      %c31_i32_358 = arith.constant 31 : i32
      func.call @scale(%of_in_w_cons_buff_1, %of_in_n_cons_buff_0, %of_addW_buff_0, %c4608_i32_357, %c31_i32_358) : (memref<4608xbf16>, memref<32xbf16>, memref<4608xbf16>, i32, i32) -> ()
      aie.use_lock(%of_addW_cons_lock_0, Release, 1)
      aie.use_lock(%of_in_n_cons_prod_lock_0, Release, 1)
      %11 = arith.addi %9, %c1_230 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_in_w_cons_prod_lock_0, Release, 2)
      aie.end
    } {link_with = "scale.o"}
    %core_1_5 = aie.core(%tile_1_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c16384 = arith.constant 16384 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb7
      %3 = arith.cmpi slt, %2, %c16384 : index
      cf.cond_br %3, ^bb4, ^bb8
    ^bb4:  // pred: ^bb3
      %c0_2 = arith.constant 0 : index
      %c2 = arith.constant 2 : index
      %c1_3 = arith.constant 1 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c2 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%of_addU_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_addV_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_addUV_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      func.call @add_kernel(%of_addU_buff_0, %of_addV_cons_buff_0, %of_addUV_buff_0, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_addUV_cons_lock_0, Release, 1)
      aie.use_lock(%of_addU_prod_lock_0, Release, 1)
      aie.use_lock(%of_addV_cons_prod_lock_0, Release, 1)
      %6 = arith.addi %4, %c1_3 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      %7 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%7 : index)
    ^bb8:  // pred: ^bb3
      %8 = arith.addi %0, %c1 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.end
    } {link_with = "add.o"}
    %core_1_4 = aie.core(%tile_1_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c16384 = arith.constant 16384 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c16384 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      %c0_2 = arith.constant 0 : index
      %c2_3 = arith.constant 2 : index
      %c1_4 = arith.constant 1 : index
      %c2_5 = arith.constant 2 : index
      aie.use_lock(%of_addUV_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_addW_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleAddBL_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      func.call @add_kernel(%of_addUV_buff_0, %of_addW_cons_buff_0, %of_scaleAddBL_buff_0, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_scaleAddBL_cons_lock_0, Release, 1)
      aie.use_lock(%of_addUV_prod_lock_0, Release, 1)
      aie.use_lock(%of_addW_cons_prod_lock_0, Release, 1)
      aie.use_lock(%of_addUV_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_addW_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleAddBL_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_6 = arith.constant 4608 : i32
      func.call @add_kernel(%of_addUV_buff_0, %of_addW_cons_buff_1, %of_scaleAddBL_buff_0, %c4608_i32_6) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_scaleAddBL_cons_lock_0, Release, 1)
      aie.use_lock(%of_addUV_prod_lock_0, Release, 1)
      aie.use_lock(%of_addW_cons_prod_lock_0, Release, 1)
      %c0_7 = arith.constant 0 : index
      %c2_8 = arith.constant 2 : index
      %c1_9 = arith.constant 1 : index
      %c2_10 = arith.constant 2 : index
      aie.use_lock(%of_addUV_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_addW_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleAddBL_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_11 = arith.constant 4608 : i32
      func.call @add_kernel(%of_addUV_buff_0, %of_addW_cons_buff_0, %of_scaleAddBL_buff_0, %c4608_i32_11) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_scaleAddBL_cons_lock_0, Release, 1)
      aie.use_lock(%of_addUV_prod_lock_0, Release, 1)
      aie.use_lock(%of_addW_cons_prod_lock_0, Release, 1)
      aie.use_lock(%of_addUV_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_addW_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_scaleAddBL_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_12 = arith.constant 4608 : i32
      func.call @add_kernel(%of_addUV_buff_0, %of_addW_cons_buff_1, %of_scaleAddBL_buff_0, %c4608_i32_12) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_scaleAddBL_cons_lock_0, Release, 1)
      aie.use_lock(%of_addUV_prod_lock_0, Release, 1)
      aie.use_lock(%of_addW_cons_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "add.o"}
    %core_1_3 = aie.core(%tile_1_3) {
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
      aie.use_lock(%in3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c16384 = arith.constant 16384 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb7
      %3 = arith.cmpi slt, %2, %c16384 : index
      cf.cond_br %3, ^bb4, ^bb8
    ^bb4:  // pred: ^bb3
      %c0_2 = arith.constant 0 : index
      %c2_3 = arith.constant 2 : index
      %c1_4 = arith.constant 1 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c2_3 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%of_scaleAddBL_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_trigFifo_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      func.call @scale_single(%of_scaleAddBL_buff_0, %in3_cons_buff_0, %of_trigFifo_buff_0, %c4608_i32) : (memref<4608xbf16>, memref<2xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_trigFifo_cons_lock_0, Release, 1)
      aie.use_lock(%of_scaleAddBL_prod_lock_0, Release, 1)
      %6 = arith.addi %4, %c1_4 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      %7 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%7 : index)
    ^bb8:  // pred: ^bb3
      aie.use_lock(%in3_cons_prod_lock_0, Release, 1)
      aie.use_lock(%in3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c16384_6 = arith.constant 16384 : index
      %c1_7 = arith.constant 1 : index
      cf.br ^bb9(%c0_5 : index)
    ^bb9(%8: index):  // 2 preds: ^bb8, ^bb13
      %9 = arith.cmpi slt, %8, %c16384_6 : index
      cf.cond_br %9, ^bb10, ^bb14
    ^bb10:  // pred: ^bb9
      %c0_8 = arith.constant 0 : index
      %c2_9 = arith.constant 2 : index
      %c1_10 = arith.constant 1 : index
      cf.br ^bb11(%c0_8 : index)
    ^bb11(%10: index):  // 2 preds: ^bb10, ^bb12
      %11 = arith.cmpi slt, %10, %c2_9 : index
      cf.cond_br %11, ^bb12, ^bb13
    ^bb12:  // pred: ^bb11
      aie.use_lock(%of_scaleAddBL_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_trigFifo_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_11 = arith.constant 4608 : i32
      func.call @scale_single(%of_scaleAddBL_buff_0, %in3_cons_buff_1, %of_trigFifo_buff_0, %c4608_i32_11) : (memref<4608xbf16>, memref<2xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_trigFifo_cons_lock_0, Release, 1)
      aie.use_lock(%of_scaleAddBL_prod_lock_0, Release, 1)
      %12 = arith.addi %10, %c1_10 : index
      cf.br ^bb11(%12 : index)
    ^bb13:  // pred: ^bb11
      %13 = arith.addi %8, %c1_7 : index
      cf.br ^bb9(%13 : index)
    ^bb14:  // pred: ^bb9
      aie.use_lock(%in3_cons_prod_lock_0, Release, 1)
      %14 = arith.addi %0, %c2 : index
      cf.br ^bb1(%14 : index)
    ^bb15:  // pred: ^bb1
      aie.use_lock(%in3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      %c0_12 = arith.constant 0 : index
      %c16384_13 = arith.constant 16384 : index
      %c1_14 = arith.constant 1 : index
      cf.br ^bb16(%c0_12 : index)
    ^bb16(%15: index):  // 2 preds: ^bb15, ^bb20
      %16 = arith.cmpi slt, %15, %c16384_13 : index
      cf.cond_br %16, ^bb17, ^bb21
    ^bb17:  // pred: ^bb16
      %c0_15 = arith.constant 0 : index
      %c2_16 = arith.constant 2 : index
      %c1_17 = arith.constant 1 : index
      cf.br ^bb18(%c0_15 : index)
    ^bb18(%17: index):  // 2 preds: ^bb17, ^bb19
      %18 = arith.cmpi slt, %17, %c2_16 : index
      cf.cond_br %18, ^bb19, ^bb20
    ^bb19:  // pred: ^bb18
      aie.use_lock(%of_scaleAddBL_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_trigFifo_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_18 = arith.constant 4608 : i32
      func.call @scale_single(%of_scaleAddBL_buff_0, %in3_cons_buff_0, %of_trigFifo_buff_0, %c4608_i32_18) : (memref<4608xbf16>, memref<2xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_trigFifo_cons_lock_0, Release, 1)
      aie.use_lock(%of_scaleAddBL_prod_lock_0, Release, 1)
      %19 = arith.addi %17, %c1_17 : index
      cf.br ^bb18(%19 : index)
    ^bb20:  // pred: ^bb18
      %20 = arith.addi %15, %c1_14 : index
      cf.br ^bb16(%20 : index)
    ^bb21:  // pred: ^bb16
      aie.use_lock(%in3_cons_prod_lock_0, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_2_5 = aie.core(%tile_2_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c16384 = arith.constant 16384 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb7
      %3 = arith.cmpi slt, %2, %c16384 : index
      cf.cond_br %3, ^bb4, ^bb8
    ^bb4:  // pred: ^bb3
      %c0_2 = arith.constant 0 : index
      %c2 = arith.constant 2 : index
      %c1_3 = arith.constant 1 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c2 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%of_trigFifo_0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multTrigR_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      func.call @cosine(%of_trigFifo_0_cons_buff_0, %of_multTrigR_buff_0, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_multTrigR_cons_lock_0, Release, 1)
      aie.use_lock(%of_trigFifo_0_cons_prod_lock_0, Release, 1)
      %6 = arith.addi %4, %c1_3 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      %7 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%7 : index)
    ^bb8:  // pred: ^bb3
      %8 = arith.addi %0, %c1 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.end
    } {link_with = "kernels.a"}
    %core_3_5 = aie.core(%tile_3_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c16384 = arith.constant 16384 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb7
      %3 = arith.cmpi slt, %2, %c16384 : index
      cf.cond_br %3, ^bb4, ^bb8
    ^bb4:  // pred: ^bb3
      %c0_2 = arith.constant 0 : index
      %c2 = arith.constant 2 : index
      %c1_3 = arith.constant 1 : index
      cf.br ^bb5(%c0_2 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c2 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      aie.use_lock(%of_trigFifo_1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_multTrigC_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      func.call @sine(%of_trigFifo_1_cons_buff_0, %of_multTrigC_buff_0, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_multTrigC_cons_lock_0, Release, 1)
      aie.use_lock(%of_trigFifo_1_cons_prod_lock_0, Release, 1)
      %6 = arith.addi %4, %c1_3 : index
      cf.br ^bb5(%6 : index)
    ^bb7:  // pred: ^bb5
      %7 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%7 : index)
    ^bb8:  // pred: ^bb3
      %8 = arith.addi %0, %c1 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.end
    } {link_with = "kernels.a"}
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
      aie.use_lock(%of_in_visR_cons_cons_lock_0, AcquireGreaterEqual, 2)
      %c0_0 = arith.constant 0 : index
      %c16384 = arith.constant 16384 : index
      %c1_1 = arith.constant 1 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c16384 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_multTrigR_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceR_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigR_buff_0, %of_in_visR_cons_buff_0, %of_reduceR_buff_0, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceR_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_prod_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceR_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_3 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigR_buff_0, %of_in_visR_cons_buff_1, %of_reduceR_buff_1, %c4608_i32_3) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceR_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_prod_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceR_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_4 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigR_buff_0, %of_in_visR_cons_buff_0, %of_reduceR_buff_0, %c4608_i32_4) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceR_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_prod_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceR_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_5 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigR_buff_0, %of_in_visR_cons_buff_1, %of_reduceR_buff_1, %c4608_i32_5) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceR_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_visR_cons_prod_lock_0, Release, 2)
      aie.use_lock(%of_in_visR_cons_cons_lock_0, AcquireGreaterEqual, 2)
      %c0_6 = arith.constant 0 : index
      %c16384_7 = arith.constant 16384 : index
      %c1_8 = arith.constant 1 : index
      %c2_9 = arith.constant 2 : index
      cf.br ^bb6(%c0_6 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c16384_7 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_multTrigR_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceR_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_10 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigR_buff_0, %of_in_visR_cons_buff_0, %of_reduceR_buff_0, %c4608_i32_10) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceR_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_prod_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceR_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_11 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigR_buff_0, %of_in_visR_cons_buff_1, %of_reduceR_buff_1, %c4608_i32_11) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceR_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_prod_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceR_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_12 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigR_buff_0, %of_in_visR_cons_buff_0, %of_reduceR_buff_0, %c4608_i32_12) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceR_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_prod_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceR_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_13 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigR_buff_0, %of_in_visR_cons_buff_1, %of_reduceR_buff_1, %c4608_i32_13) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceR_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_visR_cons_prod_lock_0, Release, 2)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%of_in_visR_cons_cons_lock_0, AcquireGreaterEqual, 2)
      %c0_14 = arith.constant 0 : index
      %c16384_15 = arith.constant 16384 : index
      %c1_16 = arith.constant 1 : index
      %c2_17 = arith.constant 2 : index
      cf.br ^bb10(%c0_14 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c16384_15 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%of_multTrigR_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceR_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_18 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigR_buff_0, %of_in_visR_cons_buff_0, %of_reduceR_buff_0, %c4608_i32_18) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceR_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_prod_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceR_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_19 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigR_buff_0, %of_in_visR_cons_buff_1, %of_reduceR_buff_1, %c4608_i32_19) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceR_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_prod_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceR_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_20 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigR_buff_0, %of_in_visR_cons_buff_0, %of_reduceR_buff_0, %c4608_i32_20) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceR_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_prod_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceR_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_21 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigR_buff_0, %of_in_visR_cons_buff_1, %of_reduceR_buff_1, %c4608_i32_21) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceR_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigR_prod_lock_0, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_in_visR_cons_prod_lock_0, Release, 2)
      aie.end
    } {link_with = "mul.o"}
    %core_3_4 = aie.core(%tile_3_4) {
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
      aie.use_lock(%of_in_visC_cons_cons_lock_0, AcquireGreaterEqual, 2)
      %c0_0 = arith.constant 0 : index
      %c16384 = arith.constant 16384 : index
      %c1_1 = arith.constant 1 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c16384 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_multTrigC_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceC_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigC_buff_0, %of_in_visC_cons_buff_0, %of_reduceC_buff_0, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceC_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_prod_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceC_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_3 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigC_buff_0, %of_in_visC_cons_buff_1, %of_reduceC_buff_1, %c4608_i32_3) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceC_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_prod_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceC_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_4 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigC_buff_0, %of_in_visC_cons_buff_0, %of_reduceC_buff_0, %c4608_i32_4) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceC_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_prod_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceC_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_5 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigC_buff_0, %of_in_visC_cons_buff_1, %of_reduceC_buff_1, %c4608_i32_5) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceC_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_visC_cons_prod_lock_0, Release, 2)
      aie.use_lock(%of_in_visC_cons_cons_lock_0, AcquireGreaterEqual, 2)
      %c0_6 = arith.constant 0 : index
      %c16384_7 = arith.constant 16384 : index
      %c1_8 = arith.constant 1 : index
      %c2_9 = arith.constant 2 : index
      cf.br ^bb6(%c0_6 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c16384_7 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_multTrigC_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceC_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_10 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigC_buff_0, %of_in_visC_cons_buff_0, %of_reduceC_buff_0, %c4608_i32_10) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceC_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_prod_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceC_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_11 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigC_buff_0, %of_in_visC_cons_buff_1, %of_reduceC_buff_1, %c4608_i32_11) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceC_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_prod_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceC_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_12 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigC_buff_0, %of_in_visC_cons_buff_0, %of_reduceC_buff_0, %c4608_i32_12) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceC_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_prod_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceC_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_13 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigC_buff_0, %of_in_visC_cons_buff_1, %of_reduceC_buff_1, %c4608_i32_13) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceC_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_prod_lock_0, Release, 1)
      %7 = arith.addi %5, %c2_9 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_visC_cons_prod_lock_0, Release, 2)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%of_in_visC_cons_cons_lock_0, AcquireGreaterEqual, 2)
      %c0_14 = arith.constant 0 : index
      %c16384_15 = arith.constant 16384 : index
      %c1_16 = arith.constant 1 : index
      %c2_17 = arith.constant 2 : index
      cf.br ^bb10(%c0_14 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c16384_15 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%of_multTrigC_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceC_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_18 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigC_buff_0, %of_in_visC_cons_buff_0, %of_reduceC_buff_0, %c4608_i32_18) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceC_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_prod_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceC_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_19 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigC_buff_0, %of_in_visC_cons_buff_1, %of_reduceC_buff_1, %c4608_i32_19) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceC_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_prod_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceC_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_20 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigC_buff_0, %of_in_visC_cons_buff_0, %of_reduceC_buff_0, %c4608_i32_20) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceC_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_prod_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduceC_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_21 = arith.constant 4608 : i32
      func.call @mul_kernel(%of_multTrigC_buff_0, %of_in_visC_cons_buff_1, %of_reduceC_buff_1, %c4608_i32_21) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduceC_cons_lock_0, Release, 1)
      aie.use_lock(%of_multTrigC_prod_lock_0, Release, 1)
      %11 = arith.addi %9, %c2_17 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%of_in_visC_cons_prod_lock_0, Release, 2)
      aie.end
    } {link_with = "mul.o"}
    %core_2_3 = aie.core(%tile_2_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c16384 = arith.constant 16384 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c16384 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_reduceR_cons_lock_0, AcquireGreaterEqual, 2)
      aie.use_lock(%of_reduc2SubR_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      func.call @add_kernel(%of_reduceR_buff_0, %of_reduceR_buff_1, %of_reduc2SubR_buff_0, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduc2SubR_cons_lock_0, Release, 1)
      aie.use_lock(%of_reduceR_prod_lock_0, Release, 2)
      aie.use_lock(%of_reduceR_cons_lock_0, AcquireGreaterEqual, 2)
      aie.use_lock(%of_reduc2SubR_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_2 = arith.constant 4608 : i32
      func.call @add_kernel(%of_reduceR_buff_0, %of_reduceR_buff_1, %of_reduc2SubR_buff_0, %c4608_i32_2) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduc2SubR_cons_lock_0, Release, 1)
      aie.use_lock(%of_reduceR_prod_lock_0, Release, 2)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "add.o"}
    %core_3_3 = aie.core(%tile_3_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c16384 = arith.constant 16384 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c16384 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_reduceC_cons_lock_0, AcquireGreaterEqual, 2)
      aie.use_lock(%of_reduc2SubC_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      func.call @add_kernel(%of_reduceC_buff_0, %of_reduceC_buff_1, %of_reduc2SubC_buff_0, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduc2SubC_cons_lock_0, Release, 1)
      aie.use_lock(%of_reduceC_prod_lock_0, Release, 2)
      aie.use_lock(%of_reduceC_cons_lock_0, AcquireGreaterEqual, 2)
      aie.use_lock(%of_reduc2SubC_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_2 = arith.constant 4608 : i32
      func.call @add_kernel(%of_reduceC_buff_0, %of_reduceC_buff_1, %of_reduc2SubC_buff_0, %c4608_i32_2) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_reduc2SubC_cons_lock_0, Release, 1)
      aie.use_lock(%of_reduceC_prod_lock_0, Release, 2)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "add.o"}
    %core_3_2 = aie.core(%tile_3_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c16384 = arith.constant 16384 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c16384 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_reduc2SubR_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_reduc2SubC_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_sub2mean_prod_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      func.call @sub_kernel(%of_reduc2SubR_cons_buff_0, %of_reduc2SubC_buff_0, %of_sub2mean_buff_0, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_sub2mean_cons_lock_0, Release, 1)
      aie.use_lock(%of_reduc2SubR_cons_prod_lock_0, Release, 1)
      aie.use_lock(%of_reduc2SubC_prod_lock_0, Release, 1)
      %4 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "sub.o"}
    %core_2_2 = aie.core(%tile_2_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c512 = arith.constant 512 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c512 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%out_prod_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      %c0_i32 = arith.constant 0 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32, %c0_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_2 = arith.constant 4608 : i32
      %c1_i32 = arith.constant 1 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_2, %c1_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_3 = arith.constant 4608 : i32
      %c2_i32 = arith.constant 2 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_3, %c2_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_4 = arith.constant 4608 : i32
      %c3_i32 = arith.constant 3 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_4, %c3_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_5 = arith.constant 4608 : i32
      %c4_i32 = arith.constant 4 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_5, %c4_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_6 = arith.constant 4608 : i32
      %c5_i32 = arith.constant 5 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_6, %c5_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_7 = arith.constant 4608 : i32
      %c6_i32 = arith.constant 6 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_7, %c6_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_8 = arith.constant 4608 : i32
      %c7_i32 = arith.constant 7 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_8, %c7_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_9 = arith.constant 4608 : i32
      %c8_i32 = arith.constant 8 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_9, %c8_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_10 = arith.constant 4608 : i32
      %c9_i32 = arith.constant 9 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_10, %c9_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_11 = arith.constant 4608 : i32
      %c10_i32 = arith.constant 10 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_11, %c10_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_12 = arith.constant 4608 : i32
      %c11_i32 = arith.constant 11 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_12, %c11_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_13 = arith.constant 4608 : i32
      %c12_i32 = arith.constant 12 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_13, %c12_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_14 = arith.constant 4608 : i32
      %c13_i32 = arith.constant 13 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_14, %c13_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_15 = arith.constant 4608 : i32
      %c14_i32 = arith.constant 14 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_15, %c14_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_16 = arith.constant 4608 : i32
      %c15_i32 = arith.constant 15 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_16, %c15_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_17 = arith.constant 4608 : i32
      %c16_i32 = arith.constant 16 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_17, %c16_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_18 = arith.constant 4608 : i32
      %c17_i32 = arith.constant 17 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_18, %c17_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_19 = arith.constant 4608 : i32
      %c18_i32 = arith.constant 18 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_19, %c18_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_20 = arith.constant 4608 : i32
      %c19_i32 = arith.constant 19 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_20, %c19_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_21 = arith.constant 4608 : i32
      %c20_i32 = arith.constant 20 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_21, %c20_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_22 = arith.constant 4608 : i32
      %c21_i32 = arith.constant 21 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_22, %c21_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_23 = arith.constant 4608 : i32
      %c22_i32 = arith.constant 22 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_23, %c22_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_24 = arith.constant 4608 : i32
      %c23_i32 = arith.constant 23 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_24, %c23_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_25 = arith.constant 4608 : i32
      %c24_i32 = arith.constant 24 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_25, %c24_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_26 = arith.constant 4608 : i32
      %c25_i32 = arith.constant 25 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_26, %c25_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_27 = arith.constant 4608 : i32
      %c26_i32 = arith.constant 26 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_27, %c26_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_28 = arith.constant 4608 : i32
      %c27_i32 = arith.constant 27 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_28, %c27_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_29 = arith.constant 4608 : i32
      %c28_i32 = arith.constant 28 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_29, %c28_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_30 = arith.constant 4608 : i32
      %c29_i32 = arith.constant 29 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_30, %c29_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_31 = arith.constant 4608 : i32
      %c30_i32 = arith.constant 30 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_31, %c30_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_32 = arith.constant 4608 : i32
      %c31_i32 = arith.constant 31 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_32, %c31_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%out_cons_lock_0, Release, 1)
      aie.use_lock(%out_prod_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_33 = arith.constant 4608 : i32
      %c0_i32_34 = arith.constant 0 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_33, %c0_i32_34) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_35 = arith.constant 4608 : i32
      %c1_i32_36 = arith.constant 1 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_35, %c1_i32_36) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_37 = arith.constant 4608 : i32
      %c2_i32_38 = arith.constant 2 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_37, %c2_i32_38) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_39 = arith.constant 4608 : i32
      %c3_i32_40 = arith.constant 3 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_39, %c3_i32_40) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_41 = arith.constant 4608 : i32
      %c4_i32_42 = arith.constant 4 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_41, %c4_i32_42) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_43 = arith.constant 4608 : i32
      %c5_i32_44 = arith.constant 5 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_43, %c5_i32_44) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_45 = arith.constant 4608 : i32
      %c6_i32_46 = arith.constant 6 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_45, %c6_i32_46) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_47 = arith.constant 4608 : i32
      %c7_i32_48 = arith.constant 7 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_47, %c7_i32_48) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_49 = arith.constant 4608 : i32
      %c8_i32_50 = arith.constant 8 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_49, %c8_i32_50) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_51 = arith.constant 4608 : i32
      %c9_i32_52 = arith.constant 9 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_51, %c9_i32_52) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_53 = arith.constant 4608 : i32
      %c10_i32_54 = arith.constant 10 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_53, %c10_i32_54) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_55 = arith.constant 4608 : i32
      %c11_i32_56 = arith.constant 11 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_55, %c11_i32_56) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_57 = arith.constant 4608 : i32
      %c12_i32_58 = arith.constant 12 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_57, %c12_i32_58) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_59 = arith.constant 4608 : i32
      %c13_i32_60 = arith.constant 13 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_59, %c13_i32_60) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_61 = arith.constant 4608 : i32
      %c14_i32_62 = arith.constant 14 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_61, %c14_i32_62) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_63 = arith.constant 4608 : i32
      %c15_i32_64 = arith.constant 15 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_63, %c15_i32_64) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_65 = arith.constant 4608 : i32
      %c16_i32_66 = arith.constant 16 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_65, %c16_i32_66) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_67 = arith.constant 4608 : i32
      %c17_i32_68 = arith.constant 17 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_67, %c17_i32_68) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_69 = arith.constant 4608 : i32
      %c18_i32_70 = arith.constant 18 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_69, %c18_i32_70) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_71 = arith.constant 4608 : i32
      %c19_i32_72 = arith.constant 19 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_71, %c19_i32_72) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_73 = arith.constant 4608 : i32
      %c20_i32_74 = arith.constant 20 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_73, %c20_i32_74) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_75 = arith.constant 4608 : i32
      %c21_i32_76 = arith.constant 21 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_75, %c21_i32_76) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_77 = arith.constant 4608 : i32
      %c22_i32_78 = arith.constant 22 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_77, %c22_i32_78) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_79 = arith.constant 4608 : i32
      %c23_i32_80 = arith.constant 23 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_79, %c23_i32_80) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_81 = arith.constant 4608 : i32
      %c24_i32_82 = arith.constant 24 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_81, %c24_i32_82) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_83 = arith.constant 4608 : i32
      %c25_i32_84 = arith.constant 25 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_83, %c25_i32_84) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_85 = arith.constant 4608 : i32
      %c26_i32_86 = arith.constant 26 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_85, %c26_i32_86) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_87 = arith.constant 4608 : i32
      %c27_i32_88 = arith.constant 27 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_87, %c27_i32_88) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_89 = arith.constant 4608 : i32
      %c28_i32_90 = arith.constant 28 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_89, %c28_i32_90) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_91 = arith.constant 4608 : i32
      %c29_i32_92 = arith.constant 29 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_91, %c29_i32_92) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_93 = arith.constant 4608 : i32
      %c30_i32_94 = arith.constant 30 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_93, %c30_i32_94) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock_0, AcquireGreaterEqual, 1)
      %c4608_i32_95 = arith.constant 4608 : i32
      %c31_i32_96 = arith.constant 31 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_95, %c31_i32_96) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock_0, Release, 1)
      aie.use_lock(%out_cons_lock_0, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "mean.o"}
    aiex.runtime_sequence @sequence(%arg0: memref<27648xbf16>, %arg1: memref<27648xbf16>, %arg2: memref<27648xbf16>, %arg3: memref<27648xbf16>, %arg4: memref<27648xbf16>) {
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 0, 0][1, 1, 1, 2][0, 0, 0, 1]) {id = 1 : i64, metadata = @in3} : memref<27648xbf16>
      aiex.npu.dma_memcpy_nd(%arg1[0, 0, 0, 0][1, 1, 1, 27648][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<27648xbf16>
      aiex.npu.dma_memcpy_nd(%arg2[0, 0, 0, 0][1, 1, 1, 18432][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<27648xbf16>
      aiex.npu.dma_memcpy_nd(%arg3[0, 0, 0, 0][1, 1, 1, 49152][0, 0, 0, 1]) {id = 4 : i64, metadata = @in0} : memref<27648xbf16>
      aiex.npu.dma_memcpy_nd(%arg4[0, 0, 0, 0][1, 1, 1, 16384][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<27648xbf16>
      aiex.npu.dma_wait {symbol = @out}
    }
    aie.shim_dma_allocation @in0(MM2S, 0, 0)
    %memtile_dma_3_1 = aie.memtile_dma(%mem_tile_3_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb7)
    ^bb1:  // 2 preds: ^bb0, ^bb6
      aie.use_lock(%in0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_0 : memref<96xbf16>, 0, 32) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_0 : memref<96xbf16>, 32, 32) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in0_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb3
    ^bb3:  // pred: ^bb2
      aie.use_lock(%in0_cons_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_0 : memref<96xbf16>, 64, 32) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in0_cons_cons_lock_2, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_1 : memref<96xbf16>, 0, 32) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%in0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in0_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_1 : memref<96xbf16>, 32, 32) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%in0_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%in0_cons_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_1 : memref<96xbf16>, 64, 32) {bd_id = 5 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_cons_cons_lock_2, Release, 1)
      aie.next_bd ^bb1
    ^bb7:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb8, ^bb10)
    ^bb8:  // 2 preds: ^bb7, ^bb9
      aie.use_lock(%in0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_0 : memref<96xbf16>, 0, 32) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%in0_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%in0_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_1 : memref<96xbf16>, 0, 32) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%in0_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb10:  // pred: ^bb7
      %2 = aie.dma_start(MM2S, 1, ^bb11, ^bb13)
    ^bb11:  // 2 preds: ^bb10, ^bb12
      aie.use_lock(%in0_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_0 : memref<96xbf16>, 32, 32) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%in0_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%in0_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_1 : memref<96xbf16>, 32, 32) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in0_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb11
    ^bb13:  // pred: ^bb10
      %3 = aie.dma_start(MM2S, 2, ^bb14, ^bb16)
    ^bb14:  // 2 preds: ^bb13, ^bb15
      aie.use_lock(%in0_cons_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_0 : memref<96xbf16>, 64, 32) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%in0_cons_prod_lock_2, Release, 1)
      aie.next_bd ^bb15
    ^bb15:  // pred: ^bb14
      aie.use_lock(%in0_cons_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_1 : memref<96xbf16>, 64, 32) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%in0_cons_prod_lock_2, Release, 1)
      aie.next_bd ^bb14
    ^bb16:  // pred: ^bb13
      aie.end
    }
    aie.shim_dma_allocation @in1(MM2S, 0, 1)
    %memtile_dma_1_1 = aie.memtile_dma(%mem_tile_1_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb7)
    ^bb1:  // 2 preds: ^bb0, ^bb6
      aie.use_lock(%in1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<13824xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in1_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<13824xbf16>, 4608, 4608) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in1_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb3
    ^bb3:  // pred: ^bb2
      aie.use_lock(%in1_cons_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<13824xbf16>, 9216, 4608) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in1_cons_cons_lock_2, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<13824xbf16>, 0, 4608) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%in1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in1_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<13824xbf16>, 4608, 4608) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%in1_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%in1_cons_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<13824xbf16>, 9216, 4608) {bd_id = 5 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in1_cons_cons_lock_2, Release, 1)
      aie.next_bd ^bb1
    ^bb7:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb8, ^bb10)
    ^bb8:  // 2 preds: ^bb7, ^bb9
      aie.use_lock(%in1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<13824xbf16>, 0, 4608) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%in1_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%in1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<13824xbf16>, 0, 4608) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%in1_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb10:  // pred: ^bb7
      %2 = aie.dma_start(MM2S, 1, ^bb11, ^bb13)
    ^bb11:  // 2 preds: ^bb10, ^bb12
      aie.use_lock(%in1_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<13824xbf16>, 4608, 4608) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%in1_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%in1_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<13824xbf16>, 4608, 4608) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in1_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb11
    ^bb13:  // pred: ^bb10
      %3 = aie.dma_start(MM2S, 2, ^bb14, ^bb16)
    ^bb14:  // 2 preds: ^bb13, ^bb15
      aie.use_lock(%in1_cons_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<13824xbf16>, 9216, 4608) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%in1_cons_prod_lock_2, Release, 1)
      aie.next_bd ^bb15
    ^bb15:  // pred: ^bb14
      aie.use_lock(%in1_cons_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<13824xbf16>, 9216, 4608) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%in1_cons_prod_lock_2, Release, 1)
      aie.next_bd ^bb14
    ^bb16:  // pred: ^bb13
      aie.end
    }
    aie.shim_dma_allocation @in2(MM2S, 0, 2)
    %memtile_dma_2_1 = aie.memtile_dma(%mem_tile_2_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb5)
    ^bb1:  // 2 preds: ^bb0, ^bb4
      aie.use_lock(%in2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<9216xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in2_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<9216xbf16>, 4608, 4608) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in2_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb3
    ^bb3:  // pred: ^bb2
      aie.use_lock(%in2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<9216xbf16>, 0, 4608) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in2_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<9216xbf16>, 4608, 4608) {bd_id = 3 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in2_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb1
    ^bb5:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb6, ^bb8)
    ^bb6:  // 2 preds: ^bb5, ^bb7
      aie.use_lock(%in2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<9216xbf16>, 0, 4608) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%in2_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<9216xbf16>, 0, 4608) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%in2_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb6
    ^bb8:  // pred: ^bb5
      %2 = aie.dma_start(MM2S, 1, ^bb9, ^bb11)
    ^bb9:  // 2 preds: ^bb8, ^bb10
      aie.use_lock(%in2_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<9216xbf16>, 4608, 4608) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%in2_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb10
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in2_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<9216xbf16>, 4608, 4608) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in2_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb9
    ^bb11:  // pred: ^bb8
      aie.end
    }
    aie.shim_dma_allocation @in3(MM2S, 0, 3)
    %mem_1_3 = aie.mem(%tile_1_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb5)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%of_trigFifo_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_trigFifo_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_trigFifo_prod_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb5:  // pred: ^bb3
      aie.end
    }
    %mem_0_5 = aie.mem(%tile_0_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_in_u_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_u_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_in_u_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_u_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_u_cons_buff_1 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_in_u_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb5)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%of_in_l_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_l_cons_buff_0 : memref<32xbf16>, 0, 32) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_l_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb5:  // pred: ^bb3
      aie.end
    }
    %mem_0_4 = aie.mem(%tile_0_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_in_v_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_v_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_in_v_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_v_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_v_cons_buff_1 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_in_v_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb5)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%of_in_m_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_m_cons_buff_0 : memref<32xbf16>, 0, 32) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_m_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb5:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb6, ^bb7)
    ^bb6:  // 2 preds: ^bb5, ^bb6
      aie.use_lock(%of_addV_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_addV_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 3 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_addV_prod_lock_0, Release, 1)
      aie.next_bd ^bb6
    ^bb7:  // pred: ^bb5
      aie.end
    }
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_in_w_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_w_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_in_w_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_w_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_w_cons_buff_1 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_in_w_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb5)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%of_in_n_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_n_cons_buff_0 : memref<32xbf16>, 0, 32) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_n_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb5:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb6, ^bb7)
    ^bb6:  // 2 preds: ^bb5, ^bb6
      aie.use_lock(%of_addW_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_addW_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 3 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_addW_prod_lock_0, Release, 1)
      aie.next_bd ^bb6
    ^bb7:  // pred: ^bb5
      aie.end
    }
    %mem_2_4 = aie.mem(%tile_2_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_in_visR_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_visR_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_in_visR_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_visR_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_visR_cons_buff_1 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_in_visR_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    %mem_3_4 = aie.mem(%tile_3_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_in_visC_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_visC_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_in_visC_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_visC_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_visC_cons_buff_1 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_in_visC_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    %mem_1_5 = aie.mem(%tile_1_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%of_addV_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_addV_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_addV_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      aie.end
    }
    %mem_1_4 = aie.mem(%tile_1_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_addW_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_addW_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_addW_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_addW_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_addW_cons_buff_1 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_addW_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    %mem_2_5 = aie.mem(%tile_2_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%of_trigFifo_0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_trigFifo_0_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_trigFifo_0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      aie.end
    }
    %mem_3_5 = aie.mem(%tile_3_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%of_trigFifo_1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_trigFifo_1_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_trigFifo_1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      aie.end
    }
    %mem_2_3 = aie.mem(%tile_2_3) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%of_reduc2SubR_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_reduc2SubR_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_reduc2SubR_prod_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      aie.end
    }
    %mem_3_2 = aie.mem(%tile_3_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%of_reduc2SubR_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_reduc2SubR_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_reduc2SubR_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      aie.end
    }
    %mem_2_2 = aie.mem(%tile_2_2) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%out_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_0 : memref<32xbf16>, 0, 32) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%out_prod_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_1 : memref<32xbf16>, 0, 32) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%out_prod_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    aie.shim_dma_allocation @out(S2MM, 0, 2)
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_0_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_0_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_1_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_1_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_2_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_2_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_3_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_3_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
  }
}
